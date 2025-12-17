.class final Lcom/google/android/gms/internal/ads/zzezt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzggr;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzezx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzezx;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezt;->zza:Lcom/google/android/gms/internal/ads/zzezx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzk;

    .line 2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, ""

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p1, "Failed to get a cache key, reverting to legacy flow."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzezt;->zza:Lcom/google/android/gms/internal/ads/zzezx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzezv;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzezx;->zzb()Lcom/google/android/gms/internal/ads/zzffb;

    move-result-object v2

    invoke-direct {v0, v1, v2, v1}, Lcom/google/android/gms/internal/ads/zzezv;-><init>(Lcom/google/android/gms/internal/ads/zzbuv;Lcom/google/android/gms/internal/ads/zzffb;[B)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzezx;->zzd(Lcom/google/android/gms/internal/ads/zzezv;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzezx;->zzc()Lcom/google/android/gms/internal/ads/zzezv;

    move-result-object p1

    return-object p1
.end method
