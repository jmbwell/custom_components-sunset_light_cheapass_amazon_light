.class public Lcom/mergbw/core/network/app/download/DownloadHelper;
.super Ljava/lang/Object;
.source "DownloadHelper.java"


# static fields
.field private static mBuilder:Lokhttp3/OkHttpClient$Builder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cancel(Lio/reactivex/disposables/Disposable;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    invoke-interface {p0}, Lio/reactivex/disposables/Disposable;->dispose()V

    :cond_0
    return-void
.end method

.method public static downloadFile(Ljava/lang/String;Lcom/mergbw/core/network/app/download/DownloadListener;Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "url",
            "downloadListener",
            "observer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mergbw/core/network/app/download/DownloadListener;",
            "Lio/reactivex/Observer<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/mergbw/core/network/app/download/DownloadHelper;->getDownloadRetrofit(Lcom/mergbw/core/network/app/download/DownloadListener;)Lretrofit2/Retrofit;

    move-result-object p1

    const-class v0, Lcom/mergbw/core/network/app/WebApi;

    invoke-virtual {p1, v0}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {p1, p0}, Lcom/mergbw/core/network/app/WebApi;->downloadFile(Ljava/lang/String;)Lio/reactivex/Observable;

    move-result-object p0

    .line 46
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p0

    .line 47
    invoke-virtual {p0, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private static getDownloadRetrofit(Lcom/mergbw/core/network/app/download/DownloadListener;)Lretrofit2/Retrofit;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadListener"
        }
    .end annotation

    .line 19
    sget-object v0, Lcom/mergbw/core/network/app/download/DownloadHelper;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v1, Lcom/mergbw/core/network/app/download/DownloadInterceptor;

    invoke-direct {v1, p0}, Lcom/mergbw/core/network/app/download/DownloadInterceptor;-><init>(Lcom/mergbw/core/network/app/download/DownloadListener;)V

    .line 21
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    sput-object p0, Lcom/mergbw/core/network/app/download/DownloadHelper;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 24
    :cond_0
    new-instance p0, Lretrofit2/Retrofit$Builder;

    invoke-direct {p0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v0, "http://47.251.33.234:7788"

    .line 25
    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 26
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 27
    invoke-static {}, Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;->create()Lretrofit2/adapter/rxjava2/RxJava2CallAdapterFactory;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->addCallAdapterFactory(Lretrofit2/CallAdapter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    sget-object v0, Lcom/mergbw/core/network/app/download/DownloadHelper;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    .line 28
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {p0, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    .line 29
    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    return-object p0
.end method
