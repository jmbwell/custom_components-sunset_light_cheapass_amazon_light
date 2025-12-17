.class public abstract Lcom/google/android/gms/internal/ads/zzflb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field protected final zza:Lcom/google/android/gms/ads/internal/ClientApi;

.field protected final zzb:Landroid/content/Context;

.field protected final zzc:I

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzfdy;

.field protected zze:Lcom/google/android/gms/ads/internal/client/zzft;

.field protected zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected zzg:Lcom/google/android/gms/ads/internal/client/zzch;

.field private zzh:Lcom/google/android/gms/ads/internal/client/zzce;

.field private final zzi:Ljava/util/Queue;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzfkf;

.field private final zzk:Ljava/lang/String;

.field private zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final zzm:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzp:Lcom/google/android/gms/internal/ads/zzfkk;

.field private final zzq:Lcom/google/android/gms/common/util/Clock;

.field private final zzr:Lcom/google/android/gms/internal/ads/zzfkr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzce;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/common/util/Clock;)V
    .locals 10

    .line 1
    const-string v1, "none"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzflb;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/ads/internal/client/zzft;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/common/util/Clock;)V

    move-object/from16 v1, p6

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zzh:Lcom/google/android/gms/ads/internal/client/zzce;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/ads/internal/client/zzft;Lcom/google/android/gms/ads/internal/client/zzch;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/common/util/Clock;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    .line 2
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzflb;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/ads/internal/client/zzft;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/common/util/Clock;)V

    move-object/from16 v1, p7

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zzg:Lcom/google/android/gms/ads/internal/client/zzch;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/ClientApi;Landroid/content/Context;ILcom/google/android/gms/internal/ads/zzfdy;Lcom/google/android/gms/ads/internal/client/zzft;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfkf;Lcom/google/android/gms/common/util/Clock;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zza:Lcom/google/android/gms/ads/internal/ClientApi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzb:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzc:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzd:Lcom/google/android/gms/internal/ads/zzfdy;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget p2, p6, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    const/4 p3, 0x1

    invoke-static {p3, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    new-instance p4, Ljava/util/PriorityQueue;

    new-instance p5, Lcom/google/android/gms/internal/ads/zzfku;

    .line 4
    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/ads/zzfku;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    invoke-direct {p4, p2, p5}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    .line 6
    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzj:Lcom/google/android/gms/internal/ads/zzfkf;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    invoke-direct {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p2, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-direct {p2, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfkq;

    .line 9
    iget-object p3, p6, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget p4, p4, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    .line 10
    invoke-static {p4}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object p4

    invoke-direct {p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    .line 11
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfkr;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzr:Lcom/google/android/gms/internal/ads/zzfkr;

    return-void
.end method

.method static final synthetic zzD(Lcom/google/android/gms/ads/internal/client/zzea;)D
    .locals 2

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcvl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzl()D

    move-result-wide v0

    return-wide v0
.end method

.method static final synthetic zzE(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzQ(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final declared-synchronized zzF(Ljava/lang/Object;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzj:Lcom/google/android/gms/internal/ads/zzfkf;

    .line 2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfkf;->zza()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzI(Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    move v1, v0

    .line 5
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzJ(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private final declared-synchronized zzG(Ljava/lang/Throwable;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfjx;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfjx;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfjx;->zza()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzJ(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private final declared-synchronized zzH(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 10

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfro;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfky;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfky;-><init>(Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/ads/internal/client/zze;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfro;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget v0, p1, Lcom/google/android/gms/ads/internal/client/zze;->zza:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    const/16 v3, 0xb

    if-eq v0, v3, :cond_1

    .line 5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzflb;->zzJ(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 6
    iget v2, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x3d

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Preloading "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", for adUnitId:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Ad load failed. Stop preloading due to non-retriable error:"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 9
    iget-object v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzm()Lcom/google/android/gms/ads/AdFormat;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfkq;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfkq;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfkr;

    const/4 v1, 0x0

    invoke-direct {v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzp:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 13
    iget v7, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 14
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v8

    .line 15
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzP()Ljava/lang/String;

    move-result-object v9

    move-object v6, p1

    .line 16
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfkk;->zzk(JLcom/google/android/gms/internal/ads/zzfkr;Lcom/google/android/gms/ads/internal/client/zze;IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzI(Ljava/lang/Object;)V
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfks;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfks;-><init>(Ljava/lang/Object;Lcom/google/android/gms/common/util/Clock;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    .line 2
    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object p1

    .line 4
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6
    sget-object v3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfro;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfkw;

    invoke-direct {v4, p0, p1}, Lcom/google/android/gms/internal/ads/zzfkw;-><init>(Lcom/google/android/gms/internal/ads/zzflb;Lcom/google/android/gms/ads/internal/client/zzea;)V

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfro;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzfkx;

    .line 7
    invoke-direct {v4, p0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzfkx;-><init>(Lcom/google/android/gms/internal/ads/zzflb;JLcom/google/android/gms/ads/internal/client/zzea;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzfkv;

    .line 8
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfks;->zzc()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v3, p1, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method private final declared-synchronized zzJ(Z)V
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzj:Lcom/google/android/gms/internal/ads/zzfkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkf;->zzd()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkf;->zzc()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkv;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkf;->zzb()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface {p1, v1, v2, v3, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
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

.method private final declared-synchronized zzK()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfks;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfks;->zzb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzL(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzg:Lcom/google/android/gms/ads/internal/client/zzch;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/internal/client/zzch;->zzg(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    .line 2
    :catch_0
    :try_start_2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to call onAdFailedToPreload"

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzM(Lcom/google/android/gms/ads/internal/client/zzea;)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzh:Lcom/google/android/gms/ads/internal/client/zzce;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->zze(Lcom/google/android/gms/ads/internal/client/zzft;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to call onAdsAvailable"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzg:Lcom/google/android/gms/ads/internal/client/zzch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/ads/internal/client/zzch;->zze(Ljava/lang/String;Lcom/google/android/gms/ads/internal/client/zzea;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :catch_1
    :try_start_4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to call onAdPreloaded"

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method private final declared-synchronized zzN()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfro;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkz;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfro;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfla;

    .line 5
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfla;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private final declared-synchronized zzO()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzh:Lcom/google/android/gms/ads/internal/client/zzce;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzce;->zzf(Lcom/google/android/gms/ads/internal/client/zzft;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2
    :catch_0
    :try_start_2
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to call onAdsExhausted"

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    .line 1
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzg:Lcom/google/android/gms/ads/internal/client/zzch;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/internal/client/zzch;->zzf(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :catch_1
    :try_start_4
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "Failed to call onAdsExhausted"

    .line 6
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0
.end method

.method private final zzP()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "none"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    const-string v0, "2"

    return-object v0

    :cond_0
    const-string v0, "1"

    return-object v0
.end method

.method private static final zzQ(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzcvl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    check-cast p0, Lcom/google/android/gms/internal/ads/zzcvl;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcvl;->zzk()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method final synthetic zzA()Lcom/google/android/gms/internal/ads/zzfkk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzp:Lcom/google/android/gms/internal/ads/zzfkk;

    return-object v0
.end method

.method final synthetic zzB()Lcom/google/android/gms/common/util/Clock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    return-object v0
.end method

.method final synthetic zzC()Lcom/google/android/gms/internal/ads/zzfkr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzr:Lcom/google/android/gms/internal/ads/zzfkr;

    return-object v0
.end method

.method protected abstract zza(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;
.end method

.method protected abstract zzb(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;
.end method

.method public final declared-synchronized zzc()Lcom/google/android/gms/internal/ads/zzflb;
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkv;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzd()Z
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzK()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zze()Ljava/lang/Object;
    .locals 13

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzj:Lcom/google/android/gms/internal/ads/zzfkf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfkf;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    .line 2
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfks;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzo:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfks;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 6
    iget v3, v3, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v3}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfks;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzflb;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzflb;->zzQ(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;

    move-result-object v10

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    if-eqz v10, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfks;->zzd()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfks;->zzd()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_2

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzp:Lcom/google/android/gms/internal/ads/zzfkk;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    .line 8
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 9
    iget v8, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v9

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzr:Lcom/google/android/gms/internal/ads/zzfkr;

    .line 11
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzP()Ljava/lang/String;

    move-result-object v12

    .line 12
    invoke-virtual/range {v5 .. v12}, Lcom/google/android/gms/internal/ads/zzfkk;->zzg(JIILjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkr;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v1, v2

    .line 13
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzq()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfks;->zza()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final zzf()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final zzg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final declared-synchronized zzh()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzn:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkv;

    .line 3
    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzfkv;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized zzi()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzp()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0

    .line 3
    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzQ(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzj(Lcom/google/android/gms/internal/ads/zzfkk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzp:Lcom/google/android/gms/internal/ads/zzfkk;

    return-void
.end method

.method public final declared-synchronized zzk(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x5

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzj:Lcom/google/android/gms/internal/ads/zzfkf;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfkf;->zze(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

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

.method protected final zzl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    return-object v0
.end method

.method protected final zzm()Lcom/google/android/gms/ads/AdFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v0}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method protected final declared-synchronized zzn()I
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final zzo()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method protected final declared-synchronized zzp()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfks;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfks;->zza()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected final declared-synchronized zzq()V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzK()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    .line 5
    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzazd;->zzd()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Empty activity context at preloading: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzb:Landroid/content/Context;

    .line 10
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzflb;->zza(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzflb;->zza(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 10
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfkt;

    .line 12
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfkt;-><init>(Lcom/google/android/gms/internal/ads/zzflb;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzm:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgot;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgoq;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected final zzr(I)V
    .locals 9

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 1
    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget v1, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/ads/AdFormat;->getAdFormat(I)Lcom/google/android/gms/ads/AdFormat;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 3
    iget v4, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    new-instance v3, Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v5, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    iget v6, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zzb:I

    iget-object v7, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zzc:Lcom/google/android/gms/ads/internal/client/zzm;

    if-lez p1, :cond_1

    move v2, p1

    goto :goto_1

    .line 14
    :cond_1
    iget v2, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 4
    :goto_1
    invoke-direct {v3, v5, v6, v7, v2}, Lcom/google/android/gms/ads/internal/client/zzft;-><init>(Ljava/lang/String;ILcom/google/android/gms/ads/internal/client/zzm;I)V

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzi:Ljava/util/Queue;

    .line 5
    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v3

    if-le v3, p1, :cond_4

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzv:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    .line 7
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    if-ge v0, p1, :cond_3

    .line 8
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfks;

    if-eqz v5, :cond_2

    .line 9
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 10
    :cond_3
    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    .line 11
    invoke-interface {v2, v3}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 12
    :cond_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzp:Lcom/google/android/gms/internal/ads/zzfkk;

    if-eqz v3, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzq:Lcom/google/android/gms/common/util/Clock;

    .line 13
    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v6

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfkq;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/client/zzft;->zza:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfkq;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/AdFormat;)V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfkr;

    const/4 v1, 0x0

    invoke-direct {v8, v0, v1}, Lcom/google/android/gms/internal/ads/zzfkr;-><init>(Lcom/google/android/gms/internal/ads/zzfkq;[B)V

    move v5, p1

    .line 14
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfkk;->zzc(IIJLcom/google/android/gms/internal/ads/zzfkr;)V

    :cond_5
    return-void

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected final zzs(Lcom/google/android/gms/ads/internal/client/zzm;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzA:Lcom/google/android/gms/internal/ads/zzbbz;

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
    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzB:Landroid/os/Bundle;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v0

    const-string v1, "plcs"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 4
    iget v0, v0, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    const-string v1, "plbs"

    .line 5
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzflb;->zzk:Ljava/lang/String;

    const-string v1, "plid"

    .line 6
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final synthetic zzt(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzF(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzu(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzG(Ljava/lang/Throwable;)V

    return-void
.end method

.method final synthetic zzv(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzH(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzw(Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzL(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzx(Lcom/google/android/gms/ads/internal/client/zzea;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzflb;->zzM(Lcom/google/android/gms/ads/internal/client/zzea;)V

    return-void
.end method

.method final synthetic zzy()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzO()V

    return-void
.end method

.method final synthetic zzz()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzflb;->zzP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
