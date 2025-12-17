.class public Lcom/mergbw/core/network/app/bean/DeviceModelInfo;
.super Ljava/lang/Object;
.source "DeviceModelInfo.java"


# instance fields
.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceType:I

.field private id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->id:I

    return v0
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceModel"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceName"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceType"
        }
    .end annotation

    .line 24
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->deviceType:I

    return-void
.end method

.method public setId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 16
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceModelInfo;->id:I

    return-void
.end method
