.class Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;
.super Lcom/mergbw/core/ble/BleCallback;
.source "HomeViewModel.java"


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

    .line 85
    iput-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-direct {p0}, Lcom/mergbw/core/ble/BleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlreadyConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 89
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 90
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 91
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->getMtu(Lcom/mergbw/core/database/bean/DeviceInfoBean;)I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setMtu(I)V

    .line 92
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$200(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 96
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onConnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 102
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 103
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 107
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onDisconnected(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 113
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x0

    .line 114
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    .line 115
    invoke-virtual {v1, p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setOpen(Z)V

    .line 119
    :cond_1
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMtuChanged(Lcom/clj/fastble/data/BleDevice;ZI)V
    .locals 3

    .line 172
    iget-object p2, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p2}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 173
    invoke-virtual {v0}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v0, p3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setMtu(I)V

    :cond_1
    return-void
.end method

.method public onNotifyData(Lcom/clj/fastble/data/BleDevice;B[B)V
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 135
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v0, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_7

    .line 137
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v4, 0x4

    if-eq v0, v3, :cond_3

    .line 138
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v5, 0x6

    if-eq v0, v5, :cond_2

    .line 147
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_6

    .line 148
    :cond_2
    aget-byte v0, p3, v4

    if-nez v0, :cond_6

    .line 149
    invoke-virtual {v1, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 150
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$300(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_1

    .line 139
    :cond_3
    :goto_0
    aget-byte v0, p3, v4

    if-ne v0, v3, :cond_4

    .line 140
    invoke-virtual {v1, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 141
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$300(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    const/4 v4, 0x3

    if-ne v0, v4, :cond_6

    .line 144
    :cond_5
    invoke-virtual {v1, v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setBound(Z)V

    .line 153
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    iget-object v4, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v4}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_7
    if-nez p2, :cond_8

    .line 157
    invoke-static {v1, p3}, Lcom/mergbw/core/utils/ViewDataUtils;->analyseSyncData(Lcom/mergbw/core/database/bean/DeviceInfoBean;[B)V

    .line 158
    iget-object p3, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p3}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$100(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p3

    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_8
    if-ne p2, v3, :cond_9

    .line 163
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {v2, p3}, Lcom/mergbw/core/ble/CommandUtils;->getCommand(B[B)[B

    move-result-object p3

    invoke-virtual {p2, p1, p3}, Lcom/mergbw/core/ble/RGBDeviceManager;->sendCommandData(Lcom/clj/fastble/data/BleDevice;[B)V

    :cond_9
    return-void
.end method

.method public onNotifySuccess(Lcom/clj/fastble/data/BleDevice;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {v0}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$000(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 125
    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/clj/fastble/data/BleDevice;->getMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    iget-object p1, p0, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel$2;->this$0:Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;

    invoke-static {p1, v1}, Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;->access$200(Lcom/mergbw/android/ui/home/viewModel/HomeViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    :cond_1
    return-void
.end method
