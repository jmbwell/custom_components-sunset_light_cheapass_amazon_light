.class Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;
.super Ljava/lang/Object;
.source "GroupSettingViewModel.java"

# interfaces
.implements Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;


# direct methods
.method constructor <init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 87
    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 88
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 92
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 95
    iget-object v2, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v2}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$300(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v2

    if-nez v2, :cond_3

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 97
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    goto :goto_1

    .line 99
    :cond_2
    new-instance v0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-direct {v0}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;-><init>()V

    .line 100
    sget v2, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->CAN_ADD_DEVICE:I

    invoke-virtual {v0, v2}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setType(I)V

    .line 101
    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setDeviceList(Ljava/util/List;)V

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$400(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 106
    :cond_3
    new-instance v2, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-direct {v2}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;-><init>()V

    .line 107
    sget v3, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->ADDED_DEVICE:I

    invoke-virtual {v2, v3}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setType(I)V

    .line 108
    iget-object v3, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v3}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$300(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setDeviceList(Ljava/util/List;)V

    .line 109
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 113
    iget-object v4, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v4}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$300(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 114
    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 115
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 119
    :cond_6
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 120
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 124
    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v4

    iget-object v5, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {v5}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$300(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Lcom/mergbw/core/database/bean/GroupItemBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v5

    if-eq v4, v5, :cond_7

    .line 125
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 128
    :cond_8
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 131
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mergbw/core/ble/RGBDeviceManager;->isConnected(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setConnect(Z)V

    goto :goto_4

    .line 133
    :cond_9
    new-instance v0, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    invoke-direct {v0}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;-><init>()V

    .line 134
    sget v2, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->CAN_ADD_DEVICE:I

    invoke-virtual {v0, v2}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setType(I)V

    .line 135
    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->setDeviceList(Ljava/util/List;)V

    .line 136
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;->this$0:Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;

    invoke-static {p1}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->access$400(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :goto_5
    return-void
.end method

.method public onUpdateSuccess()V
    .locals 0

    return-void
.end method
