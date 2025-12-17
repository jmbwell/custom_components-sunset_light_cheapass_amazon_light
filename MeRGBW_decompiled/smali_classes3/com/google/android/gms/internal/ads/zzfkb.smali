.class public final Lcom/google/android/gms/internal/ads/zzfkb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzflc;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfkk;

.field private final zzd:Landroid/content/Context;

.field private volatile zze:Landroid/net/ConnectivityManager;

.field private final zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzg:Lcom/google/android/gms/common/util/Clock;

.field private zzh:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflc;Lcom/google/android/gms/internal/ads/zzfkk;Landroid/content/Context;Lcom/google/android/gms/common/util/Clock;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 3
    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    new-instance v2, Ljava/util/HashMap;

    .line 4
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    new-instance v2, Ljava/util/HashMap;

    .line 5
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzd:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    return-void
.end method

.method private final declared-synchronized zzm(Z)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzw:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzn(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzn(Z)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 2
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzflb;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzflb;->zzh()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzflb;->zzg()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzo(Ljava/lang/Class;Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Ljava/lang/Object;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "2"

    invoke-virtual {v7, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkk;->zze(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return-object v9

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzflb;

    if-eqz v10, :cond_4

    .line 4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zzm()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/ads/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :cond_1
    new-instance p2, Lcom/google/android/gms/internal/ads/zzfkq;

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    .line 6
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zzm()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    invoke-direct {p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    .line 7
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkq;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfkr;

    invoke-direct {p3, p2, v9}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    .line 8
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object p2, v10, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 9
    iget v4, p2, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 10
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v5

    const-string v6, "2"

    move-object v0, v7

    move-object v3, p3

    .line 11
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzfkk;->zzf(JLcom/google/android/gms/internal/ads/zzfkr;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zzi()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zze()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    move-object p2, v9

    goto :goto_0

    .line 14
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    :goto_0
    if-eqz p2, :cond_3

    .line 15
    invoke-interface {v8}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v0, v10, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 16
    iget v3, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 17
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v4

    const-string v8, "2"

    move-object v0, v7

    move-object v6, p3

    move-object v7, v8

    .line 18
    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfkk;->zzh(JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkr;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-object p2

    :catch_0
    move-exception p2

    .line 14
    :try_start_3
    const-string p3, "PreloadAdManager.pollAd"

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzbyv;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbyv;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "Unable to cast ad to the requested type:"

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v9

    .line 4
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v9

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzp(Lcom/google/android/gms/ads/AdFormat;)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 3
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdFormat;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 v3, 0x5

    if-eq p1, v3, :cond_1

    move p1, v2

    goto :goto_1

    .line 8
    :cond_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzeY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    .line 4
    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzeX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_1

    .line 6
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzeW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :goto_1
    monitor-exit p0

    if-ge v0, p1, :cond_4

    return v1

    :cond_4
    return v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Z
    .locals 8

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zze:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_2

    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zze:Landroid/net/ConnectivityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    :try_start_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzd:Landroid/content/Context;

    const-string v2, "connectivity"

    .line 2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zze:Landroid/net/ConnectivityManager;
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    :try_start_3
    const-string v2, "Failed to get connectivity manager"

    .line 3
    sget v3, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 4
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    :cond_1
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    .line 6
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastO()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zze:Landroid/net/ConnectivityManager;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v0, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    :try_start_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zze:Landroid/net/ConnectivityManager;

    .line 9
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfjz;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfjz;-><init>(Lcom/google/android/gms/internal/ads/zzfkb;)V

    invoke-static {v0, v2}, Landroidx/work/Constraints$Builder$$ExternalSyntheticApiModelOutline0;->m(Landroid/net/ConnectivityManager;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 10
    :try_start_6
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, "Failed to register network callback"

    .line 11
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 12
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzh:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_3

    .line 6
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzh:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    :goto_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfka;

    .line 15
    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzfka;-><init>(Lcom/google/android/gms/internal/ads/zzfkb;)V

    .line 16
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzazd;->zzb(Lcom/google/android/gms/internal/ads/zzazc;)V

    .line 17
    :goto_4
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 18
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 19
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 20
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzfkb;->zzp(Lcom/google/android/gms/ads/AdFormat;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzb:Lcom/google/android/gms/internal/ads/zzflc;

    .line 21
    invoke-virtual {v3, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzflc;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;)Lcom/google/android/gms/internal/ads/zzflb;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzh:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_6

    .line 22
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzflb;->zzk(I)V

    :cond_6
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    .line 23
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzflb;->zzj(Lcom/google/android/gms/internal/ads/zzfkk;)V

    .line 24
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzflb;->zzc()Lcom/google/android/gms/internal/ads/zzflb;

    .line 25
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfkq;

    .line 26
    iget-object v2, p2, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-direct {p3, v2, v0}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    .line 27
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzfkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkq;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzfkr;

    const/4 p1, 0x0

    invoke-direct {v6, p3, p1}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    .line 28
    iget p1, p2, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 29
    invoke-interface {p2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    const-string v7, "2"

    move-object v2, v3

    move v3, p1

    .line 28
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfkk;->zza(IJLcom/google/android/gms/internal/ads/zzfkr;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return v1

    .line 17
    :cond_7
    :goto_5
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_1
    move-exception p1

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw p1
.end method

.method public final declared-synchronized zzb(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-nez v2, :cond_0

    monitor-exit p0

    return v3

    .line 3
    :cond_0
    :try_start_1
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzflb;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v7, v2

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzi()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    :goto_0
    if-eqz v7, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzm()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/google/android/gms/ads/AdFormat;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    move v10, v6

    goto :goto_1

    :cond_2
    move v10, v3

    :goto_1
    if-eqz v10, :cond_3

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_3
    move-object v6, v2

    :goto_2
    if-nez v1, :cond_4

    move-object v8, v2

    goto :goto_3

    .line 9
    :cond_4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkq;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 7
    iget-object v8, v8, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-direct {v0, v8, p1}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    .line 8
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzfkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfkr;

    invoke-direct {p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    move-object v8, p1

    .line 6
    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    if-nez v1, :cond_5

    move v2, v3

    goto :goto_4

    .line 10
    :cond_5
    iget-object p2, v1, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 9
    iget p2, p2, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    move v2, p2

    :goto_4
    if-nez v1, :cond_6

    goto :goto_5

    .line 10
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result p2

    move v3, p2

    .line 6
    :goto_5
    const-string v9, "2"

    move-object v1, p1

    .line 11
    invoke-virtual/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzfkk;->zzd(IIJLjava/lang/Long;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfkr;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v10

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbwa;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/ads/zzbwa;

    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->REWARDED:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzo(Ljava/lang/Class;Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbwa;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbab;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/internal/ads/zzbab;

    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->APP_OPEN_AD:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzo(Ljava/lang/Class;Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zze(Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzbx;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    const-class v0, Lcom/google/android/gms/ads/internal/client/zzbx;

    sget-object v1, Lcom/google/android/gms/ads/AdFormat;->INTERSTITIAL:Lcom/google/android/gms/ads/AdFormat;

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzo(Ljava/lang/Class;Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/internal/client/zzbx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzf(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Lcom/google/android/gms/ads/internal/client/zzft;
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_4

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzflb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 3
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    if-nez v0, :cond_1

    move-object v7, v2

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 4
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    move-object v7, v1

    :goto_0
    const/4 v1, -0x1

    if-nez v0, :cond_2

    move v9, v1

    goto :goto_1

    .line 6
    :cond_2
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 5
    iget v6, v6, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    move v9, v6

    :goto_1
    if-nez v0, :cond_3

    :goto_2
    move v10, v1

    goto :goto_3

    .line 6
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v1

    goto :goto_2

    :goto_3
    move-object v6, p2

    move-object v8, p1

    .line 7
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzfkk;->zzo(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;II)V

    if-eqz v0, :cond_4

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 1
    :cond_4
    :goto_4
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzg(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)I
    .locals 11

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    .line 2
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzflb;

    if-nez v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v2

    .line 2
    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :goto_1
    move-object v8, v1

    goto :goto_2

    .line 6
    :cond_2
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 5
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    goto :goto_1

    :goto_2
    if-nez v0, :cond_3

    const/4 v0, -0x1

    :goto_3
    move v10, v0

    goto :goto_4

    .line 7
    :cond_3
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 6
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    goto :goto_3

    :goto_4
    move v4, v2

    move-object v7, p2

    move-object v9, p1

    .line 7
    invoke-virtual/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzfkk;->zzp(IJLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzh(I)Ljava/util/Map;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 3
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzflb;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzflb;->zzl()Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    .line 7
    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfkk;->zzn(Lcom/google/android/gms/ads/AdFormat;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 3
    :cond_2
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzi(Lcom/google/android/gms/ads/AdFormat;Ljava/lang/String;)Z
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzflb;

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzf()V

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzo()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 6
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 7
    iget-object v6, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    .line 8
    iget v8, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v9

    move-object v5, p2

    move-object v7, p1

    .line 10
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfkk;->zzm(JLjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized zzj(I)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zza:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 4
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzflb;

    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflb;->zzf()V

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzflb;->zzo()V

    .line 9
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v4, "Destroyed ad preloader for preloadId: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Destroyed all ad preloaders for ad format: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzc:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfkb;->zzg:Lcom/google/android/gms/common/util/Clock;

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, v1}, Lcom/google/android/gms/internal/ads/zzfkk;->zzl(JLcom/google/android/gms/ads/AdFormat;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method final synthetic zzk(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzm(Z)V

    return-void
.end method

.method final synthetic zzl(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfkb;->zzn(Z)V

    return-void
.end method
