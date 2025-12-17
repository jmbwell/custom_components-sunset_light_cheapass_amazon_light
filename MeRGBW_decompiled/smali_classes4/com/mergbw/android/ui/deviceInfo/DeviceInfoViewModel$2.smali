.class Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;
.super Ljava/lang/Object;
.source "DeviceInfoViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


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

    .line 66
    iput-object p1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 0

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 3

    .line 86
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->disconnectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 87
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/event/EventMessage;

    const-string v2, "DELETE_DEVICE_SUCCESS_ACTION"

    invoke-direct {v1, v2}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$200(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 91
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getLongPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/task/ResetGroupDataTask;

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mergbw/android/task/ResetGroupDataTask;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onGetDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    return-void
.end method

.method public onGetDeviceList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$100(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v1}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/event/EventMessage;

    const-string v2, "DEVICE_ALIAS_NAME_CHANGE"

    invoke-direct {v1, v2}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel$2;->this$0:Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;->access$000(Lcom/mergbw/android/ui/deviceInfo/DeviceInfoViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mergbw/core/event/EventMessage;->setData(Ljava/lang/Object;)Lcom/mergbw/core/event/EventMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
