.class Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;
.super Ljava/lang/Object;
.source "TrackDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->getDeviceOverView()V
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
        "Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;

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

    .line 76
    iget-object p1, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object p1

    const/16 v0, 0x192

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
            "overViewData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/network/app/bean/CommonResult<",
            "Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;",
            ">;)V"
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;->this$0:Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->access$000(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)Lcom/mergbw/core/network/WebInterface;

    move-result-object v0

    const/16 v1, 0x192

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
            "overViewData"
        }
    .end annotation

    .line 63
    check-cast p1, Lcom/mergbw/core/network/app/bean/CommonResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;->onNext(Lcom/mergbw/core/network/app/bean/CommonResult;)V

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
