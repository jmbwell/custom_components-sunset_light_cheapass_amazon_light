.class public Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;
.super Lcom/mergbw/core/network/BasePresenter;
.source "BaseDataPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mView:Lcom/mergbw/core/network/WebInterface;

.field private final mWebApi:Lcom/mergbw/core/network/app/WebApi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mergbw/core/network/WebInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "view"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/mergbw/core/network/BasePresenter;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mContext:Landroid/content/Context;

    .line 33
    invoke-static {}, Lcom/mergbw/core/network/app/NetworkHelper;->getInstance()Lcom/mergbw/core/network/app/NetworkHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/NetworkHelper;->getApi()Lcom/mergbw/core/network/app/WebApi;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    .line 34
    iput-object p2, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)Lcom/mergbw/core/network/WebInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-object p0
.end method


# virtual methods
.method public addDeviceModel(Lcom/mergbw/core/network/app/bean/DeviceModelInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModelInfo"
        }
    .end annotation

    .line 177
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 178
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 179
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->addDeviceModel(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 180
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 181
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$6;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 182
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public addDeviceType(Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceTypeInfo"
        }
    .end annotation

    .line 65
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 66
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 67
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->addDeviceType(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 68
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 69
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$2;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 70
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public deleteDeviceModel(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->deleteDeviceModel(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 236
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 237
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$8;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$8;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 238
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public deleteDeviceType(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->deleteDeviceType(I)Lio/reactivex/Observable;

    move-result-object p1

    .line 124
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 125
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$4;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 126
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getDeviceModelList()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0}, Lcom/mergbw/core/network/app/WebApi;->getDeviceModelList()Lio/reactivex/Observable;

    move-result-object v0

    .line 151
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 152
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$5;

    invoke-direct {v1, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$5;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 153
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getDeviceTypeList()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0}, Lcom/mergbw/core/network/app/WebApi;->getDeviceTypeList()Lio/reactivex/Observable;

    move-result-object v0

    .line 39
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 40
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$1;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 41
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateDeviceModel(Lcom/mergbw/core/network/app/bean/DeviceModelInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModelInfo"
        }
    .end annotation

    .line 206
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 207
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 208
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->updateDeviceModel(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 209
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 210
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$7;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$7;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 211
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public updateDeviceType(Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceTypeInfo"
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 95
    sget-object v0, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->updateDeviceType(Lokhttp3/RequestBody;)Lio/reactivex/Observable;

    move-result-object p1

    .line 97
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    .line 98
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v0, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/BaseDataPresenter$3;-><init>(Lcom/mergbw/core/network/app/presenter/BaseDataPresenter;)V

    .line 99
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
