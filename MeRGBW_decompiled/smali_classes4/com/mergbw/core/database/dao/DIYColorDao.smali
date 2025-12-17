.class public interface abstract Lcom/mergbw/core/database/dao/DIYColorDao;
.super Ljava/lang/Object;
.source "DIYColorDao.java"


# virtual methods
.method public abstract deleteColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation
.end method

.method public abstract insertDIYColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDIYColor(I)Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Maybe<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDIYColorList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryDIYColorList(I)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryDIYColorList(Ljava/lang/String;)Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateColor(Lcom/mergbw/core/database/bean/DIYInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYColor"
        }
    .end annotation
.end method
