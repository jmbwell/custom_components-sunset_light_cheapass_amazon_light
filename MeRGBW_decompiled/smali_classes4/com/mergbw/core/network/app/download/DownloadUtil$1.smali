.class Lcom/mergbw/core/network/app/download/DownloadUtil$1;
.super Ljava/lang/Object;
.source "DownloadUtil.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/network/app/download/DownloadUtil;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/mergbw/core/network/app/download/DownloadCallback;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$filePath",
            "val$callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->val$filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->val$callback:Lcom/mergbw/core/network/app/download/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 57
    const-string v0, "download onComplete "

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

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

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->val$callback:Lcom/mergbw/core/network/app/download/DownloadCallback;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/download/DownloadCallback;->onError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "responseBody"
        }
    .end annotation

    .line 35
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "responseBody"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->val$filePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/mergbw/core/network/app/download/DownloadUtil$1;->val$callback:Lcom/mergbw/core/network/app/download/DownloadCallback;

    invoke-static {v0, p1, v1}, Lcom/mergbw/core/network/app/download/DownloadUtil;->access$000(Ljava/lang/String;Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadCallback;)V

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

    .line 38
    const-string p1, "onSubscribe"

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return-void
.end method
