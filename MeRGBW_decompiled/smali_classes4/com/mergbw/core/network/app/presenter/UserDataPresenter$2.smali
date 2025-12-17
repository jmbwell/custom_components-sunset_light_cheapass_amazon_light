.class Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;
.super Ljava/lang/Object;
.source "UserDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/mergbw/core/network/app/bean/CommonResult<",
        "Lcom/mergbw/core/network/app/bean/UserResponse;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 75
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 92
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object p1

    const-string v0, "\u7f51\u7edc\u9519\u8bef"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/mergbw/core/network/app/NetworkCallback;->onRegisterResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userResponseCommonResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/network/app/bean/CommonResult<",
            "Lcom/mergbw/core/network/app/bean/UserResponse;",
            ">;)V"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/CommonResult;->isSuccess()Z

    move-result v1

    .line 85
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/CommonResult;->getResultCode()I

    move-result v2

    invoke-static {v2}, Lcom/mergbw/core/network/ErrorCodeUtils;->getErrorMsg(I)Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/CommonResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/app/bean/UserResponse;

    .line 84
    invoke-virtual {v0, v1, v2, p1}, Lcom/mergbw/core/network/app/NetworkCallback;->onRegisterResult(ZLjava/lang/String;Lcom/mergbw/core/network/app/bean/UserResponse;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "userResponseCommonResult"
        }
    .end annotation

    .line 75
    check-cast p1, Lcom/mergbw/core/network/app/bean/CommonResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;->onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    return-void
.end method
