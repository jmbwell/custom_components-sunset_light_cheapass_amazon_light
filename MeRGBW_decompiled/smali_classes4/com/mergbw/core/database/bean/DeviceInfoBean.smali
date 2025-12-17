.class public Lcom/mergbw/core/database/bean/DeviceInfoBean;
.super Ljava/lang/Object;
.source "DeviceInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private aliasName:Ljava/lang/String;

.field private brightness:I

.field private closeAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

.field private coldBrightness:I

.field private coldPercent:I

.field private deviceMac:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceName:Ljava/lang/String;

.field private deviceType:I

.field private factoryID:I

.field private firmwareVersion:Ljava/lang/String;

.field private isBound:Z

.field private isConnect:Z

.field private isConnecting:Z

.field private isOpen:Z

.field private isSelected:Z

.field private isWhiteOpen:Z

.field private ledNum:I

.field private motorSpeed:I

.field private mtu:I

.field private openAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

.field private sensitive:I

.field private starBrightness:I

.field private supportCold:I

.field private supportWarm:I

.field private warmBrightness:I

.field private warmPercent:I

.field private whiteBrightness:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAliasName()Ljava/lang/String;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->aliasName:Ljava/lang/String;

    invoke-static {v0}, Lcom/mergbw/core/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceName:Ljava/lang/String;

    return-object v0

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->aliasName:Ljava/lang/String;

    return-object v0
.end method

.method public getBrightness()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->brightness:I

    return v0
.end method

.method public getCloseAlarm()Lcom/mergbw/core/bean/AlarmDataBean;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->closeAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

    return-object v0
.end method

.method public getColdBrightness()I
    .locals 1

    .line 290
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->coldBrightness:I

    return v0
.end method

.method public getColdPercent()I
    .locals 1

    .line 306
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->coldPercent:I

    return v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceType:I

    return v0
.end method

.method public getFactoryID()I
    .locals 1

    .line 234
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->factoryID:I

    return v0
.end method

.method public getFirmwareVersion()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->firmwareVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getLedNum()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->ledNum:I

    return v0
.end method

.method public getMotorSpeed()I
    .locals 1

    .line 266
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->motorSpeed:I

    return v0
.end method

.method public getMtu()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->mtu:I

    return v0
.end method

.method public getOpenAlarm()Lcom/mergbw/core/bean/AlarmDataBean;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->openAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

    return-object v0
.end method

.method public getSensitive()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->sensitive:I

    return v0
.end method

.method public getStarBrightness()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->starBrightness:I

    return v0
.end method

.method public getSupportCold()I
    .locals 1

    .line 274
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->supportCold:I

    return v0
.end method

.method public getSupportWarm()I
    .locals 1

    .line 282
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->supportWarm:I

    return v0
.end method

.method public getWarmBrightness()I
    .locals 1

    .line 298
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->warmBrightness:I

    return v0
.end method

.method public getWarmPercent()I
    .locals 1

    .line 314
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->warmPercent:I

    return v0
.end method

.method public getWhiteBrightness()I
    .locals 1

    .line 250
    iget v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->whiteBrightness:I

    return v0
.end method

.method public isBound()Z
    .locals 1

    .line 226
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isBound:Z

    return v0
.end method

.method public isConnect()Z
    .locals 1

    .line 138
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    .line 146
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnecting:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen:Z

    return v0
.end method

.method public isSelected()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected:Z

    return v0
.end method

.method public isWhiteOpen()Z
    .locals 1

    .line 242
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isWhiteOpen:Z

    return v0
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

    .line 134
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->aliasName:Ljava/lang/String;

    return-void
.end method

.method public setBound(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bound"
        }
    .end annotation

    .line 230
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isBound:Z

    return-void
.end method

.method public setBrightness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 174
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->brightness:I

    return-void
.end method

.method public setCloseAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "closeAlarm"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->closeAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

    return-void
.end method

.method public setColdBrightness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coldBrightness"
        }
    .end annotation

    .line 294
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->coldBrightness:I

    return-void
.end method

.method public setColdPercent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "coldPercent"
        }
    .end annotation

    .line 310
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->coldPercent:I

    return-void
.end method

.method public setConnect(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connect"
        }
    .end annotation

    .line 142
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect:Z

    return-void
.end method

.method public setConnecting(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "connecting"
        }
    .end annotation

    .line 150
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnecting:Z

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

    .line 99
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceMac:Ljava/lang/String;

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

    .line 123
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceModel:Ljava/lang/String;

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

    .line 107
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceName:Ljava/lang/String;

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

    .line 115
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->deviceType:I

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

    .line 238
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->factoryID:I

    return-void
.end method

.method public setFirmwareVersion(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "firmwareVersion"
        }
    .end annotation

    .line 182
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->firmwareVersion:Ljava/lang/String;

    return-void
.end method

.method public setLedNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ledNum"
        }
    .end annotation

    .line 206
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->ledNum:I

    return-void
.end method

.method public setMotorSpeed(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motorSpeed"
        }
    .end annotation

    .line 270
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->motorSpeed:I

    return-void
.end method

.method public setMtu(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtu"
        }
    .end annotation

    .line 166
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->mtu:I

    return-void
.end method

.method public setOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "open"
        }
    .end annotation

    .line 158
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isOpen:Z

    return-void
.end method

.method public setOpenAlarm(Lcom/mergbw/core/bean/AlarmDataBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "openAlarm"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->openAlarm:Lcom/mergbw/core/bean/AlarmDataBean;

    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "selected"
        }
    .end annotation

    .line 222
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected:Z

    return-void
.end method

.method public setSensitive(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sensitive"
        }
    .end annotation

    .line 214
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->sensitive:I

    return-void
.end method

.method public setStarBrightness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "starBrightness"
        }
    .end annotation

    .line 262
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->starBrightness:I

    return-void
.end method

.method public setSupportCold(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportCold"
        }
    .end annotation

    .line 278
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->supportCold:I

    return-void
.end method

.method public setSupportWarm(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "supportWarm"
        }
    .end annotation

    .line 286
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->supportWarm:I

    return-void
.end method

.method public setWarmBrightness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmBrightness"
        }
    .end annotation

    .line 302
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->warmBrightness:I

    return-void
.end method

.method public setWarmPercent(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "warmPercent"
        }
    .end annotation

    .line 318
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->warmPercent:I

    return-void
.end method

.method public setWhiteBrightness(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whiteBrightness"
        }
    .end annotation

    .line 254
    iput p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->whiteBrightness:I

    return-void
.end method

.method public setWhiteOpen(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "whiteOpen"
        }
    .end annotation

    .line 246
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isWhiteOpen:Z

    return-void
.end method
