.class Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;
.super Ljava/lang/Object;
.source "BaseDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->updateDeviceType(Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;)V
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
.field final synthetic this$0:Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 99
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;->this$0:Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;

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
            "throwable"
        }
    .end annotation

    .line 112
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;->this$0:Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object p1

    const/16 v0, 0x1f7

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
            "commonResult"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;->this$0:Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object v0

    const/16 v1, 0x1f7

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
            "commonResult"
        }
    .end annotation

    .line 99
    check-cast p1, Lcom/mergbw/core/network/app/bean/CommonResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;->onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "disposable"
        }
    .end annotation

    return-void
.end method
