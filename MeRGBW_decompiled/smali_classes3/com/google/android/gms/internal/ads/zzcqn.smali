.class public final Lcom/google/android/gms/internal/ads/zzcqn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhpx;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcqk;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcqk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zza:Lcom/google/android/gms/internal/ads/zzcqk;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcqk;)Lcom/google/android/gms/internal/ads/zzcqn;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcqn;-><init>(Lcom/google/android/gms/internal/ads/zzcqk;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcqk;)Lcom/google/android/gms/internal/ads/zzcyt;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcqk;->zza()Lcom/google/android/gms/internal/ads/zzcyt;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcyt;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcyt;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zza:Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqn;->zzd(Lcom/google/android/gms/internal/ads/zzcqk;)Lcom/google/android/gms/internal/ads/zzcyt;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqn;->zza:Lcom/google/android/gms/internal/ads/zzcqk;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqn;->zzd(Lcom/google/android/gms/internal/ads/zzcqk;)Lcom/google/android/gms/internal/ads/zzcyt;

    move-result-object v0

    return-object v0
.end method
