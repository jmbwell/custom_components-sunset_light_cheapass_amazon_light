.class public Lcom/mergbw/core/network/factory/FactoryDataPresenter;
.super Lcom/mergbw/core/network/BasePresenter;
.source "FactoryDataPresenter.java"


# instance fields
.field private final mCallback:Lcom/mergbw/core/network/factory/FactoryDataCallback;

.field private final mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/network/factory/FactoryDataCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Lcom/mergbw/core/network/BasePresenter;-><init>()V

    .line 27
    invoke-static {}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getInstance()Lcom/mergbw/core/network/factory/FactoryDataHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/network/factory/FactoryDataHelper;->getApi()Lcom/mergbw/core/network/factory/FactoryDataApi;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;

    .line 28
    iput-object p1, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mCallback:Lcom/mergbw/core/network/factory/FactoryDataCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)Lcom/mergbw/core/network/factory/FactoryDataCallback;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mCallback:Lcom/mergbw/core/network/factory/FactoryDataCallback;

    return-object p0
.end method


# virtual methods
.method public factoryLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "password"
        }
    .end annotation

    .line 121
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 122
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string p1, "password"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 125
    iget-object p2, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;

    invoke-interface {p2, p1}, Lcom/mergbw/core/network/factory/FactoryDataApi;->factoryLogin(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 126
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 127
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/factory/FactoryDataPresenter$4;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter$4;-><init>(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)V

    .line 128
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getFactoryActivityInfo(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "factoryId",
            "siteCode"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;

    invoke-interface {v0, p1, p2}, Lcom/mergbw/core/network/factory/FactoryDataApi;->getFactoryActivityInfo(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 62
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 63
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter$2;-><init>(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)V

    .line 64
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getFactoryInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factoryId"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/factory/FactoryDataApi;->getFactoryInfo(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 33
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 34
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/factory/FactoryDataPresenter$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter$1;-><init>(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)V

    .line 35
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getFactoryProductInfo(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "factoryId",
            "siteCode"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/mergbw/core/network/factory/FactoryDataPresenter;->mWebApi:Lcom/mergbw/core/network/factory/FactoryDataApi;

    invoke-interface {v0, p1, p2}, Lcom/mergbw/core/network/factory/FactoryDataApi;->getFactoryProductInfo(ILjava/lang/String;)Lio/reactivex/Observable;

    move-result-object p1

    .line 91
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 92
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/factory/FactoryDataPresenter$3;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/factory/FactoryDataPresenter$3;-><init>(Lcom/mergbw/core/network/factory/FactoryDataPresenter;)V

    .line 93
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
