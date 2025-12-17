.class public Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "UpgradeErrorRecordDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;)V
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
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->upgradeErrorRecordDao()Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;->insertRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 25
    new-instance v0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public deleteConfig(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->upgradeErrorRecordDao()Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;->deleteRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 43
    new-instance v0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getRecordList()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->upgradeErrorRecordDao()Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;->queryRecordList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 34
    new-instance v1, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addRecord$0$com-mergbw-core-database-presenter-UpgradeErrorRecordDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;

    if-eqz v0, :cond_0

    .line 27
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteConfig$2$com-mergbw-core-database-presenter-UpgradeErrorRecordDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;

    if-eqz v0, :cond_0

    .line 45
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getRecordList$1$com-mergbw-core-database-presenter-UpgradeErrorRecordDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/UpgradeErrorRecordDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IUpgradeErrorRecordDatabaseListener;->onGetRecordList(Ljava/util/List;)V

    :cond_0
    return-void
.end method
