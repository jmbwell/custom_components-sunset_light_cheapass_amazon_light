.class public Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;
.super Ljava/lang/Object;
.source "DeviceTypeInfo.java"


# instance fields
.field private deviceType:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceType()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;->deviceType:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;->typeName:Ljava/lang/String;

    return-object v0
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

    .line 13
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;->deviceType:I

    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeName"
        }
    .end annotation

    .line 21
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceTypeInfo;->typeName:Ljava/lang/String;

    return-void
.end method
