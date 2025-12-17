.class Lcom/mergbw/android/google/GoogleOpenAdManager$3;
.super Lcom/google/android/gms/ads/FullScreenContentCallback;
.source "GoogleOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/google/GoogleOpenAdManager;->showAdIfAvailable(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$onShowAdCompleteListener:Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;


# direct methods
.method constructor <init>(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    iput-object p2, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$onShowAdCompleteListener:Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;

    iput-object p3, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/google/android/gms/ads/FullScreenContentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissedFullScreenContent()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$002(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 149
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    .line 150
    const-string v0, "onAdDismissedFullScreenContent."

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$onShowAdCompleteListener:Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;

    invoke-interface {v0}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdComplete()V

    .line 152
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->canRequestAds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    iget-object v1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$300(Lcom/mergbw/android/google/GoogleOpenAdManager;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdFailedToShowFullScreenContent(Lcom/google/android/gms/ads/AdError;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$002(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 160
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mergbw/android/google/GoogleOpenAdManager;->isShowingAd:Z

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToShowFullScreenContent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$onShowAdCompleteListener:Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;

    invoke-interface {p1}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdFailed()V

    .line 163
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->canRequestAds()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$activity:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$300(Lcom/mergbw/android/google/GoogleOpenAdManager;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onAdShowedFullScreenContent()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$3;->val$onShowAdCompleteListener:Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;

    invoke-interface {v0}, Lcom/mergbw/android/google/GoogleOpenAdManager$OnShowAdCompleteListener;->onShowAdSuccess()V

    .line 171
    const-string v0, "onAdShowedFullScreenContent."

    invoke-static {v0}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/mergbw/android/UserinfoManage;->getInstance()Lcom/mergbw/android/UserinfoManage;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/mergbw/android/UserinfoManage;->setLastAdShowTime(J)V

    return-void
.end method
