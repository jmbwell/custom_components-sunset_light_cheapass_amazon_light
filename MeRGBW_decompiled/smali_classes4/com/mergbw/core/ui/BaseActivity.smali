.class public Lcom/mergbw/core/ui/BaseActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "BaseActivity.java"


# instance fields
.field private mBindDialog:Landroid/app/Dialog;

.field private mConnectingDialog:Landroid/app/Dialog;

.field public mContext:Landroid/content/Context;

.field private mWait:Landroid/app/ProgressDialog;

.field private mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

.field private mWaitDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic lambda$initViews$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 54
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroidx/core/graphics/Insets;->top:I

    .line 55
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroidx/core/graphics/Insets;->bottom:I

    const/4 v2, 0x0

    .line 56
    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    return-object p1
.end method


# virtual methods
.method public hideBindDialog()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideConnectingDialog()V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideWait()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWait:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWait:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public hideWaitDialog()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public initViews(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootView"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method synthetic lambda$showPopWindow$3$com-mergbw-core-ui-BaseActivity()V
    .locals 2

    .line 144
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 145
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 146
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method synthetic lambda$showWaitDialog$1$com-mergbw-core-ui-BaseActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 88
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method synthetic lambda$showWaitDialog$2$com-mergbw-core-ui-BaseActivity(Landroid/content/DialogInterface;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    iget-object p1, p1, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->viewLoading:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    iput-object p0, p0, Lcom/mergbw/core/ui/BaseActivity;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public resetSelected()V
    .locals 0

    return-void
.end method

.method public showBindDialog()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Lcom/mergbw/core/ui/views/BindTickDialog;

    iget-object v1, p0, Lcom/mergbw/core/ui/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mergbw/core/ui/views/BindTickDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mBindDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showConnectingDialog()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 105
    new-instance v0, Lcom/mergbw/core/ui/views/ConnectingDialog;

    iget-object v1, p0, Lcom/mergbw/core/ui/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mergbw/core/ui/views/ConnectingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    .line 107
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mConnectingDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

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

    .line 133
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 134
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/16 v0, 0x50

    const/4 v1, 0x0

    .line 138
    :try_start_0
    invoke-virtual {p2, p1, v0, v1, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 140
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const v0, 0x3e99999a    # 0.3f

    .line 141
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 142
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 143
    new-instance p1, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/ui/BaseActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 149
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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showWait(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 66
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWait:Landroid/app/ProgressDialog;

    .line 67
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 68
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseActivity;->mWait:Landroid/app/ProgressDialog;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 69
    iget-object p1, p0, Lcom/mergbw/core/ui/BaseActivity;->mWait:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    return-void
.end method

.method public showWaitDialog()V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/mergbw/core/ui/BaseActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    .line 82
    invoke-virtual {p0}, Lcom/mergbw/core/ui/BaseActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitBinding:Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;

    .line 83
    iget-object v1, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Lcom/mergbw/core/databinding/LayoutProgressDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 84
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 85
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 90
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    new-instance v1, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/core/ui/BaseActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/ui/BaseActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    iget-object v0, p0, Lcom/mergbw/core/ui/BaseActivity;->mWaitDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
