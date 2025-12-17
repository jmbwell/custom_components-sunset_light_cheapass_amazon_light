.class public Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "SubColorDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;)V
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
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    return-void
.end method


# virtual methods
.method public addColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->insertColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda6;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public deleteColor(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 72
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->deleteColor(Ljava/util/List;)Lio/reactivex/Completable;

    move-result-object p1

    .line 73
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public deleteSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 90
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->deleteColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 91
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getColorList()V
    .locals 2

    .line 45
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/SubColorDao;->queryColorList()Lio/reactivex/Flowable;

    move-result-object v0

    .line 46
    new-instance v1, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getColorList(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 63
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->queryColorList(I)Lio/reactivex/Flowable;

    move-result-object p1

    .line 64
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getColorList(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .line 54
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->queryColorList(Ljava/lang/String;)Lio/reactivex/Flowable;

    move-result-object p1

    .line 55
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getSubColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 36
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->querySubColor(I)Lio/reactivex/Maybe;

    move-result-object p1

    .line 37
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addColor$0$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Ljava/lang/Long;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onAddSubColor(Ljava/lang/Long;)V

    .line 30
    iget-object p1, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    invoke-interface {p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteColor$5$com-mergbw-core-database-presenter-SubColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteSubColor$7$com-mergbw-core-database-presenter-SubColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getColorList$2$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onGetSubColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getColorList$3$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onGetSubColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getColorList$4$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onGetSubColorList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getSubColor$1$com-mergbw-core-database-presenter-SubColorDatabasePresenter(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onGetSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$updateSubColor$6$com-mergbw-core-database-presenter-SubColorDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/ISubColorDatabaseListener;->onUpdateSuccess()V

    :cond_0
    return-void
.end method

.method public updateSubColor(Lcom/mergbw/core/database/bean/SubColorBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 81
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->subColorDao()Lcom/mergbw/core/database/dao/SubColorDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/SubColorDao;->updateColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 82
    new-instance v0, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter$$ExternalSyntheticLambda7;-><init>(Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/SubColorDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method
