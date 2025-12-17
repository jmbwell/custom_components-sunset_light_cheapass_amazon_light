.class Lcom/ota66/sdk/OTAUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ota66/sdk/OTAUtils;->startResource()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ota66/sdk/OTAUtils;


# direct methods
.method constructor <init>(Lcom/ota66/sdk/OTAUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$100(Lcom/ota66/sdk/OTAUtils;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$200(Lcom/ota66/sdk/OTAUtils;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-static {v0}, Lc/b;->a(Landroid/bluetooth/BluetoothGatt;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/ota66/sdk/ble/OTACallBack;->onResource(Z)V

    goto :goto_1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$400(Lcom/ota66/sdk/OTAUtils;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "010301"

    goto :goto_0

    .line 7
    :cond_1
    const-string v0, "0103"

    move v1, v2

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v3}, Lcom/ota66/sdk/OTAUtils;->access$200(Lcom/ota66/sdk/OTAUtils;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/ota66/sdk/OTAUtils;->access$500(Lcom/ota66/sdk/OTAUtils;Landroid/bluetooth/BluetoothGatt;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/ota66/sdk/ble/OTACallBack;->onResource(Z)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/ota66/sdk/OTAUtils$b;->a:Lcom/ota66/sdk/OTAUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTAUtils;->access$300(Lcom/ota66/sdk/OTAUtils;)Lcom/ota66/sdk/ble/OTACallBack;

    move-result-object v0

    const/16 v1, 0x3ef

    invoke-interface {v0, v1}, Lcom/ota66/sdk/ble/OTACallBack;->onError(I)V

    :cond_3
    :goto_1
    return-void
.end method
