.class Lcom/ota66/sdk/OTASDKUtils$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ota66/sdk/ble/OTACallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ota66/sdk/OTASDKUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ota66/sdk/OTASDKUtils;


# direct methods
.method private constructor <init>(Lcom/ota66/sdk/OTASDKUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ota66/sdk/OTASDKUtils;Lcom/ota66/sdk/OTASDKUtils$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ota66/sdk/OTASDKUtils$b;-><init>(Lcom/ota66/sdk/OTASDKUtils;)V

    return-void
.end method


# virtual methods
.method public onConnected(Z)V
    .locals 3

    const-string v0, "TAG"

    if-eqz p1, :cond_9

    .line 1
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    sget v1, Lcom/ota66/sdk/OTAUtils;->MTU_SIZE:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$102(Lcom/ota66/sdk/OTASDKUtils;Z)Z

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onConnected: STATUS:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",otaType:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    if-nez p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v0, La/b;->a:La/b;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    goto/16 :goto_2

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v0, La/b;->b:La/b;

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$500(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    goto/16 :goto_2

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v0, La/b;->c:La/b;

    if-ne p1, v0, :cond_f

    .line 10
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$600(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    goto/16 :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v1, La/b;->a:La/b;

    if-ne p1, v1, :cond_4

    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->startOTA()V

    goto/16 :goto_2

    .line 16
    :cond_4
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v1, La/b;->c:La/b;

    if-ne p1, v1, :cond_5

    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$600(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->startSecurity()V

    goto/16 :goto_2

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$300(Lcom/ota66/sdk/OTASDKUtils;)La/b;

    move-result-object p1

    sget-object v1, La/b;->b:La/b;

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$500(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_6

    .line 19
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->startResource()V

    goto/16 :goto_2

    .line 22
    :cond_6
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$800(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_7

    .line 23
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$900(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    goto/16 :goto_2

    .line 24
    :cond_7
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$900(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_8

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onConnected: isQuick:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$100(Lcom/ota66/sdk/OTASDKUtils;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    const-string p1, "onConnected: 222222222222222"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    goto/16 :goto_2

    .line 37
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "error:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "STATUS"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 40
    :cond_9
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$500(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-eq p1, v1, :cond_e

    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$600(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    if-ne p1, v1, :cond_a

    goto :goto_1

    .line 44
    :cond_a
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$800(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    const/16 v1, 0x3e9

    if-ne p1, v0, :cond_b

    .line 45
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$1100(Lcom/ota66/sdk/OTASDKUtils;I)V

    goto :goto_2

    .line 46
    :cond_b
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    if-ne p1, v0, :cond_c

    .line 47
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1300(Lcom/ota66/sdk/OTASDKUtils;)V

    goto :goto_2

    .line 48
    :cond_c
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p1

    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v0

    if-ne p1, v0, :cond_d

    .line 49
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$1100(Lcom/ota66/sdk/OTASDKUtils;I)V

    goto :goto_2

    .line 51
    :cond_d
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    const/16 v0, 0x3ee

    invoke-static {p1, v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1100(Lcom/ota66/sdk/OTASDKUtils;I)V

    goto :goto_2

    .line 52
    :cond_e
    :goto_1
    const-string p1, "onConnected: \u65ad\u5f00\u8fde\u63a5\uff0c\u91cd\u65b0\u626b\u63cf"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->starScan()V

    :cond_f
    :goto_2
    return-void
.end method

.method public onDeviceSearch(Landroid/bluetooth/BluetoothDevice;I[B)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p2}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p2

    iget-object p3, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p3}, Lcom/ota66/sdk/OTASDKUtils;->access$400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p2}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p2

    iget-object p3, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p3}, Lcom/ota66/sdk/OTASDKUtils;->access$500(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p2}, Lcom/ota66/sdk/OTASDKUtils;->access$200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p2

    iget-object p3, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p3}, Lcom/ota66/sdk/OTASDKUtils;->access$600(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p3

    if-ne p2, p3, :cond_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p3}, Lcom/ota66/sdk/OTASDKUtils;->access$1500(Lcom/ota66/sdk/OTASDKUtils;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lc/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p2}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ota66/sdk/OTAUtils;->stopScan()V

    .line 4
    iget-object p2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p2}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p2

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/ota66/sdk/OTAUtils;->connectDevice(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$800(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    :cond_1
    return-void
.end method

.method public onError(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onError"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0, p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1100(Lcom/ota66/sdk/OTASDKUtils;I)V

    return-void
.end method

.method public onOTA(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$100(Lcom/ota66/sdk/OTASDKUtils;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->setPHY()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOTAFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->reBoot()V

    return-void
.end method

.method public onPhyUpdate()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    return-void
.end method

.method public onProcess(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1600(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/firware/UpdateFirewareCallBack;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/ota66/sdk/firware/UpdateFirewareCallBack;->onProcess(F)V

    return-void
.end method

.method public onReboot()V
    .locals 0

    return-void
.end method

.method public onRebootSuccess()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->disConnectDevice()V

    return-void
.end method

.method public onResource(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$100(Lcom/ota66/sdk/OTASDKUtils;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ota66/sdk/OTAUtils;->setPHY()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {p1}, Lcom/ota66/sdk/OTASDKUtils;->access$1000(Lcom/ota66/sdk/OTASDKUtils;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onResourceFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1200(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ota66/sdk/OTAUtils;->reBoot()V

    return-void
.end method

.method public onStartSecurityData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$1400(Lcom/ota66/sdk/OTASDKUtils;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/ota66/sdk/OTASDKUtils;->access$202(Lcom/ota66/sdk/OTASDKUtils;I)I

    .line 2
    iget-object v0, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v0}, Lcom/ota66/sdk/OTASDKUtils;->access$700(Lcom/ota66/sdk/OTASDKUtils;)Lcom/ota66/sdk/OTAUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v1}, Lcom/ota66/sdk/OTASDKUtils;->access$1700(Lcom/ota66/sdk/OTASDKUtils;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ota66/sdk/OTASDKUtils$b;->a:Lcom/ota66/sdk/OTASDKUtils;

    invoke-static {v2}, Lcom/ota66/sdk/OTASDKUtils;->access$100(Lcom/ota66/sdk/OTASDKUtils;)Z

    move-result v2

    sget-object v3, La/b;->c:La/b;

    invoke-virtual {v0, v1, v2, v3}, Lcom/ota66/sdk/OTAUtils;->updateFirmware(Ljava/lang/String;ZLa/b;)V

    return-void
.end method
