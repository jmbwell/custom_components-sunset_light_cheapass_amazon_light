.class public Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "GroupDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;)V
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
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    return-void
.end method


# virtual methods
.method public addGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 26
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao;->insertGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 27
    new-instance v0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public deleteGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 71
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao;->deleteGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 72
    new-instance v0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getGroupInfo(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .line 53
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao;->queryGroupInfo(I)Lio/reactivex/Flowable;

    move-result-object p1

    .line 54
    new-instance v0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getGroupList()V
    .locals 2

    .line 44
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/GroupInfoDao;->queryGroupList()Lio/reactivex/Maybe;

    move-result-object v0

    .line 45
    new-instance v1, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getGroupListWithFlowable()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/GroupInfoDao;->queryGroupListWithFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    .line 36
    new-instance v1, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addGroup$0$com-mergbw-core-database-presenter-GroupDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteGroup$5$com-mergbw-core-database-presenter-GroupDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getGroupInfo$3$com-mergbw-core-database-presenter-GroupDatabasePresenter(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onGetGroupInfo(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getGroupList$2$com-mergbw-core-database-presenter-GroupDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onGetGroupList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getGroupListWithFlowable$1$com-mergbw-core-database-presenter-GroupDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onGetGroupList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$updateGroup$4$com-mergbw-core-database-presenter-GroupDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;

    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;->onUpdateSuccess()V

    :cond_0
    return-void
.end method

.method public updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation

    .line 62
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->groupInfoDao()Lcom/mergbw/core/database/dao/GroupInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/GroupInfoDao;->updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 63
    new-instance v0, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method
