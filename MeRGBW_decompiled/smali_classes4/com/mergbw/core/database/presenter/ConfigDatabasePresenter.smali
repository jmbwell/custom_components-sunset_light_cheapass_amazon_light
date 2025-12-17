.class public Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "ConfigDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;

    return-void
.end method


# virtual methods
.method public addConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao;->insertConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public deleteConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao;->deleteConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 44
    new-instance v0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getConfigList()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/ConfigInfoDao;->queryConfigList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addConfig$0$com-mergbw-core-database-presenter-ConfigDatabasePresenter(Ljava/lang/Long;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object p1, p0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;

    if-eqz p1, :cond_0

    .line 28
    invoke-interface {p1}, Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteConfig$2$com-mergbw-core-database-presenter-ConfigDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getConfigList$1$com-mergbw-core-database-presenter-ConfigDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;->onGetConfigList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$updateConfig$3$com-mergbw-core-database-presenter-ConfigDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IConfigDatabaseListener;->onUpdateSuccess()V

    :cond_0
    return-void
.end method

.method public updateConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->configInfoDao()Lcom/mergbw/core/database/dao/ConfigInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/ConfigInfoDao;->updateConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/ConfigDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method
