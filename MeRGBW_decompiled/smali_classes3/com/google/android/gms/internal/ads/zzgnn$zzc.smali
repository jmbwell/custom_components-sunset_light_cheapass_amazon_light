.class final Lcom/google/android/gms/internal/ads/zzgnn$zzc;
.super Lcom/google/android/gms/internal/ads/zzgnn$zza;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzgnn$zza;-><init>([B)V

    return-void
.end method


# virtual methods
.method final zza(Lcom/google/android/gms/internal/ads/zzgnn$zze;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgnn$zze;->thread:Ljava/lang/Thread;

    return-void
.end method

.method final zzb(Lcom/google/android/gms/internal/ads/zzgnn$zze;Lcom/google/android/gms/internal/ads/zzgnn$zze;)V
    .locals 0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgnn$zze;->next:Lcom/google/android/gms/internal/ads/zzgnn$zze;

    return-void
.end method

.method final zzc(Lcom/google/android/gms/internal/ads/zzgnn;Lcom/google/android/gms/internal/ads/zzgnn$zze;Lcom/google/android/gms/internal/ads/zzgnn$zze;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnn;->waitersField:Lcom/google/android/gms/internal/ads/zzgnn$zze;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgnn;->waitersField:Lcom/google/android/gms/internal/ads/zzgnn$zze;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzd(Lcom/google/android/gms/internal/ads/zzgnn;Lcom/google/android/gms/internal/ads/zzgnm$zzd;Lcom/google/android/gms/internal/ads/zzgnm$zzd;)Z
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnn;->listenersField:Lcom/google/android/gms/internal/ads/zzgnm$zzd;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgnn;->listenersField:Lcom/google/android/gms/internal/ads/zzgnm$zzd;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zze(Lcom/google/android/gms/internal/ads/zzgnn;Lcom/google/android/gms/internal/ads/zzgnn$zze;)Lcom/google/android/gms/internal/ads/zzgnn$zze;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnn;->waitersField:Lcom/google/android/gms/internal/ads/zzgnn$zze;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgnn;->waitersField:Lcom/google/android/gms/internal/ads/zzgnn$zze;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzf(Lcom/google/android/gms/internal/ads/zzgnn;Lcom/google/android/gms/internal/ads/zzgnm$zzd;)Lcom/google/android/gms/internal/ads/zzgnm$zzd;
    .locals 1

    .line 1
    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnn;->listenersField:Lcom/google/android/gms/internal/ads/zzgnm$zzd;

    if-eq v0, p2, :cond_0

    iput-object p2, p1, Lcom/google/android/gms/internal/ads/zzgnn;->listenersField:Lcom/google/android/gms/internal/ads/zzgnm$zzd;

    :cond_0
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method final zzg(Lcom/google/android/gms/internal/ads/zzgnn;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgnn;->valueField:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    .line 3
    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzgnn;->valueField:Ljava/lang/Object;

    .line 4
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    .line 5
    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    .line 6
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
