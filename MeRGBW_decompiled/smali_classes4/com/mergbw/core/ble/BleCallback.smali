.class public abstract Lcom/mergbw/core/ble/BleCallback;
.super Ljava/lang/Object;
.source "BleCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    return-void
.end method

.method public onConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    return-void
.end method

.method public onConnectedFailed(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    return-void
.end method

.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    return-void
.end method

.method public onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "success",
            "mtu"
        }
    .end annotation

    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bleDevice",
            "cmdCode",
            "data"
        }
    .end annotation

    return-void
.end method

.method public onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bleDevice"
        }
    .end annotation

    return-void
.end method
