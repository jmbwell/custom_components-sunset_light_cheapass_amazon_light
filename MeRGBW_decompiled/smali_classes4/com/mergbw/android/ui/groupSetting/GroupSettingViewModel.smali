.class public Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "GroupSettingViewModel.java"


# instance fields
.field private final mAddResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mCanDeviceListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDeleteResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

.field private final mDeviceListData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

.field private mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

.field private final mGroupInfoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpdateResultData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 39
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mCanDeviceListData:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    .line 45
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mUpdateResultData:Landroidx/lifecycle/MutableLiveData;

    .line 49
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance p1, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$1;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IGroupDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    .line 76
    new-instance p1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel$2;-><init>(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mUpdateResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Lcom/mergbw/core/database/bean/GroupItemBean;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method


# virtual methods
.method public addGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;)V"
        }
    .end annotation

    .line 193
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    .line 195
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getType()I

    move-result v2

    sget v3, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->ADDED_DEVICE:I

    if-ne v2, v3, :cond_1

    .line 196
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 198
    :cond_1
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 199
    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    :cond_3
    new-instance p2, Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-direct {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;-><init>()V

    .line 207
    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupName(Ljava/lang/String;)V

    .line 208
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_4

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceType(I)V

    goto :goto_2

    .line 211
    :cond_4
    invoke-virtual {p2, v2}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDeviceType(I)V

    .line 213
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    if-nez v1, :cond_5

    .line 216
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_4

    .line 218
    :cond_5
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v3}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 221
    :cond_6
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 222
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->addGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    .line 223
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/mergbw/core/track/TrackManager;->groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V

    .line 224
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/mergbw/android/google/GoogleTrackManager;->groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public deleteGroup()V
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->deleteGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    .line 229
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/mergbw/core/track/TrackManager;->groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V

    .line 230
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {v0, v2, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V

    return-void
.end method

.method public getGroupInfo()Lcom/mergbw/core/database/bean/GroupItemBean;
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    return-object v0
.end method

.method public initData(Landroid/content/Intent;)V
    .locals 1

    .line 183
    const-string v0, "group"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/mergbw/core/database/bean/GroupItemBean;

    iput-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    .line 184
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeviceDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->getDeviceList()V

    return-void
.end method

.method public setAddResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mAddResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setCanDeviceListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;>;)V"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mCanDeviceListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDeleteResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeleteResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDeviceListDataObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;>;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mDeviceListData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setGroupInfoObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/mergbw/core/database/bean/GroupItemBean;",
            ">;)V"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfoData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setUpdateResultObserver(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mUpdateResultData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/MutableLiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public updateGroup(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;",
            ">;)V"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    if-eqz v0, :cond_6

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;

    .line 237
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getType()I

    move-result v2

    sget v3, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->ADDED_DEVICE:I

    if-ne v2, v3, :cond_1

    .line 238
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 240
    :cond_1
    invoke-virtual {v1}, Lcom/mergbw/android/ui/groupSetting/bean/DeviceGroupBean;->getDeviceList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 241
    invoke-virtual {v2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->isSelected()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 248
    :cond_3
    iget-object p2, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setGroupName(Ljava/lang/String;)V

    .line 249
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    .line 250
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_5

    if-nez p2, :cond_4

    .line 252
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 254
    :cond_4
    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mergbw/core/database/bean/DeviceInfoBean;

    invoke-virtual {v1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 257
    :cond_5
    iget-object p2, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/mergbw/core/database/bean/GroupItemBean;->setDevices(Ljava/lang/String;)V

    .line 258
    iget-object p1, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupDatabasePresenter:Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;

    iget-object p2, p0, Lcom/mergbw/android/ui/groupSetting/GroupSettingViewModel;->mGroupInfo:Lcom/mergbw/core/database/bean/GroupItemBean;

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/presenter/GroupDatabasePresenter;->updateGroup(Lcom/mergbw/core/database/bean/GroupItemBean;)V

    :cond_6
    return-void
.end method
