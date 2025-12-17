.class Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;
.super Ljava/lang/Object;
.source "FactoryDataPresenter.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/factory/FactoryDataPresenter;->getFactoryActivityInfo(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lcom/mergbw/core/network/factory/bean/BaseResult<",
        "Ljava/util/List<",
        "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/network/factory/FactoryDataPresenter;


# direct methods
.method constructor <init>(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;->this$0:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

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

    .line 79
    iget-object p1, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;->this$0:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    invoke-static {p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->access$000(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)Lcom/mergbw/core/network/factory/FactoryDataCallback;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onNext(Lcom/mergbw/core/network/factory/bean/BaseResult;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listBaseResult"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/network/factory/bean/BaseResult<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/factory/bean/FactoryActivityInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 72
    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/BaseResult;->getCode()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;->this$0:Lcom/mergbw/core/network/factory/FactoryDataPresenter;

    invoke-static {v0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->access$000(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)Lcom/mergbw/core/network/factory/FactoryDataCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/BaseResult;->getMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mergbw/core/network/factory/bean/BaseResult;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, p1}, Lcom/mergbw/core/network/factory/FactoryDataCallback;->onFactoryActivityResult(ZLjava/lang/String;Ljava/util/List;)V

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
            "listBaseResult"
        }
    .end annotation

    .line 64
    check-cast p1, Lcom/mergbw/core/network/factory/bean/BaseResult;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;->onNext(Lcom/mergbw/core/network/factory/bean/BaseResult;)V

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
