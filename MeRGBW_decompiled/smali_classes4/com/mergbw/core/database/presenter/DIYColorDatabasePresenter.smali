.class public Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "DIYColorDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    return-void
.end method


# virtual methods
.method public addDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->insertDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public deleteDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diyColor"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->deleteColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getDIYColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->queryDIYColor(I)Lio/reactivex/Maybe;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getDIYColorList()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/DIYColorDao;->queryDIYColorList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getDIYColorList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->queryDIYColorList(I)Lio/reactivex/Flowable;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getDIYColorList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->queryDIYColorList(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addDIYColor$0$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onAddDiy(Ljava/lang/Long;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteDIYColor$5$com-mergbw-core-database-presenter-DIYColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDIYColor$1$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onGetDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDIYColorList$2$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onGetDIYColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDIYColorList$3$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onGetDIYColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDIYColorList$4$com-mergbw-core-database-presenter-DIYColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onGetDIYColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$updateDIYColor$6$com-mergbw-core-database-presenter-DIYColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IDIYColorDatabaseListener;->onUpdateSuccess()V

    :cond_0
    return-void
.end method

.method public updateDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diyColor"
        }
    .end annotation

    .line 80
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->diyColorDao()Lcom/mergbw/core/database/dao/DIYColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DIYColorDao;->updateColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DIYColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method
