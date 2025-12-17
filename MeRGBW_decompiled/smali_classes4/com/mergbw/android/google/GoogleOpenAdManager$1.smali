.class Lcom/mergbw/android/google/GoogleOpenAdManager$1;
.super Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;
.source "GoogleOpenAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mergbw/android/google/GoogleOpenAdManager;->loadAd(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;


# direct methods
.method constructor <init>(Lcom/mergbw/android/google/GoogleOpenAdManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    invoke-direct {p0}, Lcom/google/android/gms/ads/appopen/AppOpenAd$AppOpenAdLoadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdFailedToLoad(Lcom/google/android/gms/ads/LoadAdError;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$102(Lcom/mergbw/android/google/GoogleOpenAdManager;Z)Z

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAdFailedToLoad: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/ads/LoadAdError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    invoke-static {v0, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$002(Lcom/mergbw/android/google/GoogleOpenAdManager;Lcom/google/android/gms/ads/appopen/AppOpenAd;)Lcom/google/android/gms/ads/appopen/AppOpenAd;

    .line 65
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$102(Lcom/mergbw/android/google/GoogleOpenAdManager;Z)Z

    .line 66
    iget-object p1, p0, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->this$0:Lcom/mergbw/android/google/GoogleOpenAdManager;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/mergbw/android/google/GoogleOpenAdManager;->access$202(Lcom/mergbw/android/google/GoogleOpenAdManager;J)J

    .line 67
    const-string p1, "onAdLoaded."

    invoke-static {p1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onAdLoaded(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 61
    check-cast p1, Lcom/google/android/gms/ads/appopen/AppOpenAd;

    invoke-virtual {p0, p1}, Lcom/mergbw/android/google/GoogleOpenAdManager$1;->onAdLoaded(Lcom/google/android/gms/ads/appopen/AppOpenAd;)V

    return-void
.end method
