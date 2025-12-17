.class final Lcom/google/android/gms/internal/ads/zzeze;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzffk;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfab;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfab;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeze;->zza:Lcom/google/android/gms/internal/ads/zzfab;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzffl;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzezh;

    .line 2
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzezh;->zzb:Lcom/google/android/gms/internal/ads/zzfac;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzezh;->zza:Lcom/google/android/gms/internal/ads/zzfaa;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeze;->zza:Lcom/google/android/gms/internal/ads/zzfab;

    const/4 v2, 0x0

    .line 3
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzcuz;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzezd;

    invoke-virtual {v1, v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzezd;->zzb(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzfaa;Lcom/google/android/gms/internal/ads/zzcuz;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzffa;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeze;->zza:Lcom/google/android/gms/internal/ads/zzfab;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzezd;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzezd;->zza()Lcom/google/android/gms/internal/ads/zzcuz;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcuz;

    iput-object v0, p1, Lcom/google/android/gms/internal/ads/zzffa;->zza:Lcom/google/android/gms/internal/ads/zzcuz;

    return-void
.end method
