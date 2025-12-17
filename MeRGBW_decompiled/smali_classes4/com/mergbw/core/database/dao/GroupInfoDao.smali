.class public interface abstract Lcom/mergbw/core/database/dao/GroupInfoDao;
.super Ljava/lang/Object;
.source "GroupInfoDao.java"


# virtual methods
.method public abstract deleteGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation
.end method

.method public abstract insertGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation
.end method

.method public abstract queryGroupInfo(I)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryGroupList()Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryGroupListWithFlowable()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "group"
        }
    .end annotation
.end method
