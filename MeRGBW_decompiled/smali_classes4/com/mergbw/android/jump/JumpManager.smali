.class public Lcom/mergbw/android/jump/JumpManager;
.super Ljava/lang/Object;
.source "JumpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/jump/JumpManager$JumpManagerFactory;,
        Lcom/mergbw/android/jump/JumpManager$Builder;,
        Lcom/mergbw/android/jump/JumpManager$NoTargetClassException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mergbw/android/jump/JumpManager$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;-><init>()V

    return-void
.end method

.method private build()Lcom/mergbw/android/jump/JumpManager$Builder;
    .locals 2

    .line 128
    new-instance v0, Lcom/mergbw/android/jump/JumpManager$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;-><init>(Lcom/mergbw/android/jump/JumpManager$1;)V

    return-object v0
.end method

.method public static getInstance()Lcom/mergbw/android/jump/JumpManager;
    .locals 1

    .line 22
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager$JumpManagerFactory;->access$000()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public jumpToAbout()V
    .locals 2

    .line 105
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/about_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToAddDevice()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/add_device"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToAgreementPage(I)V
    .locals 2

    .line 109
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 110
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/agreement_page"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToDeviceAlarm(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 58
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 59
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/device_alarm"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToDeviceDetail(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 47
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/device_detail"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToDeviceInfo(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 52
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 53
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/device_info"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToDeviceResume(Lcom/mergbw/core/database/bean/UpgradeErrorRecordBean;)V
    .locals 2

    .line 69
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 70
    const-string v1, "errorRecord"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 71
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/resume_page"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToDeviceUpgrade(Lcom/mergbw/core/database/bean/DeviceInfoBean;)V
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 65
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/upgrade_page"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToFactoryArea(Lcom/mergbw/core/network/factory/bean/FactoryInfoBean;)V
    .locals 2

    .line 115
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v1, "factoryInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 117
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/factory_area_page"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToFirstCheck()V
    .locals 2

    .line 37
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/first_check_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToGroupDetail(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2

    .line 81
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 82
    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 83
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/group_detail"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToGroupDetail2(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2

    .line 87
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 89
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/group_detail_2"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToGroupSetting(Lcom/mergbw/core/database/bean/GroupItemBean;)V
    .locals 2

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 76
    const-string v1, "group"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 77
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string v1, "/app/group_setting"

    invoke-virtual {p1, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToHomePage()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/home_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToLogin()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/login_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToRegister()V
    .locals 2

    .line 97
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/register_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToReset()V
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    const-string v1, "/app/reset_page"

    invoke-virtual {v0, v1}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method

.method public jumpToWebViewPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    const-string v1, "title"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string p1, "url"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-direct {p0}, Lcom/mergbw/android/jump/JumpManager;->build()Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    const-string p2, "/app/web_view_page"

    invoke-virtual {p1, p2}, Lcom/mergbw/android/jump/JumpManager$Builder;->targetClass(Ljava/lang/String;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/mergbw/android/jump/JumpManager$Builder;->bundle(Landroid/os/Bundle;)Lcom/mergbw/android/jump/JumpManager$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/jump/JumpManager$Builder;->jump()V

    return-void
.end method
