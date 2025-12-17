.class Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "DeviceUpgradeViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->access$000(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 43
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;->access$100(Lcom/mergbw/android/ui/deviceUpgrade/DeviceUpgradeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
