.class Lcom/mergbw/android/ui/login/LoginViewModel$1;
.super Lcom/mergbw/core/network/app/NetworkCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/login/LoginViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/login/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/login/LoginViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/network/app/NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetSMSCodeResult(ZLjava/lang/String;)V
    .locals 1

    .line 33
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 34
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/mergbw/android/ui/login/ILoginViewInterface;->onSmsCodeResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onLoginResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mergbw/android/UserinfoManage;->loginSuccess(Lcom/mergbw/core/network/app/bean/UserResponse;)V

    .line 53
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "USER_LOGIN_SUCCESS"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 55
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 56
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/mergbw/android/ui/login/ILoginViewInterface;->onLoginResult(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onRegisterResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 41
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/mergbw/android/UserinfoManage;->loginSuccess(Lcom/mergbw/core/network/app/bean/UserResponse;)V

    .line 42
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p2

    new-instance v0, Lcom/mergbw/core/event/EventMessage;

    const-string v1, "USER_REGISTER_SUCCESS"

    invoke-direct {v0, v1}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 44
    :cond_0
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 45
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    const/4 p3, 0x0

    invoke-interface {p2, p1, p3}, Lcom/mergbw/android/ui/login/ILoginViewInterface;->onRegisterResult(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onResetPasswordResult(ZLjava/lang/String;)V
    .locals 1

    .line 62
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 63
    iget-object p2, p0, Lcom/mergbw/android/ui/login/LoginViewModel$1;->this$0:Lcom/mergbw/android/ui/login/LoginViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/login/LoginViewModel;->access$000(Lcom/mergbw/android/ui/login/LoginViewModel;)Lcom/mergbw/android/ui/login/ILoginViewInterface;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/mergbw/android/ui/login/ILoginViewInterface;->onResetResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method
