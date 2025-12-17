.class Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;
.super Lcom/clj/fastble/callback/BleScanCallback;
.source "DeviceResumeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->scanDevice()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 90
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;

    invoke-direct {p0}, Lcom/clj/fastble/callback/BleScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinished(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/clj/fastble/data/BleDevice;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onScanStarted(Z)V
    .locals 0

    return-void
.end method

.method public onScanning(Lcom/clj/fastble/data/BleDevice;)V
    .locals 2

    .line 101
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleDevice: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getScanRecord()[B

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->byte2HexStr([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PPlusOTA"

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;)V

    .line 107
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;->access$100(Lcom/mergbw/android/ui/deviceUpgrade/DeviceResumeActivity;Lcom/clj/fastble/data/BleDevice;)V

    :cond_1
    :goto_0
    return-void
.end method
