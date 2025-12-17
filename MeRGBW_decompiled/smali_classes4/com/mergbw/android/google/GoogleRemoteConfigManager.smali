.class public Lcom/mergbw/android/google/GoogleRemoteConfigManager;
.super Ljava/lang/Object;
.source "GoogleRemoteConfigManager.java"


# static fields
.field private static final SHOW_BANNER_AD_KEY:Ljava/lang/String; = "showBannerAd"

.field private static final SHOW_OPEN_AD_IN_FIRST_PAGE_KEY:Ljava/lang/String; = "showOpenAdInFirstPage"

.field private static final SHOW_OPEN_AD_KEY:Ljava/lang/String; = "showOpenAd"

.field private static final SHOW_OPEN_AD_TIME_LIMIT_KEY:Ljava/lang/String; = "showAdLimit"

.field private static final WELCOME_SHOW_TIME_KEY:Ljava/lang/String; = "welcomeShowTime"

.field private static instance:Lcom/mergbw/android/google/GoogleRemoteConfigManager;


# instance fields
.field private mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mergbw/android/google/GoogleRemoteConfigManager;)Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    return-object p0
.end method

.method public static getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->instance:Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    invoke-direct {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;-><init>()V

    sput-object v0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->instance:Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    .line 28
    :cond_0
    sget-object v0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->instance:Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    return-object v0
.end method

.method static synthetic lambda$init$0(Lcom/google/android/gms/tasks/Task;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GoogleRemoteConfigManager fetchAndActivate updated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    const-string p0, "GoogleRemoteConfigManager fetchAndActivate error!"

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getShowAdHourLimit()I
    .locals 3

    .line 108
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    .line 109
    const-string v1, "showAdLimit"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-int v0, v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleRemoteConfigManager showAdHourLimit: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method public getWelcomeShowTime()J
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    .line 118
    const-string v1, "welcomeShowTime"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "GoogleRemoteConfigManager welcomeShowTime: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-wide v0

    :cond_0
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method public init()V
    .locals 2

    .line 34
    invoke-static {}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getInstance()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    .line 41
    new-instance v0, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;

    invoke-direct {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;-><init>()V

    .line 43
    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings$Builder;->build()Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;

    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v1, v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setConfigSettingsAsync(Lcom/google/firebase/remoteconfig/FirebaseRemoteConfigSettings;)Lcom/google/android/gms/tasks/Task;

    .line 52
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    sget v1, Lcom/mergbw/android/R$xml;->remote_config_defaults:I

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->setDefaultsAsync(I)Lcom/google/android/gms/tasks/Task;

    .line 56
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    new-instance v1, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager$1;-><init>(Lcom/mergbw/android/google/GoogleRemoteConfigManager;)V

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->addOnConfigUpdateListener(Lcom/google/firebase/remoteconfig/ConfigUpdateListener;)Lcom/google/firebase/remoteconfig/ConfigUpdateListenerRegistration;

    .line 78
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->fetchAndActivate()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/google/GoogleRemoteConfigManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/mergbw/android/google/GoogleRemoteConfigManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public isShowBannerAd()Z
    .locals 3

    .line 126
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    .line 127
    const-string v1, "showBannerAd"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleRemoteConfigManager isShowBannerAd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowOpenAd()Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    .line 91
    const-string v1, "showOpenAd"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleRemoteConfigManager isShowOpenAd: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowOpenAdInFirstPage()Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->mFirebaseRemoteConfig:Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;

    if-eqz v0, :cond_0

    .line 100
    const-string v1, "showOpenAdInFirstPage"

    invoke-virtual {v0, v1}, Lcom/google/firebase/remoteconfig/FirebaseRemoteConfig;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleRemoteConfigManager isShowOpenAdInFirstPage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
