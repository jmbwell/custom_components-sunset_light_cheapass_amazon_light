.class Lcom/ota66/sdk/OTAUtils$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ota66/sdk/OTAUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/ota66/sdk/OTAUtils;


# direct methods
.method private constructor <init>(Lcom/ota66/sdk/OTAUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ota66/sdk/OTAUtils;Lcom/ota66/sdk/OTAUtils$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ota66/sdk/OTAUtils$c;-><init>(Lcom/ota66/sdk/OTAUtils;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ota66/sdk/ble/OTACallBack;->onRebootSuccess()V

    return-void
.end method

.method public a(Landroid/bluetooth/BluetoothGatt;III)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/ota66/sdk/ble/OTACallBack;->onPhyUpdate()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0, p1}, Lcom/ota66/sdk/OTAUtils;->access$102(Lcom/ota66/sdk/OTAUtils;Z)Z

    .line 3
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ota66/sdk/ble/OTACallBack;->onConnected(Z)V

    return-void
.end method

.method public onDeviceSearch(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/ota66/sdk/ble/OTACallBack;->onDeviceSearch(Landroid/bluetooth/BluetoothDevice;I[B)V

    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onError: ========="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    return-void
.end method

.method public onOTAFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ota66/sdk/ble/OTACallBack;->onOTAFinish()V

    return-void
.end method

.method public onProcess(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ota66/sdk/ble/OTACallBack;->onProcess(F)V

    return-void
.end method

.method public onResourceFinish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ota66/sdk/ble/OTACallBack;->onResourceFinish()V

    return-void
.end method

.method public onStartSecurityData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$c;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/ota66/sdk/ble/OTACallBack;->onStartSecurityData()V

    return-void
.end method
