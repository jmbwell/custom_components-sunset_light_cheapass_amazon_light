.class Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;
.super Ljava/lang/Object;
.source "HomeViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGetDeviceList$0(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 68
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method


# virtual methods
.method public onAddSuccess()V
    .locals 0

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
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0, p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$002(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Ljava/util/List;)Ljava/util/List;

    .line 66
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 67
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 68
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v1

    new-instance v2, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$1$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v1, v2}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
