.class public Lcom/mergbw/android/ui/login/LoginViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "LoginViewModel.java"


# instance fields
.field private mListener:Lcom/mergbw/android/ui/login/ILoginViewInterface;

.field private final mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 30
    new-instance p1, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    new-instance v0, Lcom/mergbw/android/ui/login/LoginViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/login/LoginViewModel$1;-><init>(Lcom/mergbw/android/ui/login/LoginViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;-><init>(Lcom/mergbw/core/network/app/NetworkCallback;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mListener:Lcom/mergbw/android/ui/login/ILoginViewInterface;

    return-object p0
.end method


# virtual methods
.method public getVerifyCode(Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->getVerifyCode(Ljava/lang/String;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-virtual {v0, p1, p2}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mWebPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setListener(Lcom/mergbw/android/ui/login/ILoginViewInterface;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/mergbw/android/ui/login/LoginViewModel;->mListener:Lcom/mergbw/android/ui/login/ILoginViewInterface;

    return-void
.end method
