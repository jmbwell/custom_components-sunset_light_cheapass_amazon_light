.class public interface abstract Lcom/mergbw/core/database/dao/UpgradeErrorRecordDao;
.super Ljava/lang/Object;
.source "UpgradeErrorRecordDao.java"


# virtual methods
.method public abstract deleteRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation
.end method

.method public abstract insertRecord(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "record"
        }
    .end annotation
.end method

.method public abstract queryRecordList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;",
            ">;>;"
        }
    .end annotation
.end method
