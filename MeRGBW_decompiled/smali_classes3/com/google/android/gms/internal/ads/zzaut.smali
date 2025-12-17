.class public final Lcom/google/android/gms/internal/ads/zzaut;
.super Lcom/google/android/gms/internal/ads/zzaus;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaur;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaus;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaur;)V

    return-void
.end method

.method public static zzt(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaqy;)Lcom/google/android/gms/internal/ads/zzaut;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaur;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzaur;-><init>(Lcom/google/android/gms/internal/ads/zzaqy;)V

    .line 2
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzaut;->zzo(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaur;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaut;

    .line 3
    invoke-direct {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzaut;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaur;)V

    return-object p1
.end method
