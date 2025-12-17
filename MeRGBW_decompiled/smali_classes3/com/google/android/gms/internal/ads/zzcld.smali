.class public final Lcom/google/android/gms/internal/ads/zzcld;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhpx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhqg;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhqg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcld;->zza:Lcom/google/android/gms/internal/ads/zzhqg;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzhqg;)Lcom/google/android/gms/internal/ads/zzcld;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcld;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcld;-><init>(Lcom/google/android/gms/internal/ads/zzhqg;)V

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcld;->zza:Lcom/google/android/gms/internal/ads/zzhqg;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgy;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgy;->zza()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/ads/internal/util/zzg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzclc;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzclc;-><init>(Lcom/google/android/gms/ads/internal/util/zzg;)V

    return-object v1
.end method
