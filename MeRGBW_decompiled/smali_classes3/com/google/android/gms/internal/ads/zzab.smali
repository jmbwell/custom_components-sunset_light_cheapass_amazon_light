.class public final Lcom/google/android/gms/internal/ads/zzab;
.super Lcom/google/android/gms/internal/ads/zzaa;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzz;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>(Lcom/google/android/gms/internal/ads/zzz;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(Lcom/google/android/gms/internal/ads/zzz;[B)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzz;[B)V
    .locals 0

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaa;-><init>(Lcom/google/android/gms/internal/ads/zzz;[B)V

    return-void
.end method
