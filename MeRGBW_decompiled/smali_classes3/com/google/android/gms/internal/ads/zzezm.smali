.class final synthetic Lcom/google/android/gms/internal/ads/zzezm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgob;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzezo;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcuz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzezo;Lcom/google/android/gms/internal/ads/zzcuz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzezm;->zza:Lcom/google/android/gms/internal/ads/zzezo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzb:Lcom/google/android/gms/internal/ads/zzcuz;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzezm;->zza:Lcom/google/android/gms/internal/ads/zzezo;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzezm;->zzb:Lcom/google/android/gms/internal/ads/zzcuz;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzezv;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzezo;->zzb(Lcom/google/android/gms/internal/ads/zzcuz;Lcom/google/android/gms/internal/ads/zzezv;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
