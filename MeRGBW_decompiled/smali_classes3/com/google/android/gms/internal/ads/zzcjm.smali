.class public final Lcom/google/android/gms/internal/ads/zzcjm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhpx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcjl;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcjl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/android/gms/internal/ads/zzcjm;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjm;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcjm;-><init>(Lcom/google/android/gms/internal/ads/zzcjl;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/android/gms/ads/internal/zza;
    .locals 2

    .line 1
    new-instance p0, Lcom/google/android/gms/ads/internal/zza;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcca;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcav;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcav;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/ads/internal/zza;-><init>(Lcom/google/android/gms/internal/ads/zzcca;Lcom/google/android/gms/internal/ads/zzcak;)V

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/ads/internal/zza;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/internal/zza;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjm;->zzd(Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjm;->zza:Lcom/google/android/gms/internal/ads/zzcjl;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcjm;->zzd(Lcom/google/android/gms/internal/ads/zzcjl;)Lcom/google/android/gms/ads/internal/zza;

    move-result-object v0

    return-object v0
.end method
