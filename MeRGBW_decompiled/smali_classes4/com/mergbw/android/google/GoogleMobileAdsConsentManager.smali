.class public Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;
.super Ljava/lang/Object;
.source "GoogleMobileAdsConsentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;


# instance fields
.field private final consentInformation:Lcom/google/android/ump/ConsentInformation;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    move-result-object p1

    iput-object p1, p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->instance:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    invoke-direct {v0, p0}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->instance:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    .line 52
    :cond_0
    sget-object p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->instance:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;

    return-object p0
.end method

.method static synthetic lambda$gatherConsent$0(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V
    .locals 1

    .line 80
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda2;-><init>(Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V

    .line 78
    invoke-static {p0, v0}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    return-void
.end method


# virtual methods
.method public canRequestAds()Z
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    invoke-interface {v0}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    move-result v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GoogleMobileAdsConsentManager canRequestAds: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mergbw/core/utils/MeRGBWLog;->i(Ljava/lang/String;)V

    return v0
.end method

.method public gatherConsent(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V
    .locals 4

    .line 69
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 71
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    move-result-object v0

    .line 73
    iget-object v1, p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager;->consentInformation:Lcom/google/android/ump/ConsentInformation;

    new-instance v2, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/Activity;Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V

    .line 81
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1;

    invoke-direct {v3, p2}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1;-><init>(Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V

    .line 73
    invoke-interface {v1, p1, v0, v2, v3}, Lcom/google/android/ump/ConsentInformation;->requestConsentInfoUpdate(Landroid/app/Activity;Lcom/google/android/ump/ConsentRequestParameters;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateSuccessListener;Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;)V

    return-void
.end method
