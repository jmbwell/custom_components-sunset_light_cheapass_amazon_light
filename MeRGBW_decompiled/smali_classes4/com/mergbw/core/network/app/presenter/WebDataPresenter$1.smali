.class Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;
.super Ljava/lang/Object;
.source "WebDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->getAppVersionInfo(I)V
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
        "Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/network/app/presenter/WebDataPresenter;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/presenter/WebDataPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;->this$0:Lcom/mergbw/core/network/app/presenter/WebDataPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 48
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;->this$0:Lcom/mergbw/core/network/app/presenter/WebDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/WebDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object p1

    const/16 v0, 0xc9

    invoke-interface {p1, v0}, Lcom/mergbw/core/network/WebInterface;->showError(I)V

    return-void
.end method

.method public onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "versionInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/network/app/bean/CommonResult<",
            "Lcom/mergbw/core/network/app/bean/FirmwareVersionBean;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;->this$0:Lcom/mergbw/core/network/app/presenter/WebDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/WebDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object v0

    const/16 v1, 0xc9

    invoke-interface {v0, v1, p1}, Lcom/mergbw/core/network/WebInterface;->showResult(ILcom/mergbw/core/network/app/bean/CommonResult;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "versionInfo"
        }
    .end annotation

    .line 35
    check-cast p1, Lcom/mergbw/core/network/app/bean/CommonResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;->onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V

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
