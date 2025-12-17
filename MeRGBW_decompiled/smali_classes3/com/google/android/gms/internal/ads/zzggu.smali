.class final Lcom/google/android/gms/internal/ads/zzggu;
.super Lcom/google/android/gms/internal/ads/zzggp;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"


# instance fields
.field final zza:Ljava/util/regex/Matcher;


# direct methods
.method constructor <init>(Ljava/util/regex/Matcher;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzggp;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Ljava/util/regex/Matcher;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggu;->zza:Ljava/util/regex/Matcher;

    return-void
.end method
