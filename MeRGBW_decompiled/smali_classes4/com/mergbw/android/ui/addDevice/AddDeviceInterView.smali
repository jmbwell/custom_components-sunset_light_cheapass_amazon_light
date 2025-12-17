.class public interface abstract Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;
.super Ljava/lang/Object;
.source "AddDeviceInterView.java"


# virtual methods
.method public abstract updateAddResult(Z)V
.end method

.method public abstract updateBindResult(Lcom/mergbw/core/database/bean/DeviceInfoBean;Lcom/mergbw/android/ui/addDevice/BindStatus;)V
.end method

.method public abstract updateDeviceList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateScanResult(Z)V
.end method
