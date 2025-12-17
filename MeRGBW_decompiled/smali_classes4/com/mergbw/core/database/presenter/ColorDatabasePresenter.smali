.class public Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "ColorDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IColorDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IColorDatabaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IColorDatabaseListener;

    return-void
.end method


# virtual methods
.method public addColor(Lcom/mergbw/core/database/bean/ColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->colorInfoDao()Lcom/mergbw/core/database/dao/ColorInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/ColorInfoDao;->insertColor(Lcom/mergbw/core/database/bean/ColorBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getColorList()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->colorInfoDao()Lcom/mergbw/core/database/dao/ColorInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/ColorInfoDao;->queryColorList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addColor$0$com-mergbw-core-database-presenter-ColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IColorDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getColorList$1$com-mergbw-core-database-presenter-ColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/ColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IColorDatabaseListener;->onGetColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
