.class public Lcom/mergbw/android/google/GoogleOpenAdManager;
.super Ljava/lang/Object;
.source "GoogleOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;
    }
.end annotation


# static fields
.field private static final AD_UNIT_ID:Ljava/lang/String; = "ca-app-pub-1990806801257609/2210355623"

.field private static instance:Lcom/mergbw/android/google/GoogleOpenAdManager;


# instance fields
.field private appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

.field private isLoadingAd:Z

.field public isShowingAd:Z

.field private loadTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isLoadingAd:Z

    .line 29
    iput-boolean v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->loadTime:J

    return-void
.end method

.method static synthetic access$002(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mergbw/android/google/GoogleOpenAdManager;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isLoadingAd:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mergbw/android/google/GoogleOpenAdManager;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->loadTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/mergbw/android/google/GoogleOpenAdManager;Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->loadAd(Landroid/content/Context;)V

    return-void
.end method

.method public static getInstance()Lcom/mergbw/android/google/GoogleOpenAdManager;
    .locals 1

    .line 37
    sget-object v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->instance:Lcom/mergbw/android/google/GoogleOpenAdManager;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/mergbw/android/google/GoogleOpenAdManager;

    invoke-direct {v0}, Lcom/mergbw/android/google/GoogleOpenAdManager;-><init>()V

    sput-object v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->instance:Lcom/mergbw/android/google/GoogleOpenAdManager;

    .line 40
    :cond_0
    sget-object v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->instance:Lcom/mergbw/android/google/GoogleOpenAdManager;

    return-object v0
.end method

.method private isAdAvailable()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->wasLoadTimeLessThanNHoursAgo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->showTimeLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$initSdk$0(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSdk onInitializationComplete :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$initSdk$1(Landroid/content/Context;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/mergbw/android/google/GoogleOpenAdManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/mergbw/android/google/GoogleOpenAdManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    return-void
.end method

.method private loadAd(Landroid/content/Context;)V
    .locals 3

    .line 55
    iget-boolean v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isLoadingAd:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 59
    iput-boolean v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isLoadingAd:Z

    .line 60
    new-instance v0, Lcom/google/android/gms/ads/AdRequest$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest$Builder;->build()Lcom/google/android/gms/ads/AdRequest;

    move-result-object v0

    .line 61
    new-instance v1, Lcom/mergbw/android/google/GoogleOpenAdManager$1;

    invoke-direct {v1, p0}, Lcom/mergbw/android/google/GoogleOpenAdManager$1;-><init>(Lcom/mergbw/android/google/GoogleOpenAdManager;)V

    const-string v2, "ca-app-pub-1990806801257609/2210355623"

    invoke-static {p1, v2, v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->load(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/AdRequest;Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;)V

    return-void
.end method

.method private showTimeLimit()Z
    .locals 6

    .line 91
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/UserinfoManage;->getLastAdShowTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 93
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getShowAdHourLimit()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private wasLoadTimeLessThanNHoursAgo()Z
    .locals 4

    .line 80
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->loadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xdbba00

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public initSdk(Landroid/content/Context;)V
    .locals 2

    .line 50
    invoke-static {}, Lcom/mergbw/core/utils/ThreadManager;->getShortPool()Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;

    move-result-object v0

    new-instance v1, Lcom/mergbw/android/google/GoogleOpenAdManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/mergbw/core/utils/ThreadManager$ThreadPoolProxy;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public showAdIfAvailable(Landroid/app/Activity;)V
    .locals 1

    .line 102
    new-instance v0, Lcom/mergbw/android/google/GoogleOpenAdManager$2;

    invoke-direct {v0, p0}, Lcom/mergbw/android/google/GoogleOpenAdManager$2;-><init>(Lcom/mergbw/android/google/GoogleOpenAdManager;)V

    invoke-virtual {p0, p1, v0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;)V

    return-void
.end method

.method public showAdIfAvailable(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;)V
    .locals 2

    .line 121
    invoke-static {}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->getInstance()Lcom/mergbw/android/google/GoogleRemoteConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleRemoteConfigManager;->isShowOpenAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    const-string p1, "can not show open ad"

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 123
    invoke-interface {p2}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdFailed()V

    return-void

    .line 127
    :cond_0
    iget-boolean v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    if-eqz v0, :cond_1

    .line 128
    const-string p1, "The app open ad is already showing."

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 129
    invoke-interface {p2}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdFailed()V

    return-void

    .line 133
    :cond_1
    invoke-direct {p0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->isAdAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 134
    const-string v0, "The app open ad is not ready yet."

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 135
    invoke-interface {p2}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdFailed()V

    .line 136
    invoke-static {p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->canRequestAds()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 137
    invoke-direct {p0, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->loadAd(Landroid/content/Context;)V

    :cond_2
    return-void

    .line 142
    :cond_3
    const-string v0, "Will show ad."

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    new-instance v1, Lcom/mergbw/android/google/GoogleOpenAdManager$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager$3;-><init>(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->setFullScreenContentCallback(Lcom/google/android/gms/ads/FullScreenContentCallback;)V

    const/4 p2, 0x1

    .line 176
    iput-boolean p2, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    .line 177
    iget-object p2, p0, Lcom/mergbw/android/google/GoogleOpenAdManager;->appOpenAd:Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->show(Landroid/app/Activity;)V

    return-void
.end method
