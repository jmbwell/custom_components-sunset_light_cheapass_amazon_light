.class public interface abstract Lcom/mergbw/core/database/dao/SubColorDao;
.super Ljava/lang/Object;
.source "SubColorDao.java"


# virtual methods
.method public abstract deleteColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColor"
        }
    .end annotation
.end method

.method public abstract deleteColor(Ljava/util/List;)Lio/reactivex/Completable;
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
            ">;)",
            "Lio/reactivex/Completable;"
        }
    .end annotation
.end method

.method public abstract insertColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ")",
            "Lio/reactivex/Maybe<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryColorList()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryColorList(I)Lio/reactivex/Flowable;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryColorList(Ljava/lang/String;)Lio/reactivex/Flowable;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract querySubColor(I)Lio/reactivex/Maybe;
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
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract updateColor(Lcom/mergbw/core/database/bean/SubColorBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation
.end method
