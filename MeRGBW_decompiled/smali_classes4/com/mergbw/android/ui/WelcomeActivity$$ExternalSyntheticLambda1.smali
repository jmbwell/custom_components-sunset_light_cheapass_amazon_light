.class public final synthetic Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/mergbw/android/google/GoogleMobileAdsConsentManager$OnConsentGatheringCompleteListener;


# instance fields
.field public final synthetic f$0:Lcom/mergbw/android/ui/WelcomeActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/mergbw/android/ui/WelcomeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/WelcomeActivity;

    return-void
.end method


# virtual methods
.method public final consentGatheringComplete(Lcom/google/android/ump/FormError;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/mergbw/android/ui/WelcomeActivity$$ExternalSyntheticLambda1;->f$0:Lcom/mergbw/android/ui/WelcomeActivity;

    invoke-virtual {v0, p1}, Lcom/mergbw/android/ui/WelcomeActivity;->lambda$checkUser$0$com-mergbw-android-ui-WelcomeActivity(Lcom/google/android/ump/FormError;)V

    return-void
.end method
