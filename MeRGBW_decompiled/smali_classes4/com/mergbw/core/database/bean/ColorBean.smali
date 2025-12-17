.class public Lcom/mergbw/core/database/bean/ColorBean;
.super Ljava/lang/Object;
.source "ColorBean.java"


# instance fields
.field private addTime:J

.field private alias:Ljava/lang/String;

.field private colorValue:I

.field private deviceMac:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mergbw/core/database/bean/ColorBean;->setColorValue(I)V

    return-void
.end method


# virtual methods
.method public getAddTime()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/mergbw/core/database/bean/ColorBean;->addTime:J

    return-wide v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ColorBean;->alias:Ljava/lang/String;

    return-object v0
.end method

.method public getColorValue()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/mergbw/core/database/bean/ColorBean;->colorValue:I

    return v0
.end method

.method public getDeviceMac()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mergbw/core/database/bean/ColorBean;->deviceMac:Ljava/lang/String;

    return-object v0
.end method

.method public setAddTime(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "addTime"
        }
    .end annotation

    .line 61
    iput-wide p1, p0, Lcom/mergbw/core/database/bean/ColorBean;->addTime:J

    return-void
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

    .line 45
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ColorBean;->alias:Ljava/lang/String;

    return-void
.end method

.method public setColorValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorValue"
        }
    .end annotation

    .line 37
    iput p1, p0, Lcom/mergbw/core/database/bean/ColorBean;->colorValue:I

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

    .line 53
    iput-object p1, p0, Lcom/mergbw/core/database/bean/ColorBean;->deviceMac:Ljava/lang/String;

    return-void
.end method
