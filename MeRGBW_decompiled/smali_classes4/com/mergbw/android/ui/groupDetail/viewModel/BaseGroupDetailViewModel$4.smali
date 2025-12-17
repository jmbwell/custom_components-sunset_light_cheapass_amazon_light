.class Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;
.super Lcom/mergbw/core/ble/BleCallback;
.source "BaseGroupDetailViewModel.java"


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

    .line 159
    iput-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 162
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 164
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 165
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 166
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 174
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 176
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    .line 177
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 178
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onConnectedFailed(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 188
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 189
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 190
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnecting(Z)V

    .line 191
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 201
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 202
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 203
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 204
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object v0, v0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mCurrentGroup:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 214
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 p1, 0xe

    if-ne p2, p1, :cond_6

    .line 216
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    const/4 v0, 0x4

    const/4 v2, 0x1

    if-ne p1, v2, :cond_4

    .line 217
    aget-byte p1, p3, v0

    if-ne p1, v2, :cond_2

    .line 218
    invoke-virtual {v1, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_3
    const/4 p1, 0x0

    .line 221
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    goto :goto_0

    .line 223
    :cond_4
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_5

    .line 224
    aget-byte p1, p3, v0

    if-nez p1, :cond_5

    .line 225
    invoke-virtual {v1, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 228
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_6
    if-nez p2, :cond_7

    .line 232
    invoke-static {v1, p3}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 233
    iget-object p1, p0, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel$4;->this$0:Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;

    iget-object p1, p1, Lcom/mergbw/android/ui/groupDetail/viewModel/BaseGroupDetailViewModel;->mSingleDeviceInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_7
    :goto_1
    return-void
.end method
