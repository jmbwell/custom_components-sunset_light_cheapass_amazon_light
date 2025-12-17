.class public Lcom/mergbw/core/database/bean/DIYInfoBean;
.super Ljava/lang/Object;
.source "DIYInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private colorValue:Ljava/lang/String;

.field private deviceMac:Ljava/lang/String;

.field private deviceType:I

.field private diyType:I

.field private id:I

.field private name:Ljava/lang/String;

.field private style:I

.field private subColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private time:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColorValue()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->colorValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->deviceType:I

    return v0
.end method

.method public getDiyType()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->diyType:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->style:I

    return v0
.end method

.method public getSubColorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->subColorList:Ljava/util/List;

    return-object v0
.end method

.method public getTime()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->time:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->type:I

    return v0
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

    .line 106
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->colorValue:Ljava/lang/String;

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

    .line 66
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->deviceMac:Ljava/lang/String;

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

    .line 122
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->deviceType:I

    return-void
.end method

.method public setDiyType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diyType"
        }
    .end annotation

    .line 114
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->diyType:I

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

    .line 50
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 90
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->style:I

    return-void
.end method

.method public setSubColorList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subColorList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;)V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->subColorList:Ljava/util/List;

    return-void
.end method

.method public setTime(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "time"
        }
    .end annotation

    .line 98
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->time:I

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

    .line 82
    iput p1, p0, Lcom/mergbw/core/database/bean/DIYInfoBean;->type:I

    return-void
.end method
