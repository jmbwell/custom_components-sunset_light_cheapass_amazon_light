.class public final synthetic Lcom/google/android/gms/internal/ads/zzcf$-CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# direct methods
.method public static $default$zza(Lcom/google/android/gms/internal/ads/zzcf;J)J
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzcf;

    .line 0
    return-wide p1
.end method

.method public static $default$zzh(Lcom/google/android/gms/internal/ads/zzcf;)V
    .locals 2
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzcf;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AudioProcessor must implement at least one #flush() overload."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static $default$zzi(Lcom/google/android/gms/internal/ads/zzcf;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzcf;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzcf;->zzh()V

    return-void
.end method
