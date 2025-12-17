.class public Lcom/mergbw/android/ui/login/LoginActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "LoginActivity.java"

# interfaces
.implements Lcom/mergbw/android/ui/login/ILoginViewInterface;


# instance fields
.field private mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

.field private mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    return-void
.end method

.method private doLogin()V
    .locals 5

    .line 63
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->etUsername:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->checkEmail(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "#66E1526D"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvEmailError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->viewEmailDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v1, v1, Lcom/mergbw/android/databinding/ActivityLoginBinding;->etPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvPasswordError:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object v0, v0, Lcom/mergbw/android/databinding/ActivityLoginBinding;->viewPasswordDivider:Landroid/view/View;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void

    .line 77
    :cond_1
    iget-object v2, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-virtual {v2, v0, v1}, Lcom/mergbw/android/ui/login/LoginViewModel;->login(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    sget v0, Lcom/mergbw/android/R$string;->logging_in:I

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/login/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/login/LoginActivity;->showWait(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$initViews$1(Landroid/view/View;)V
    .locals 0

    .line 57
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToRegister()V

    return-void
.end method

.method static synthetic lambda$initViews$2(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mergbw/android/jump/JumpManager;->jumpToReset()V

    return-void
.end method


# virtual methods
.method public initViews(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->initViews(Landroid/view/View;)V

    .line 56
    iget-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityLoginBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v0, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityLoginBinding;->btnRegister:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iget-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityLoginBinding;->tvForgetPassword:Landroid/widget/TextView;

    new-instance v0, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    iget-object p1, p1, Lcom/mergbw/android/databinding/ActivityLoginBinding;->btnLogin:Landroid/widget/Button;

    new-instance v0, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/LoginActivity$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/android/ui/login/LoginActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method synthetic lambda$initViews$0$com-mergbw-android-ui-login-LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->finish()V

    return-void
.end method

.method synthetic lambda$initViews$3$com-mergbw-android-ui-login-LoginActivity(Landroid/view/View;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->doLogin()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityLoginBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    .line 40
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 41
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {p1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v0, Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object p1

    check-cast p1, Lcom/mergbw/android/ui/login/LoginViewModel;

    iput-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mViewModel:Lcom/mergbw/android/ui/login/LoginViewModel;

    .line 42
    invoke-virtual {p1, p0}, Lcom/mergbw/android/ui/login/LoginViewModel;->setListener(Lcom/mergbw/android/ui/login/ILoginViewInterface;)V

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/login/LoginActivity;->mBinding:Lcom/mergbw/android/databinding/ActivityLoginBinding;

    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityLoginBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/LoginActivity;->initViews(Landroid/view/View;)V

    .line 44
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public onEvent(Lcom/mergbw/core/event/EventMessage;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onEvent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 115
    const-string v0, "USER_REGISTER_SUCCESS"

    invoke-virtual {p1}, Lcom/mergbw/core/event/EventMessage;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onLoginResult(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 84
    const-string p1, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/login/LoginActivity;->showToast(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->hideWait()V

    .line 86
    invoke-virtual {p0}, Lcom/mergbw/android/ui/login/LoginActivity;->finish()V

    goto :goto_0

    .line 88
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mergbw/android/ui/login/LoginActivity;->showToast(Ljava/lang/String;)V

    :goto_0
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

    return-void
.end method

.method public onSmsCodeResult(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method
