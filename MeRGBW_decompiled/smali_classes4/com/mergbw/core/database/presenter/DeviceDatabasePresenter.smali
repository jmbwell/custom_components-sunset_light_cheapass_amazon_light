.class public Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;
.super Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;
.source "DeviceDatabasePresenter.java"


# instance fields
.field private final mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# direct methods
.method public constructor <init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Lcom/mergbw/core/database/presenter/BaseDatabasePresenter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 25
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->insertDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 26
    new-instance v0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda4;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public deleteDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 61
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->deleteDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 62
    new-instance v0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method

.method public getDeviceInfo(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mac"
        }
    .end annotation

    .line 52
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->queryDeviceInfo(Ljava/lang/String;)Lio/reactivex/Maybe;

    move-result-object p1

    .line 53
    new-instance v0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getDeviceList()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->queryDeviceListFlowable()Lio/reactivex/Flowable;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda5;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Flowable;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method public getDeviceList2()V
    .locals 2

    .line 43
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->queryDeviceListMaybe()Lio/reactivex/Maybe;

    move-result-object v0

    .line 44
    new-instance v1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda3;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, v0, v1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Maybe;Lio/reactivex/functions/Consumer;)V

    return-void
.end method

.method synthetic lambda$addDevice$0$com-mergbw-core-database-presenter-DeviceDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onAddSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$deleteDevice$4$com-mergbw-core-database-presenter-DeviceDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onDeleteSuccess()V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDeviceInfo$3$com-mergbw-core-database-presenter-DeviceDatabasePresenter(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onGetDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDeviceList$1$com-mergbw-core-database-presenter-DeviceDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onGetDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$getDeviceList2$2$com-mergbw-core-database-presenter-DeviceDatabasePresenter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onGetDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method synthetic lambda$updateDevice$5$com-mergbw-core-database-presenter-DeviceDatabasePresenter()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->mListener:Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0}, Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;->onUpdateSuccess()V

    :cond_0
    return-void
.end method

.method public updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 70
    invoke-static {}, Lcom/mergbw/core/database/AppDatabase;->getInstance()Lcom/mergbw/core/database/AppDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/AppDatabase;->deviceInfoDao()Lcom/mergbw/core/database/dao/DeviceInfoDao;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/mergbw/core/database/dao/DeviceInfoDao;->updateDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)Lio/reactivex/Completable;

    move-result-object p1

    .line 71
    new-instance v0, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDisposable(Lio/reactivex/Completable;Lio/reactivex/functions/Action;)V

    return-void
.end method
