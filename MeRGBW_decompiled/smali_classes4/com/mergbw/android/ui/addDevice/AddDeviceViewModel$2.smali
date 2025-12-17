.class Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;
.super Ljava/lang/Object;
.source "AddDeviceViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;->updateAddResult(Z)V

    .line 124
    :cond_0
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/mergbw/core/event/EventMessage;

    const-string v2, "ADD_DEVICE_SUCCESS_ACTION"

    invoke-direct {v1, v2}, Lcom/mergbw/core/event/EventMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onDeleteSuccess()V
    .locals 0

    return-void
.end method

.method public onGetDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 0

    return-void
.end method

.method public onGetDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;->this$0:Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->access$202(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
