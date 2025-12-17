.class public final synthetic Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/ump/ConsentInformation$OnConsentInfoUpdateFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;

    return-void
.end method


# virtual methods
.method public final onConsentInfoUpdateFailure(Lcom/google/android/ump/FormError;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;

    invoke-interface {v0, p1}, Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;->consentGatheringComplete(Lcom/google/android/ump/FormError;)V

    return-void
.end method
