.class Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;
.super Lcom/mergbw/core/ble/BleCallback;
.source "DeviceAlarmViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->access$000(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->access$100(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    sget-object v0, Lcom/mergbw/core/ble/BleStatus;->DISCONNECTED:Lcom/mergbw/core/ble/BleStatus;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 0

    const/16 p1, 0xa

    if-ne p2, p1, :cond_1

    .line 47
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->access$200(Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    const/4 p2, 0x4

    aget-byte p2, p3, p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel$1;->this$0:Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;

    const/4 p2, 0x0

    invoke-static {p3, p2}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/android/ui/deviceAlarm/DeviceAlarmViewModel;->sendData([B)V

    :cond_1
    return-void
.end method
