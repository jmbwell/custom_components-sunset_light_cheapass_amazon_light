.class public Lcom/mergbw/android/ui/WelcomeActivity;
.super Lcom/mergbw/core/ui/BaseActivity;
.source "WelcomeActivity.java"


# instance fields
.field private final goToMain:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private needShowAd:Z


# direct methods
.method public static synthetic $r8$lambda$e_biLoj90wSKV3xcg1j8db0uziw(Lcom/mergbw/android/ui/WelcomeActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/mergbw/core/ui/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-boolean v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->needShowAd:Z

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->mHandler:Landroid/os/Handler;

    .line 93
    new-instance v0, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda0;-><init>(Lcom/mergbw/android/ui/WelcomeActivity;)V

    iput-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$002(Lcom/mergbw/android/ui/WelcomeActivity;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/mergbw/android/ui/WelcomeActivity;->needShowAd:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mergbw/android/ui/WelcomeActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mergbw/android/ui/WelcomeActivity;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mergbw/android/ui/WelcomeActivity;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain()V

    return-void
.end method

.method private checkAd()V
    .locals 4

    .line 61
    const-string v0, "checkAd"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getWelcomeShowTime()J

    move-result-wide v0

    .line 64
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/UserinfoManage;->isReceive()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->isShowOpenAdInFirstPage()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 67
    iput-boolean v2, p0, Lcom/mergbw/android/ui/WelcomeActivity;->needShowAd:Z

    .line 68
    invoke-static {}, Lcom/mergbw/android/google/GoogleOpenAdManager;->getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;

    move-result-object v2

    new-instance v3, Lcom/mergbw/android/ui/WelcomeActivity$1;

    invoke-direct {v3, p0}, Lcom/mergbw/android/ui/WelcomeActivity$1;-><init>(Lcom/mergbw/android/ui/WelcomeActivity;)V

    invoke-virtual {v2, p0, v3}, Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;)V

    .line 88
    invoke-direct {p0, v0, v1}, Lcom/mergbw/android/ui/WelcomeActivity;->postGoToMainDelayed(J)V

    :cond_0
    return-void
.end method

.method private checkUser()V
    .locals 2

    .line 47
    const-string v0, "checkUser"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/ui/WelcomeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->gatherConsent(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V

    .line 56
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getWelcomeShowTime()J

    move-result-wide v0

    .line 57
    invoke-direct {p0, v0, v1}, Lcom/mergbw/android/ui/WelcomeActivity;->postGoToMainDelayed(J)V

    return-void
.end method

.method private goToMain()V
    .locals 2

    .line 101
    const-string v0, "goToMain"

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 103
    invoke-static {}, Lcom/mergbw/core/track/TrackManager;->getInstance()Lcom/mergbw/core/track/TrackManager;

    move-result-object v0

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/UserinfoManage;->isReceive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mergbw/core/track/TrackManager;->launcherTrack(Z)V

    .line 104
    invoke-static {}, Lcom/mergbw/android/google/GoogleTrackManager;->getInstance()Lcom/mergbw/android/google/GoogleTrackManager;

    move-result-object v0

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mergbw/android/UserinfoManage;->isReceive()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mergbw/android/google/GoogleTrackManager;->launcherTrack(Z)V

    .line 105
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/UserinfoManage;->isReceive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToFirstCheck()V

    .line 107
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->finish()V

    goto :goto_0

    .line 109
    :cond_0
    iget-boolean v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->needShowAd:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->needShowAd:Z

    .line 111
    invoke-static {}, Lcom/mergbw/android/google/GoogleOpenAdManager;->getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/ui/WelcomeActivity$2;

    invoke-direct {v1, p0}, Lcom/mergbw/android/ui/WelcomeActivity$2;-><init>(Lcom/mergbw/android/ui/WelcomeActivity;)V

    invoke-virtual {v0, p0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;)V

    goto :goto_0

    .line 134
    :cond_1
    invoke-static {}, Lcom/mergbw/android/jump/JumpManager;->getInstance()Lcom/mergbw/android/jump/JumpManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/jump/JumpManager;->jumpToHomePage()V

    .line 135
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->finish()V

    :goto_0
    return-void
.end method

.method private postGoToMainDelayed(J)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mergbw/android/ui/WelcomeActivity;->goToMain:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method synthetic lambda$checkUser$0$com-mergbw-android-ui-WelcomeActivity(Lcom/google/android/ump/FormError;)V
    .locals 2

    .line 0
    if-eqz p1, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkUser consentGatheringComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 53
    invoke-direct {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->checkAd()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/mergbw/core/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/android/databinding/ActivityWelcomeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/mergbw/android/databinding/ActivityWelcomeBinding;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityWelcomeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mergbw/android/ui/WelcomeActivity;->setContentView(Landroid/view/View;)V

    .line 32
    invoke-virtual {p1}, Lcom/mergbw/android/databinding/ActivityWelcomeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mergbw/android/ui/WelcomeActivity;->initViews(Landroid/view/View;)V

    .line 34
    invoke-direct {p0}, Lcom/mergbw/android/ui/WelcomeActivity;->checkUser()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 42
    invoke-super {p0}, Lcom/mergbw/core/ui/BaseActivity;->onDestroy()V

    .line 43
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
