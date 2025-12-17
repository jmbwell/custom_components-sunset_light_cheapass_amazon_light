.class public Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;
.super Lcom/mergbw/core/network/BasePresenter;
.source "TrackDataPresenter.java"


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

    .line 26
    invoke-direct {p0}, Lcom/mergbw/core/network/BasePresenter;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mContext:Landroid/content/Context;

    .line 28
    invoke-static {}, Lcom/mergbw/core/network/app/NetworkHelper;->getInstance()Lcom/mergbw/core/network/app/NetworkHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/NetworkHelper;->getApi()Lcom/mergbw/core/network/app/WebApi;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    .line 29
    iput-object p2, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)Lcom/mergbw/core/network/WebInterface;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-object p0
.end method


# virtual methods
.method public getDeviceOverView()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0}, Lcom/mergbw/core/network/app/WebApi;->getDeviceOverView()Lio/reactivex/Observable;

    move-result-object v0

    .line 61
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 62
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$2;-><init>(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)V

    .line 63
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public getUserOverView()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0}, Lcom/mergbw/core/network/app/WebApi;->getUserOverView()Lio/reactivex/Observable;

    move-result-object v0

    .line 34
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    .line 35
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->observeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/network/app/presenter/TrackDataPresenter$1;-><init>(Lcom/mergbw/core/network/app/presenter/TrackDataPresenter;)V

    .line 36
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
