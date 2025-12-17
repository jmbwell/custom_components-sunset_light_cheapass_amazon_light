.class public Lcom/mergbw/core/database/bean/SubColorBean;
.super Ljava/lang/Object;
.source "SubColorBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private alias:Ljava/lang/String;

.field private checked:Z

.field private colorValue:Ljava/lang/String;

.field private deviceMac:Ljava/lang/String;

.field private deviceType:I

.field private id:I

.field private subType:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getColorValue()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 92
    iget v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->deviceType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->id:I

    return v0
.end method

.method public getSubType()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->subType:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->type:I

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 60
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/SubColorBean;->checked:Z

    return v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alias"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->alias:Ljava/lang/String;

    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checked"
        }
    .end annotation

    .line 64
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->checked:Z

    return-void
.end method

.method public setColorValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->colorValue:Ljava/lang/String;

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

    .line 72
    iput-object p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->deviceMac:Ljava/lang/String;

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

    .line 96
    iput p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->deviceType:I

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

    .line 40
    iput p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->id:I

    return-void
.end method

.method public setSubType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subType"
        }
    .end annotation

    .line 88
    iput p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->subType:I

    return-void
.end method

.method public setType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 80
    iput p1, p0, Lcom/mergbw/core/database/bean/SubColorBean;->type:I

    return-void
.end method
