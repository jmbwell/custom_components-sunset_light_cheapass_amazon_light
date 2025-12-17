.class public Lcom/mergbw/core/ble/CommandData;
.super Ljava/lang/Object;
.source "CommandData.java"


# instance fields
.field private bleDevice:Lcom/clj/fastble/data/BleDevice;

.field private data:[B


# direct methods
.method public constructor <init>(Lcom/clj/fastble/data/BleDevice;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "data"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-virtual {p0, p1}, Lcom/mergbw/core/ble/CommandData;->setBleDevice(Lcom/clj/fastble/data/BleDevice;)V

    .line 12
    invoke-virtual {p0, p2}, Lcom/mergbw/core/ble/CommandData;->setData([B)V

    return-void
.end method


# virtual methods
.method public getBleDevice()Lcom/clj/fastble/data/BleDevice;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/mergbw/core/ble/CommandData;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/mergbw/core/ble/CommandData;->data:[B

    return-object v0
.end method

.method public setBleDevice(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/mergbw/core/ble/CommandData;->bleDevice:Lcom/clj/fastble/data/BleDevice;

    return-void
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

    .line 20
    iput-object p1, p0, Lcom/mergbw/core/ble/CommandData;->data:[B

    return-void
.end method
