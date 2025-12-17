.class final Lcom/google/android/gms/internal/ads/zzgyq;
.super Lcom/google/android/gms/internal/ads/zzgys;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgyr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhgg;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyr;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zza:Lcom/google/android/gms/internal/ads/zzgyr;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgys;-><init>(Lcom/google/android/gms/internal/ads/zzhgg;Ljava/lang/Class;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgqs;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgyq;->zza:Lcom/google/android/gms/internal/ads/zzgyr;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgyr;->zza(Lcom/google/android/gms/internal/ads/zzgzn;)Lcom/google/android/gms/internal/ads/zzgqs;

    move-result-object p1

    return-object p1
.end method
