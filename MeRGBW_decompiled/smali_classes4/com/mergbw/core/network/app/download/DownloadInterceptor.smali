.class public Lcom/mergbw/core/network/app/download/DownloadInterceptor;
.super Ljava/lang/Object;
.source "DownloadInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# instance fields
.field private listener:Lcom/mergbw/core/network/app/download/DownloadListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/network/app/download/DownloadListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/mergbw/core/network/app/download/DownloadInterceptor;->listener:Lcom/mergbw/core/network/app/download/DownloadListener;

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "chain"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/network/app/download/DownloadResponseBody;

    .line 23
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    iget-object v2, p0, Lcom/mergbw/core/network/app/download/DownloadInterceptor;->listener:Lcom/mergbw/core/network/app/download/DownloadListener;

    invoke-direct {v1, p1, v2}, Lcom/mergbw/core/network/app/download/DownloadResponseBody;-><init>(Lokhttp3/ResponseBody;Lcom/mergbw/core/network/app/download/DownloadListener;)V

    invoke-virtual {v0, v1}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p1

    return-object p1
.end method
