.class public Lcom/mergbw/core/ble/CastDataBean;
.super Ljava/lang/Object;
.source "CastDataBean.java"


# instance fields
.field private data:[B

.field private len:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/mergbw/core/ble/CastDataBean;->data:[B

    return-object v0
.end method

.method public getLen()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mergbw/core/ble/CastDataBean;->len:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/mergbw/core/ble/CastDataBean;->type:I

    return v0
.end method

.method public setData([B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/mergbw/core/ble/CastDataBean;->data:[B

    return-void
.end method

.method public setLen(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "len"
        }
    .end annotation

    .line 25
    iput p1, p0, Lcom/mergbw/core/ble/CastDataBean;->len:I

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

    .line 33
    iput p1, p0, Lcom/mergbw/core/ble/CastDataBean;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "len: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mergbw/core/ble/CastDataBean;->getLen()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mergbw/core/ble/CastDataBean;->getType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
