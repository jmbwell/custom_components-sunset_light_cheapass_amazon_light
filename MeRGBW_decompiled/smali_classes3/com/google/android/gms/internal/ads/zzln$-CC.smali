.class public final synthetic Lcom/google/android/gms/internal/ads/zzln$-CC;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# direct methods
.method public static $default$zzv(Lcom/google/android/gms/internal/ads/zzln;Lcom/google/android/gms/internal/ads/zzlm;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzln;

    .line 0
    return-void
.end method

.method public static $default$zzw(Lcom/google/android/gms/internal/ads/zzln;)V
    .locals 0
    .param p0, "_this"    # Lcom/google/android/gms/internal/ads/zzln;

    .line 0
    return-void
.end method

.method public static zzZ(IZ)Z
    .locals 2

    .line 0
    and-int/lit8 p0, p0, 0x7

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    move v1, v0

    :cond_2
    :goto_0
    return v1
.end method
