.class public Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;
.super Ljava/lang/Object;
.source "UpgradeErrorRecordBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aliasName:Ljava/lang/String;

.field private deviceMac:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceType:I

.field private errorCode:I

.field private factoryID:I

.field private recordTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasName()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceType:I

    return v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 79
    iget v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->errorCode:I

    return v0
.end method

.method public getFactoryID()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->factoryID:I

    return v0
.end method

.method public getRecordTime()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->recordTime:Ljava/lang/String;

    return-object v0
.end method

.method public setAliasName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aliasName"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceMac(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceMac"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceMac:Ljava/lang/String;

    return-void
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

    .line 59
    iput-object p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceModel:Ljava/lang/String;

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

    .line 43
    iput-object p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceName:Ljava/lang/String;

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

    .line 51
    iput p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->deviceType:I

    return-void
.end method

.method public setErrorCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "errorCode"
        }
    .end annotation

    .line 83
    iput p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->errorCode:I

    return-void
.end method

.method public setFactoryID(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factoryID"
        }
    .end annotation

    .line 75
    iput p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->factoryID:I

    return-void
.end method

.method public setRecordTime(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recordTime"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;->recordTime:Ljava/lang/String;

    return-void
.end method
