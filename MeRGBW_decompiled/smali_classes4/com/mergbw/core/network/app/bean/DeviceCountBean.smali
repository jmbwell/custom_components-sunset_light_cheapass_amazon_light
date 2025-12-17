.class public Lcom/mergbw/core/network/app/bean/DeviceCountBean;
.super Ljava/lang/Object;
.source "DeviceCountBean.java"


# instance fields
.field private mode:Ljava/lang/String;

.field private num:I

.field private type:I

.field private typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->num:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->type:I

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->typeName:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->mode:Ljava/lang/String;

    return-void
.end method

.method public setNum(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 25
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->num:I

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

    .line 17
    iput p1, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->type:I

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

    .line 41
    iput-object p1, p0, Lcom/mergbw/core/network/app/bean/DeviceCountBean;->typeName:Ljava/lang/String;

    return-void
.end method
