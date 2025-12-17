.class Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "DeviceInfoViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 6

    const/4 p1, 0x0

    const/4 v0, 0x4

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    .line 52
    aget-byte v2, p3, v0

    const/4 v3, 0x5

    .line 53
    aget-byte v3, p3, v3

    const/4 v4, 0x6

    .line 54
    aget-byte v4, p3, v4

    const/4 v5, 0x3

    new-array v5, v5, [B

    aput-byte v2, v5, p1

    const/4 v2, 0x1

    aput-byte v3, v5, v2

    aput-byte v4, v5, v1

    .line 55
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/lang/String;-><init>([B)V

    .line 56
    iget-object v2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFirmwareVersion(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$100(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    const/16 v1, 0xb

    if-ne p2, v1, :cond_1

    .line 59
    aget-byte p2, p3, v0

    if-nez p2, :cond_1

    .line 61
    iget-object p2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    const/4 p3, 0x0

    invoke-static {p1, p3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->sendData([B)V

    :cond_1
    return-void
.end method
