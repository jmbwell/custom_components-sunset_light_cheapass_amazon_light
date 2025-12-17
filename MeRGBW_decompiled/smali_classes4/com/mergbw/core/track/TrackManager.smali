.class public Lcom/mergbw/core/track/TrackManager;
.super Ljava/lang/Object;
.source "TrackManager.java"


# static fields
.field private static instance:Lcom/mergbw/core/track/TrackManager;


# instance fields
.field private final isTrack:Z

.field private final mPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mergbw/core/track/TrackManager;->isTrack:Z

    .line 36
    new-instance v0, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;-><init>(Lcom/mergbw/core/network/app/NetworkCallback;)V

    iput-object v0, p0, Lcom/mergbw/core/track/TrackManager;->mPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    return-void
.end method

.method private doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "trackInfo"
        }
    .end annotation

    return-void
.end method

.method public static getInstance()Lcom/mergbw/core/track/TrackManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/mergbw/core/track/TrackManager;->instance:Lcom/mergbw/core/track/TrackManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/mergbw/core/track/TrackManager;

    invoke-direct {v0}, Lcom/mergbw/core/track/TrackManager;-><init>()V

    sput-object v0, Lcom/mergbw/core/track/TrackManager;->instance:Lcom/mergbw/core/track/TrackManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/mergbw/core/track/TrackManager;->instance:Lcom/mergbw/core/track/TrackManager;

    return-object v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 67
    :try_start_0
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x4000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;
    .locals 4

    .line 51
    new-instance v0, Lcom/mergbw/core/track/bean/TrackInfoBean;

    invoke-direct {v0}, Lcom/mergbw/core/track/bean/TrackInfoBean;-><init>()V

    .line 52
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setUserID(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPlatform(I)V

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setDeviceModel(Ljava/lang/String;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setSystemVersion(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setAppVersion(Ljava/lang/String;)V

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic lambda$doTrack$0(Lcom/mergbw/core/track/bean/TrackInfoBean;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/mergbw/core/track/TrackManager;->mPresenter:Lcom/mergbw/core/network/app/presenter/UserDataPresenter;

    invoke-virtual {v0, p1}, Lcom/mergbw/core/network/app/presenter/UserDataPresenter;->track(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method


# virtual methods
.method public addDeviceTrack(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deviceInfo"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 105
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->ADD_DEVICE_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 106
    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 107
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 108
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DeviceType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "DeviceModel"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FactoryID"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "DeviceName"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v2, "DeviceAlias"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "DeviceMac"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 115
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public alarmSettingTrack()V
    .locals 2

    .line 143
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 145
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->ALARM_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 146
    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 147
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "deviceInfo",
            "value"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 120
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 121
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 123
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 125
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "DeviceType"

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string p1, "DeviceModel"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "FactoryID"

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string p1, "DeviceMac"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 130
    const-string p1, "DIYType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 132
    const-string p1, "MicType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 134
    const-string p1, "Action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 136
    const-string p1, "ItemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 139
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "deviceInfo",
            "LedNum"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 153
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 155
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 156
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DeviceType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v2, "DeviceMac"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "FactoryID"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 160
    const-string p1, "LedNum"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "groupInfo",
            "power"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 168
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 169
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 171
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 173
    const-string p1, "GroupName"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "GroupType"

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceMacList()[Ljava/lang/String;

    move-result-object p1

    const-string p3, "DeviceNum"

    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceMacList()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 181
    const-string p1, "Power"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :cond_2
    :goto_0
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 184
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "eventId",
            "groupInfo"
        }
    .end annotation

    .line 188
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 189
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 190
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    .line 191
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 192
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 193
    const-string v1, "GroupName"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GroupType"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "DeviceNum"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public homeClickTrack(III)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "eventId",
            "AddEntry",
            "AgreementType"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 87
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->MAIN_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    if-eqz p2, :cond_0

    .line 90
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 91
    const-string v1, "AddEntry"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 95
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 96
    const-string p2, "AgreementType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setData(Ljava/lang/String;)V

    .line 99
    :cond_1
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method

.method public launcherTrack(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first"
        }
    .end annotation

    .line 77
    invoke-direct {p0}, Lcom/mergbw/core/track/TrackManager;->getTrackInfo()Lcom/mergbw/core/track/bean/TrackInfoBean;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->APP_LAUNCHER:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventType(I)V

    .line 79
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->APPLICATION:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setPage(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 80
    :goto_0
    invoke-virtual {v0, p1}, Lcom/mergbw/core/track/bean/TrackInfoBean;->setEventId(I)V

    .line 81
    invoke-direct {p0, v0}, Lcom/mergbw/core/track/TrackManager;->doTrack(Lcom/mergbw/core/track/bean/TrackInfoBean;)V

    return-void
.end method
