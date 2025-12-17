.class public Lcom/mergbw/android/UserinfoManage;
.super Ljava/lang/Object;
.source "UserinfoManage.java"


# static fields
.field private static instance:Lcom/mergbw/android/UserinfoManage;

.field private static mUserData:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-static {}, Lcom/mergbw/core/utils/AppUtils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "userInfo"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static getInstance()Lcom/mergbw/android/UserinfoManage;
    .locals 1

    .line 21
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->instance:Lcom/mergbw/android/UserinfoManage;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/mergbw/android/UserinfoManage;

    invoke-direct {v0}, Lcom/mergbw/android/UserinfoManage;-><init>()V

    sput-object v0, Lcom/mergbw/android/UserinfoManage;->instance:Lcom/mergbw/android/UserinfoManage;

    .line 24
    :cond_0
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->instance:Lcom/mergbw/android/UserinfoManage;

    return-object v0
.end method

.method private setAvatar(Ljava/lang/String;)V
    .locals 2

    .line 84
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "avatar"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setUsername(Ljava/lang/String;)V
    .locals 2

    .line 62
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "username"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public IsLogin()Z
    .locals 3

    .line 47
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getAudioSensitive()I
    .locals 3

    .line 109
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "AudioSensitive"

    const/16 v2, 0x46

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAvatar()Ljava/lang/String;
    .locals 3

    .line 80
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "avatar"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastAdShowTime()J
    .locals 4

    .line 117
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "LastAdShowTime"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getListType()I
    .locals 3

    .line 91
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "listType"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 3

    .line 69
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "nickname"

    invoke-virtual {p0}, Lcom/mergbw/android/UserinfoManage;->getUsername()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 3

    .line 58
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "username"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWhiteNoiseOffTimeHour()I
    .locals 3

    .line 133
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "WhiteNoiseOffTimeHour"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWhiteNoiseOffTimeMin()I
    .locals 3

    .line 141
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "WhiteNoiseOffTimeMin"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isReceive()Z
    .locals 3

    .line 102
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "receive"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isSetWhiteNoiseTimer()Z
    .locals 3

    .line 125
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    const-string v1, "SetWhiteNoiseTimer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public loginSuccess(Lcom/mergbw/core/network/app/bean/UserResponse;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, v0}, Lcom/mergbw/android/UserinfoManage;->setIsLogin(Z)V

    .line 38
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mergbw/android/UserinfoManage;->setUsername(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/UserinfoManage;->setNickname(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p1}, Lcom/mergbw/core/network/app/bean/UserResponse;->getIcon()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mergbw/android/UserinfoManage;->setAvatar(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioSensitive(I)V
    .locals 2

    .line 113
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "AudioSensitive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsLogin(Z)V
    .locals 2

    .line 51
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setIsReceive(Z)V
    .locals 2

    .line 105
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "receive"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setLastAdShowTime(J)V
    .locals 2

    .line 121
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "LastAdShowTime"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setListType(I)V
    .locals 2

    .line 95
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "listType"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 2

    .line 73
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "nickname"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWhiteNoiseOffTimeHour(I)V
    .locals 2

    .line 137
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WhiteNoiseOffTimeHour"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWhiteNoiseOffTimeMin(I)V
    .locals 2

    .line 145
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "WhiteNoiseOffTimeMin"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setWhiteNoiseTimer(Z)V
    .locals 2

    .line 129
    sget-object v0, Lcom/mergbw/android/UserinfoManage;->mUserData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SetWhiteNoiseTimer"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
