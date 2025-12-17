.class public Lcom/mergbw/android/google/GoogleTrackManager;
.super Ljava/lang/Object;
.source "GoogleTrackManager.java"


# static fields
.field private static instance:Lcom/mergbw/android/google/GoogleTrackManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private doTrack(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 27
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/analytics/FirebaseAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/firebase/analytics/FirebaseAnalytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/analytics/FirebaseAnalytics;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getInstance()Lcom/mergbw/android/google/GoogleTrackManager;
    .locals 1

    .line 20
    sget-object v0, Lcom/mergbw/android/google/GoogleTrackManager;->instance:Lcom/mergbw/android/google/GoogleTrackManager;

    if-nez v0, :cond_0

    .line 21
    new-instance v0, Lcom/mergbw/android/google/GoogleTrackManager;

    invoke-direct {v0}, Lcom/mergbw/android/google/GoogleTrackManager;-><init>()V

    sput-object v0, Lcom/mergbw/android/google/GoogleTrackManager;->instance:Lcom/mergbw/android/google/GoogleTrackManager;

    .line 23
    :cond_0
    sget-object v0, Lcom/mergbw/android/google/GoogleTrackManager;->instance:Lcom/mergbw/android/google/GoogleTrackManager;

    return-object v0
.end method

.method private getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 3

    .line 47
    :try_start_0
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 48
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

    .line 51
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getTrackInfo()Landroid/os/Bundle;
    .locals 4

    .line 31
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 32
    const-string v1, "userID"

    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v1, "platform"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 34
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

    const-string v2, "deviceModel"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "systemVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v1, "appVersion"

    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private getVersionName()Ljava/lang/String;
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addDeviceTrack(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 4

    .line 81
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 83
    const-string v1, "EventId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 84
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 85
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DeviceType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v2, "DeviceModel"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceModel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "FactoryID"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v2, "DeviceName"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v2, "DeviceAlias"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getAliasName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v2, "DeviceMac"

    invoke-virtual {p1}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string p1, "Data"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->ADD_DEVICE_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public alarmSettingTrack()V
    .locals 3

    .line 118
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v1, "EventId"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$Page;->ALARM_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object v1, v1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public deviceDetailTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V
    .locals 3

    .line 96
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 98
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 99
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    .line 101
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "DeviceType"

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string p1, "DeviceMac"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "FactoryID"

    invoke-virtual {v1, p2, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 105
    const-string p1, "DIYType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 107
    const-string p1, "MicType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    if-ne p1, p2, :cond_3

    .line 109
    const-string p1, "Action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    .line 111
    const-string p1, "ItemType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    :cond_4
    :goto_0
    const-string p1, "Data"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public deviceSettingTrack(ILcom/mergbw/core/database/bean/DeviceInfoBean;I)V
    .locals 4

    .line 125
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 126
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 128
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "DeviceType"

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v2, "DeviceMac"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getDeviceMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/DeviceInfoBean;->getFactoryID()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v2, "FactoryID"

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 133
    const-string p1, "LedNum"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_0
    const-string p1, "Data"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->DEVICE_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public groupDetailTrack(ILcom/mergbw/core/database/bean/GroupItemBean;I)V
    .locals 3

    .line 140
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 141
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 142
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 145
    const-string p1, "GroupName"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "GroupType"

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceMacList()[Ljava/lang/String;

    move-result-object p1

    const-string p3, "DeviceNum"

    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceMacList()[Ljava/lang/String;

    move-result-object p1

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 150
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p3, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 153
    const-string p1, "Power"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_2
    :goto_0
    const-string p1, "Data"

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_DETAIL_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public groupSettingTrack(ILcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 161
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 163
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 164
    const-string v1, "GroupName"

    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getGroupName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "GroupType"

    invoke-virtual {p1, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {p2}, Lcom/mergbw/core/database/bean/GroupItemBean;->getDeviceList()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "DeviceNum"

    invoke-virtual {p1, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string p2, "Data"

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->GROUP_SETTING_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public homeClickTrack(III)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 65
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->PAGE_ITEM_CLICK:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 66
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 67
    const-string p1, "Data"

    if-eqz p2, :cond_0

    .line 68
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 69
    const-string v2, "AddEntry"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 73
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 74
    const-string v1, "AgreementType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    invoke-static {p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_1
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->MAIN_PAGE:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public launcherTrack(Z)V
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleTrackManager;->getTrackInfo()Landroid/os/Bundle;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/mergbw/core/track/TrackConstants$EventType;->APP_LAUNCHER:Lcom/mergbw/core/track/TrackConstants$EventType;

    iget v1, v1, Lcom/mergbw/core/track/TrackConstants$EventType;->value:I

    const-string v2, "EventType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 59
    :goto_0
    const-string v1, "EventId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    sget-object p1, Lcom/mergbw/core/track/TrackConstants$Page;->APPLICATION:Lcom/mergbw/core/track/TrackConstants$Page;

    iget-object p1, p1, Lcom/mergbw/core/track/TrackConstants$Page;->value:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/mergbw/android/google/GoogleTrackManager;->doTrack(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
