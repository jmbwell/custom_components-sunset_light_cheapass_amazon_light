.class Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;
.super Ljava/lang/Object;
.source "UserDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/mergbw/core/network/app/bean/CommonResult;",
        ">;"
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

    .line 150
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 165
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {p1, v0, v1}, Lcom/mergbw/core/network/app/NetworkCallback;->onResetPasswordResult(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "commonResult"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->this$0:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/CommonResult;->isSuccess()Z

    move-result v1

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/CommonResult;->getResultCode()I

    move-result p1

    invoke-static {p1}, Lcom/mergbw/core/network/ErrorCodeUtils;->getErrorMsg(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mergbw/core/network/app/NetworkCallback;->onResetPasswordResult(ZLjava/lang/String;)V

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
            "commonResult"
        }
    .end annotation

    .line 150
    check-cast p1, Lcom/mergbw/core/network/app/bean/CommonResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;->onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V

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
