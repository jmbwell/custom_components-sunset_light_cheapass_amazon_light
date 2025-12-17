.class public interface abstract Lcom/mergbw/core/database/dao/DeviceInfoDao;
.super Ljava/lang/Object;
.source "DeviceInfoDao.java"


# virtual methods
.method public abstract deleteDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation
.end method

.method public abstract insertDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation
.end method

.method public abstract queryDeviceInfo(Ljava/lang/String;)Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/reactivex/Maybe<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDeviceListFlowable()Lio/reactivex/Flowable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Flowable<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract queryDeviceListMaybe()Lio/reactivex/Maybe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/Maybe<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation
.end method
