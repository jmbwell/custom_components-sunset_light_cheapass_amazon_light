.class final Lcom/google/android/gms/internal/ads/zzfwr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhpr;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhpr;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhpr;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgea;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhpr;Lcom/google/android/gms/internal/ads/zzhpr;Lcom/google/android/gms/internal/ads/zzhpr;Lcom/google/android/gms/internal/ads/zzgea;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Lcom/google/android/gms/internal/ads/zzhpr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Lcom/google/android/gms/internal/ads/zzhpr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzc:Lcom/google/android/gms/internal/ads/zzhpr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    return-void
.end method

.method private final zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzc:Lcom/google/android/gms/internal/ads/zzhpr;

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfwn;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 6
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzb:Lcom/google/android/gms/internal/ads/zzhpr;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfwn;

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zza:Lcom/google/android/gms/internal/ads/zzhpr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfwn;

    .line 4
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfwn;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzggt;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzggr;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 5
    invoke-static {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzggr;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method final synthetic zza()Lcom/google/android/gms/internal/ads/zzgea;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfwr;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    return-object v0
.end method

.method final zzb(IZ)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgol;->zzw(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/android/gms/internal/ads/zzgol;

    move-result-object p1

    const-class p2, Ljava/lang/Throwable;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfwq;->zza:Lcom/google/android/gms/internal/ads/zzfwq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 3
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzgot;->zzg(Lcom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzggr;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgol;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfwp;

    .line 4
    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfwp;-><init>(Lcom/google/android/gms/internal/ads/zzfwr;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 5
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzgot;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgob;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgol;

    return-object p1

    :cond_0
    return-object v0
.end method

.method final synthetic zzc(I)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 0

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfwr;->zzd(I)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
