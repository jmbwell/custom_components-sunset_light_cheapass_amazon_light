.class public Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;
.super Ljava/lang/Object;
.source "DeviceOverViewBean.java"


# instance fields
.field private deviceModeCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceTypeCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation
.end field

.field private factoryIdCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation
.end field

.field private mostUseCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation
.end field

.field private todayAddDevice:I

.field private todayUseDevice:I

.field private totalDevice:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceModeCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->deviceModeCount:Ljava/util/List;

    return-object v0
.end method

.method public getDeviceTypeCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->deviceTypeCount:Ljava/util/List;

    return-object v0
.end method

.method public getFactoryIdCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->factoryIdCount:Ljava/util/List;

    return-object v0
.end method

.method public getMostUseCount()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->mostUseCount:Ljava/util/List;

    return-object v0
.end method

.method public getTodayAddDevice()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->todayAddDevice:I

    return v0
.end method

.method public getTodayUseDevice()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->todayUseDevice:I

    return v0
.end method

.method public getTotalDevice()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->totalDevice:I

    return v0
.end method

.method public setDeviceModeCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModeCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->deviceModeCount:Ljava/util/List;

    return-void
.end method

.method public setDeviceTypeCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceTypeCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;)V"
        }
    .end annotation

    .line 34
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->deviceTypeCount:Ljava/util/List;

    return-void
.end method

.method public setFactoryIdCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factoryIdCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->factoryIdCount:Ljava/util/List;

    return-void
.end method

.method public setMostUseCount(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mostUseCount"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/network/app/bean/DeviceCountBean;",
            ">;)V"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->mostUseCount:Ljava/util/List;

    return-void
.end method

.method public setTodayAddDevice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayAddDevice"
        }
    .end annotation

    .line 66
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->todayAddDevice:I

    return-void
.end method

.method public setTodayUseDevice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "todayUseDevice"
        }
    .end annotation

    .line 74
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->todayUseDevice:I

    return-void
.end method

.method public setTotalDevice(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "totalDevice"
        }
    .end annotation

    .line 26
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceOverViewBean;->totalDevice:I

    return-void
.end method
