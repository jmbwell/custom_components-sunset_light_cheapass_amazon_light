.class public Lcom/mergbw/core/database/bean/ConfigInfoBean;
.super Ljava/lang/Object;
.source "ConfigInfoBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private DIYMode:Ljava/lang/String;

.field private RGBModel:I

.field private SubMode:Ljava/lang/String;

.field private bleName:Ljava/lang/String;

.field private configDIYColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private configSubColor:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private deviceModel:Ljava/lang/String;

.field private deviceType:I

.field private enableLimit:Z

.field private extra:Ljava/lang/String;

.field private factoryId:I

.field private id:I

.field private keyMode:Ljava/lang/String;

.field private ledNum:I

.field private maxMixLight:I

.field private maxOtherLight:I

.field private name:Ljava/lang/String;

.field private nameLength:I

.field private remoteControl:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configDIYColor:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configSubColor:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBleName()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->bleName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigDIYColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configDIYColor:Ljava/util/List;

    return-object v0
.end method

.method public getConfigSubColor()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/SubColorBean;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configSubColor:Ljava/util/List;

    return-object v0
.end method

.method public getDIYMode()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->DIYMode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->deviceType:I

    return v0
.end method

.method public getExtra()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->extra:Ljava/lang/String;

    return-object v0
.end method

.method public getFactoryId()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->factoryId:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->id:I

    return v0
.end method

.method public getKeyMode()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->keyMode:Ljava/lang/String;

    return-object v0
.end method

.method public getLedNum()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->ledNum:I

    return v0
.end method

.method public getMaxMixLight()I
    .locals 1

    .line 161
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->maxMixLight:I

    return v0
.end method

.method public getMaxOtherLight()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->maxOtherLight:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNameLength()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->nameLength:I

    return v0
.end method

.method public getRGBModel()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->RGBModel:I

    return v0
.end method

.method public getRemoteControl()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->remoteControl:Ljava/lang/String;

    return-object v0
.end method

.method public getSubMode()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->SubMode:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->type:I

    return v0
.end method

.method public isEnableLimit()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->enableLimit:Z

    return v0
.end method

.method public setBleName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleName"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->bleName:Ljava/lang/String;

    return-void
.end method

.method public setConfigDIYColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configDIYColor"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DIYInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 197
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configDIYColor:Ljava/util/List;

    return-void
.end method

.method public setConfigSubColor(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configSubColor"
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

    .line 213
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->configSubColor:Ljava/util/List;

    return-void
.end method

.method public setDIYMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DIYMode"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->DIYMode:Ljava/lang/String;

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

    .line 101
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->deviceModel:Ljava/lang/String;

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

    .line 93
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->deviceType:I

    return-void
.end method

.method public setEnableLimit(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enableLimit"
        }
    .end annotation

    .line 157
    iput-boolean p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->enableLimit:Z

    return-void
.end method

.method public setExtra(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extra"
        }
    .end annotation

    .line 133
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->extra:Ljava/lang/String;

    return-void
.end method

.method public setFactoryId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "factoryId"
        }
    .end annotation

    .line 85
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->factoryId:I

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

    .line 61
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->id:I

    return-void
.end method

.method public setKeyMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyMode"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->keyMode:Ljava/lang/String;

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

    .line 109
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->ledNum:I

    return-void
.end method

.method public setMaxMixLight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxMixLight"
        }
    .end annotation

    .line 165
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->maxMixLight:I

    return-void
.end method

.method public setMaxOtherLight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "maxOtherLight"
        }
    .end annotation

    .line 173
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->maxOtherLight:I

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

    .line 77
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNameLength(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nameLength"
        }
    .end annotation

    .line 117
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->nameLength:I

    return-void
.end method

.method public setRGBModel(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "RGBModel"
        }
    .end annotation

    .line 149
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->RGBModel:I

    return-void
.end method

.method public setRemoteControl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "remoteControl"
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->remoteControl:Ljava/lang/String;

    return-void
.end method

.method public setSubMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subMode"
        }
    .end annotation

    .line 205
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->SubMode:Ljava/lang/String;

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

    .line 69
    iput p1, p0, Lcom/mergbw/core/database/bean/ConfigInfoBean;->type:I

    return-void
.end method
