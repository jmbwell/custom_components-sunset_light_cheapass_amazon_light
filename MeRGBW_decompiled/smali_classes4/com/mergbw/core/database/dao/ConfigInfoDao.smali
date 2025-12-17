.class public interface abstract Lcom/mergbw/core/database/dao/ConfigInfoDao;
.super Ljava/lang/Object;
.source "ConfigInfoDao.java"


# virtual methods
.method public abstract deleteConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method

.method public abstract insertConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryConfigList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ConfigInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateConfig(Lcom/mergbw/core/database/bean/ConfigInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "config"
        }
    .end annotation
.end method
