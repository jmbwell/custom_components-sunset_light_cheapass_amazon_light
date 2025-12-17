.class Lcom/mergbw/core/ble/RGBDeviceManager$3;
.super Lcom/clj/fastble/callback/BleWriteCallback;
.source "RGBDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/core/ble/RGBDeviceManager;->sendData(Lcom/clj/fastble/data/BleDevice;[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

.field final synthetic val$bleDevice:Lcom/clj/fastble/data/BleDevice;


# direct methods
.method constructor <init>(Lcom/mergbw/core/ble/RGBDeviceManager;Lcom/clj/fastble/data/BleDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bleDevice"
        }
    .end annotation

    .line 226
    iput-object p1, p0, Lcom/mergbw/core/ble/RGBDeviceManager$3;->this$0:Lcom/mergbw/core/ble/RGBDeviceManager;

    iput-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$3;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleWriteCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onWriteFailure(Lcom/clj/fastble/exception/BleException;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "exception"
        }
    .end annotation

    return-void
.end method

.method public onWriteSuccess(II[B)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "current",
            "total",
            "justWrite"
        }
    .end annotation

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/mergbw/core/ble/RGBDeviceManager$3;->val$bleDevice:Lcom/clj/fastble/data/BleDevice;

    invoke-virtual {p2}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sendData onWriteSuccess: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method
