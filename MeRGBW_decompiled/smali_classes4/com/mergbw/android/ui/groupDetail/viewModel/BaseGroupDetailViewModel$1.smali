.class Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;
.super Ljava/lang/Object;
.source "BaseGroupDetailViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 68
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onGetDeviceInfo$0(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 80
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
    .locals 2

    .line 71
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    const/4 v0, 0x1

    .line 72
    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setSelected(Z)V

    .line 73
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    invoke-virtual {p1, v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isConnect()Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceMacList()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 84
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$1;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_3
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
    .locals 0

    return-void
.end method
