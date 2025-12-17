.class public final Lcom/google/android/gms/internal/ads/zzdyx;
.super Lcom/google/android/gms/internal/ads/zzdyv;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zzg:Landroid/content/Context;

.field private final zzh:Ljava/util/concurrent/Executor;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzdyv;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzg:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzh:Ljava/util/concurrent/Executor;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzs()Lcom/google/android/gms/ads/internal/util/zzbq;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/ads/internal/util/zzbq;->zza()Landroid/os/Looper;

    move-result-object p2

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbua;

    invoke-direct {v0, p1, p2, p0, p0}, Lcom/google/android/gms/internal/ads/zzbua;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseConnectionCallbacks;Lcom/google/android/gms/common/internal/BaseGmsClient$BaseOnConnectionFailedListener;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzf:Lcom/google/android/gms/internal/ads/zzbua;

    return-void
.end method


# virtual methods
.method public final onConnected(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzb:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzd:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzd:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzf:Lcom/google/android/gms/internal/ads/zzbua;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbua;->zzp()Lcom/google/android/gms/internal/ads/zzbuj;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zze:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 2
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zznM:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 2
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zze:Lcom/google/android/gms/internal/ads/zzbuv;

    .line 5
    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzdyu;-><init>(Lcom/google/android/gms/internal/ads/zzbzm;Lcom/google/android/gms/internal/ads/zzbuv;)V

    goto :goto_0

    .line 10
    :cond_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzdyt;

    .line 4
    invoke-direct {v3, p0}, Lcom/google/android/gms/internal/ads/zzdyt;-><init>(Lcom/google/android/gms/internal/ads/zzdyv;)V

    .line 6
    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbuj;->zzf(Lcom/google/android/gms/internal/ads/zzbuv;Lcom/google/android/gms/internal/ads/zzbun;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzbyv;

    move-result-object v2

    const-string v3, "RemoteSignalsClientTask.onConnected"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyv;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzk;

    .line 8
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdzk;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzm;->zzd(Ljava/lang/Throwable;)Z

    goto :goto_1

    .line 10
    :catch_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdzk;

    .line 9
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdzk;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbzm;->zzd(Ljava/lang/Throwable;)Z

    .line 10
    :cond_1
    :goto_1
    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbuv;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzb:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzc:Z

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    monitor-exit v0

    return-object p1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzc:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zze:Lcom/google/android/gms/internal/ads/zzbuv;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyv;->zzf:Lcom/google/android/gms/internal/ads/zzbua;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbua;->checkAvailabilityAndConnect()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zza:Lcom/google/android/gms/internal/ads/zzbzm;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdyw;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzdyw;-><init>(Lcom/google/android/gms/internal/ads/zzdyx;)V

    .line 3
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzh;->zzg:Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzbzm;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzg:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyx;->zzh:Ljava/util/concurrent/Executor;

    .line 4
    invoke-static {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzdyx;->zzc(Landroid/content/Context;Lcom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V

    .line 5
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
