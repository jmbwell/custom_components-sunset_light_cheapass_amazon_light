.class public Lcom/mergbw/android/ui/login/ResetPasswordActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "ResetPasswordActivity.java"

# interfaces
.implements Lcom/mergbw/android/ui/login/ILoginViewInterface;


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

.field private mEmail:Ljava/lang/String;

.field private mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private doReset()V
    .locals 6

    .line 55
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->etVerify:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->checkVerifyCode(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "#66E1526D"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->tvVerifyError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->viewVerifyDvider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v4, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v4, v4, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->etPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 64
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->tvPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->viewPasswordDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 70
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->tvPasswordAgainError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->viewPasswordAgainDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    iget-object v3, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/mergbw/android/ui/login/LoginViewModel;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "\u91cd\u7f6e\u4e2d"

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->showWait(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 36
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 37
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->btnNext:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->btnSubmit:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/login/ResetPasswordActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-login-ResetPasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-login-ResetPasswordActivity(Landroid/view/View;)V
    .locals 1

    .line 39
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mEmail:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcom/mergbw/core/utils/StringUtils;->checkEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->tvEmialError:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->viewEmailDivider:Landroid/view/View;

    const-string v0, "#33979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    iget-object v0, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/login/LoginViewModel;->getVerifyCode(Ljava/lang/String;)V

    .line 44
    const-string p1, "\u53d1\u9001\u9a8c\u8bc1\u7801\u4e2d"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->showWait(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->tvEmialError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->viewEmailDivider:Landroid/view/View;

    const-string v0, "#66E1526D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-login-ResetPasswordActivity(Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->doReset()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 26
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    .line 28
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->setContentView(Landroid/view/View;)V

    .line 29
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/login/LoginViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    .line 30
    invoke-virtual {p1, p0}, Lcom/mergbw/android/ui/login/LoginViewModel;->setListener(Lcom/mergbw/android/ui/login/ILoginViewInterface;)V

    .line 31
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->initViews(Landroid/view/View;)V

    return-void
.end method

.method public onLoginResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onNetError()V
    .locals 0

    return-void
.end method

.method public onRegisterResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onResetResult(ZLjava/lang/String;)V
    .locals 0

    .line 99
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->hideWait()V

    if-eqz p1, :cond_0

    .line 101
    const-string p1, "\u91cd\u7f6e\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->showToast(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->finish()V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onSmsCodeResult(ZLjava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->hideWait()V

    if-eqz p1, :cond_0

    .line 87
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->layoutEmail:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object p1, p0, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityResetPasswordBinding;->layoutVerify:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 90
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/login/ResetPasswordActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
