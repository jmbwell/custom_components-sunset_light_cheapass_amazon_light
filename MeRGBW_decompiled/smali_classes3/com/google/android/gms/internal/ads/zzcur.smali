.class public final Lcom/google/android/gms/internal/ads/zzcur;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzfiv;

.field private final zzb:Ljava/lang/Object;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfcu;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfcj;

.field private final zze:Lcom/google/android/gms/common/util/Clock;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdsm;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private zzh:Z

.field private zzi:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzdsm;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzb:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfiw;->zza()Lcom/google/android/gms/internal/ads/zzfiv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfiv;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzh:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzi:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzc:Lcom/google/android/gms/internal/ads/zzfcu;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcur;->zze:Lcom/google/android/gms/common/util/Clock;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzf:Lcom/google/android/gms/internal/ads/zzdsm;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method private final zzn()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzf:Lcom/google/android/gms/internal/ads/zzdsm;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzc:Lcom/google/android/gms/internal/ads/zzfcu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/internal/ads/zzfct;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfct;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfiv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfiw;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaN()[B

    move-result-object v3

    const/4 v4, 0x1

    .line 2
    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zznH:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsm;->zza()Lcom/google/android/gms/internal/ads/zzdsl;

    move-result-object v1

    const-string v4, "action"

    const-string v5, "pclma"

    .line 6
    invoke-virtual {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzdsl;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    const-string v4, "pclmd"

    .line 7
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzdsl;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    const-string v3, "gqi"

    .line 8
    invoke-virtual {v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsl;->zzc(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsl;

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdsl;->zzf()V

    .line 10
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzo(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzi:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzh:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfiv;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfhq;->zza()Lcom/google/android/gms/internal/ads/zzfhp;

    move-result-object v2

    .line 3
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfhp;->zzb(I)Lcom/google/android/gms/internal/ads/zzfhp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcur;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 4
    invoke-interface {v3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfhp;->zza(J)Lcom/google/android/gms/internal/ads/zzfhp;

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfhq;

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfiv;->zza(Lcom/google/android/gms/internal/ads/zzfhq;)Lcom/google/android/gms/internal/ads/zzfiv;

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcur;->zzn()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzi:Z

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    .line 1
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final zzdA()V
    .locals 1

    const/4 v0, 0x7

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdB()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdC()V
    .locals 1

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdD()V
    .locals 1

    const/16 v0, 0x9

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdE()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdX()V
    .locals 0

    return-void
.end method

.method public final zzdY(I)V
    .locals 0

    return-void
.end method

.method public final zzdt()V
    .locals 1

    const/4 v0, 0x3

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdu()V
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzdv()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzcur;->zzo(I)V

    return-void
.end method

.method public final zzh()V
    .locals 0

    return-void
.end method

.method public final zzl()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzaE:I

    if-lez v1, :cond_1

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzh:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zza:Lcom/google/android/gms/internal/ads/zzfiv;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcur;->zze:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfiv;->zzb(J)Lcom/google/android/gms/internal/ads/zzfiv;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzh:Z

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcuq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzcuq;-><init>(Lcom/google/android/gms/internal/ads/zzcur;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzd:Lcom/google/android/gms/internal/ads/zzfcj;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzaE:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void

    .line 1
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method final synthetic zzm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzi:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcur;->zzi:Z

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcur;->zzn()V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
