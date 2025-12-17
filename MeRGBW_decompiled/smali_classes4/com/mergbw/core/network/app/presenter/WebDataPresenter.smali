.class public Lcom/mergbw/core/network/app/presenter/WebDataPresenter;
.super Lcom/mergbw/core/network/BasePresenter;
.source "WebDataPresenter.java"


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

    .line 25
    invoke-direct {p0}, Lcom/mergbw/core/network/BasePresenter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->mContext:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/mergbw/core/network/app/NetworkHelper;->getInstance()Lcom/mergbw/core/network/app/NetworkHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/core/network/app/NetworkHelper;->getApi()Lcom/mergbw/core/network/app/WebApi;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    .line 28
    iput-object p2, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/core/network/app/presenter/WebDataPresenter;)Lcom/mergbw/core/network/WebInterface;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->mView:Lcom/mergbw/core/network/WebInterface;

    return-object p0
.end method


# virtual methods
.method public getAppVersionInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter;->mWebApi:Lcom/mergbw/core/network/app/WebApi;

    invoke-interface {v0, p1}, Lcom/mergbw/core/network/app/WebApi;->getAppVersionInfo(I)Lio/reactivex/Observable;

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

    new-instance v0, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/network/app/presenter/WebDataPresenter$1;-><init>(Lcom/mergbw/core/network/app/presenter/WebDataPresenter;)V

    .line 35
    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method
