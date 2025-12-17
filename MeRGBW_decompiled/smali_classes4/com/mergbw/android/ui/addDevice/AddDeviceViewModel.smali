.class public Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "AddDeviceViewModel.java"


# instance fields
.field private mAddDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

.field private mAddedDevice:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

.field private final mDeviceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 53
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mDeviceList:Ljava/util/List;

    .line 54
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object p1

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$1;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)V

    const-string v1, "AddDeviceViewModel"

    invoke-virtual {p1, v1, v0}, Lcom/mergbw/core/ble/RGBDeviceManager;->setCallback(Ljava/lang/String;Lcom/mergbw/core/ble/BleCallback;)V

    .line 108
    new-instance p1, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    new-instance v0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$2;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)V

    invoke-direct {p1, v0}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;-><init>(Lcom/mergbw/core/database/presenter/IDeviceDatabaseListener;)V

    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    .line 137
    invoke-virtual {p1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->getDeviceList()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/core/database/bean/DeviceInfoBean;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mAddDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mView:Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mAddedDevice:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$202(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mAddedDevice:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)Ljava/util/List;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mDeviceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;[B)Ljava/util/List;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->analyseCastData([B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;Lcom/mergbw/core/database/bean/DeviceInfoBean;Ljava/util/List;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->analyseFactoryInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;Ljava/util/List;)V

    return-void
.end method

.method private analyseCastData([B)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/mergbw/core/ble/CastDataBean;",
            ">;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 257
    :goto_0
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 258
    aget-byte v3, p1, v2

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    :cond_0
    new-instance v4, Lcom/mergbw/core/ble/CastDataBean;

    invoke-direct {v4}, Lcom/mergbw/core/ble/CastDataBean;-><init>()V

    .line 264
    invoke-virtual {v4, v3}, Lcom/mergbw/core/ble/CastDataBean;->setLen(I)V

    add-int/lit8 v5, v2, 0x1

    .line 265
    aget-byte v5, p1, v5

    invoke-virtual {v4, v5}, Lcom/mergbw/core/ble/CastDataBean;->setType(I)V

    add-int/lit8 v5, v3, -0x1

    .line 266
    new-array v6, v5, [B

    invoke-virtual {v4, v6}, Lcom/mergbw/core/ble/CastDataBean;->setData([B)V

    add-int/lit8 v6, v2, 0x2

    .line 267
    invoke-virtual {v4}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v7

    invoke-static {p1, v6, v7, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 269
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private analyseFactoryInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mergbw/core/database/bean/DeviceInfoBean;",
            "Ljava/util/List<",
            "Lcom/mergbw/core/ble/CastDataBean;",
            ">;)V"
        }
    .end annotation

    .line 225
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mergbw/core/ble/CastDataBean;

    .line 226
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getType()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 228
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object p2

    array-length p2, p2

    const/16 v1, 0xb

    const/16 v2, 0xa

    if-lt p2, v1, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object p2

    aget-byte p2, p2, v2

    and-int/lit16 p2, p2, 0xff

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceType(I)V

    .line 232
    :cond_1
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object p2

    array-length p2, p2

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-lt p2, v3, :cond_2

    .line 233
    new-array p2, v2, [B

    .line 234
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v3

    invoke-static {v3, v1, p2, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p2, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 238
    :cond_2
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object p2

    array-length p2, p2

    const/16 v1, 0x1b

    if-lt p2, v1, :cond_3

    const/4 p2, 0x4

    .line 239
    new-array v1, p2, [B

    .line 240
    invoke-virtual {v0}, Lcom/mergbw/core/ble/CastDataBean;->getData()[B

    move-result-object v0

    const/16 v2, 0x17

    invoke-static {v0, v2, v1, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 241
    invoke-static {v1}, Lcom/mergbw/core/utils/StringUtils;->bytesToInt([B)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->setFactoryID(I)V

    :cond_3
    return-void
.end method

.method static synthetic lambda$connectDevice$0(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 214
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mergbw/core/ble/RGBDeviceManager;->connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method


# virtual methods
.method public addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mDatabasePresenter:Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/database/presenter/DeviceDatabasePresenter;->addDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 220
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/TrackManager;->addDeviceTrack(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    .line 221
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mergbw/android/google/GoogleTrackManager;->addDeviceTrack(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    return-void
.end method

.method public cancelScan()V
    .locals 2

    .line 207
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->getScanSate()Lcom/clj/fastble/data/BleScanState;

    move-result-object v0

    sget-object v1, Lcom/clj/fastble/data/BleScanState;->STATE_SCANNING:Lcom/clj/fastble/data/BleScanState;

    if-ne v0, v1, :cond_0

    .line 208
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clj/fastble/BleManager;->cancelScan()V

    :cond_0
    return-void
.end method

.method public connectDevice(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 213
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mAddDevice:Lcom/mergbw/core/database/bean/DeviceInfoBean;

    .line 214
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCleared()V
    .locals 2

    .line 142
    invoke-super {p0}, Landroidx/lifecycle/AndroidViewModel;->onCleared()V

    .line 143
    invoke-static {}, Lcom/mergbw/core/ble/RGBDeviceManager;->getInstance()Lcom/mergbw/core/ble/RGBDeviceManager;

    move-result-object v0

    const-string v1, "AddDeviceViewModel"

    invoke-virtual {v0, v1}, Lcom/mergbw/core/ble/RGBDeviceManager;->removeCallback(Ljava/lang/String;)V

    return-void
.end method

.method public scanDevice()V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mDeviceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 152
    new-instance v0, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;

    invoke-direct {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/clj/fastble/scan/BleScanRuleConfig$Builder;->build()Lcom/clj/fastble/scan/BleScanRuleConfig;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/clj/fastble/BleManager;->initScanRule(Lcom/clj/fastble/scan/BleScanRuleConfig;)V

    .line 154
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel$3;-><init>(Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;)V

    invoke-virtual {v0, v1}, Lcom/clj/fastble/BleManager;->scan(Lcom/clj/fastble/callback/BleScanCallback;)V

    return-void
.end method

.method public setViewListener(Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/mergbw/android/ui/addDevice/AddDeviceViewModel;->mView:Lcom/mergbw/android/ui/addDevice/AddDeviceInterView;

    return-void
.end method
