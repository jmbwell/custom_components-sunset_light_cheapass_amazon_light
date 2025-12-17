.class public final synthetic Lcom/google/android/gms/internal/ads/zzll$-CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# direct methods
.method public static $default$zzT(Lcom/google/android/gms/internal/ads/zzll;JJ)J
    .locals 2
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzll;

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzll;->zze()I

    move-result p1

    const/4 p2, 0x1

    const-wide/16 p3, 0x2710

    if-ne p1, p2, :cond_2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzll;->zzX()Z

    move-result p1

    const-wide/32 v0, 0xf4240

    if-nez p1, :cond_1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzll;->zzY()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    move-wide p3, v0

    :cond_2
    :goto_0
    return-wide p3
.end method

.method public static $default$zzU(Lcom/google/android/gms/internal/ads/zzll;FF)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzll;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhz;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public static $default$zzV(Lcom/google/android/gms/internal/ads/zzll;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzll;

    .line 0
    return-void
.end method

.method public static $default$zzt(Lcom/google/android/gms/internal/ads/zzll;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzll;

    .line 0
    return-void
.end method
