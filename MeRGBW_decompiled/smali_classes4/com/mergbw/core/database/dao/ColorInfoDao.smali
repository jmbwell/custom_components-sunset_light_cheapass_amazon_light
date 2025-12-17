.class public interface abstract Lcom/mergbw/core/database/dao/ColorInfoDao;
.super Ljava/lang/Object;
.source "ColorInfoDao.java"


# virtual methods
.method public abstract insertColor(Lcom/mergbw/core/database/bean/ColorBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method

.method public abstract queryColorList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/ColorBean;",
            ">;>;"
        }
    .end annotation
.end method
