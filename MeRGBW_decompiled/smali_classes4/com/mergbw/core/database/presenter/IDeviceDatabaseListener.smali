.class public interface abstract Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;
.super Ljava/lang/Object;
.source "IDeviceDatabaseListener.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IBaseDatabaseListener;


# virtual methods
.method public abstract onGetDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation
.end method

.method public abstract onGetDeviceList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation
.end method
