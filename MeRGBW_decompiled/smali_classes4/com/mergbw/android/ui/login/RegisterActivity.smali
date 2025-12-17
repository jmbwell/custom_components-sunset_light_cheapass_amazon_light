.class public Lcom/mergbw/android/ui/login/RegisterActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "RegisterActivity.java"

# interfaces
.implements Lcom/mergbw/android/ui/login/ILoginViewInterface;


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

.field private mEmail:Ljava/lang/String;

.field private mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private doRegister()V
    .locals 6

    .line 60
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etVerify:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->checkVerifyCode(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "#66E1526D"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvVerifyError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewVerifyDvider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    iget-object v4, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v4, v4, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etPasswordAgain:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 70
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewPasswordDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 75
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 76
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvPasswordAgainError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewPasswordAgainDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 81
    :cond_2
    iget-object v2, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    iget-object v3, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v0}, Lcom/mergbw/android/ui/login/LoginViewModel;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "\u6ce8\u518c\u4e2d"

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/login/RegisterActivity;->showWait(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 42
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/login/RegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->btnNext:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/login/RegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->btnSubmit:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/RegisterActivity$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/ui/login/RegisterActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-login-RegisterActivity(Landroid/view/View;)V
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$1$com-mergbw-android-ui-login-RegisterActivity(Landroid/view/View;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->etEmail:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mEmail:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/mergbw/core/utils/StringUtils;->checkEmail(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 46
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvEmialError:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewEmailDivider:Landroid/view/View;

    const-string v0, "#33979797"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 48
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    iget-object v0, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/mergbw/android/ui/login/LoginViewModel;->getVerifyCode(Ljava/lang/String;)V

    .line 49
    const-string p1, "\u53d1\u9001\u9a8c\u8bc1\u7801\u4e2d"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/RegisterActivity;->showWait(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->tvEmialError:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->viewEmailDivider:Landroid/view/View;

    const-string v0, "#66E1526D"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    return-void
.end method

.method synthetic lambda$initViews$2$com-mergbw-android-ui-login-RegisterActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->doRegister()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 31
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    .line 33
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/RegisterActivity;->setContentView(Landroid/view/View;)V

    .line 34
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/login/LoginViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    .line 35
    invoke-virtual {p1, p0}, Lcom/mergbw/android/ui/login/LoginViewModel;->setListener(Lcom/mergbw/android/ui/login/ILoginViewInterface;)V

    .line 36
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/RegisterActivity;->initViews(Landroid/view/View;)V

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

    .line 104
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->hideWait()V

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/login/RegisterActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onResetResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSmsCodeResult(ZLjava/lang/String;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/RegisterActivity;->hideWait()V

    if-eqz p1, :cond_0

    .line 94
    const-string p1, "\u9a8c\u8bc1\u7801\u53d1\u9001\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/RegisterActivity;->showToast(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->layoutEmail:Landroid/widget/LinearLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object p1, p0, Lcom/mergbw/android/ui/login/RegisterActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityRegisterBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityRegisterBinding;->layoutVerify:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/login/RegisterActivity;->showToast(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
