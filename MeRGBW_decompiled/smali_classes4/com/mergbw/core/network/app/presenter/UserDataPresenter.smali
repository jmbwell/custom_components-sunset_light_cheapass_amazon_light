.class public Lcom/mergbw/core/network/app/presenter/UserDataPresenter;
.super Lcom/mergbw/core/network/BasePresenter;
.source "UserDataPresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/network/app/NetworkCallback;

.field private final mWebApi:Lcom/mergbw/core/network/app/WebApi;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/network/app/NetworkCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lcom/mergbw/core/network/BasePresenter;-><init>()V

    .line 28
    invoke-static {}, Lcom/mergbw/core/network/app/NetworkHelper;->getInstance()Lcom/mergbw/core/network/app/NetworkHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/network/app/NetworkHelper;->getApi()Lcom/mergbw/core/network/app/WebApi;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    .line 29
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mListener:Lcom/mergbw/core/network/app/NetworkCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)Lcom/mergbw/core/network/app/NetworkCallback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mListener:Lcom/mergbw/core/network/app/NetworkCallback;

    return-object p0
.end method


# virtual methods
.method public getVerifyCode(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "email"
        }
    .end annotation

    .line 33
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 34
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->getVerifyCode(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 37
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 38
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$1;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 39
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public login(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 105
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 106
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string p1, "password"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 109
    iget-object p2, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {p2, p1}, Lcom/mergbw/core/network/app/WebApi;->loginByPassword(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 110
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 111
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$3;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$3;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 112
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public register(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "email",
            "password",
            "verifyCode"
        }
    .end annotation

    .line 67
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 68
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string p1, "password"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string p1, "verifyCode"

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/json; charset=utf-8"

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 72
    iget-object p2, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {p2, p1}, Lcom/mergbw/core/network/app/WebApi;->register(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 73
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 74
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$2;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 75
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public resetPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "email",
            "password",
            "verifyCode"
        }
    .end annotation

    .line 142
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string p1, "password"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string p1, "verifyCode"

    invoke-virtual {v0, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "application/json; charset=utf-8"

    invoke-static {p3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 147
    iget-object p2, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {p2, p1}, Lcom/mergbw/core/network/app/WebApi;->resetPassword(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 148
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 149
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$4;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 150
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public track(Lcom/mergbw/core/track/bean/TrackInfoBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackInfo"
        }
    .end annotation

    .line 213
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 214
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 215
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->appTrack(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 216
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 217
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$6;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 218
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateNickname(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "username",
            "nickname"
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 179
    const-string v1, "username"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string p1, "nickname"

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object p1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 182
    iget-object p2, p0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {p2, p1}, Lcom/mergbw/core/network/app/WebApi;->updateNickname(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 183
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 184
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance p2, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$5;

    invoke-direct {p2, p0}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter$5;-><init>(Lcom/mergbw/core/network/app/presenter/UserDataPresenter;)V

    .line 185
    invoke-virtual {p1, p2}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
