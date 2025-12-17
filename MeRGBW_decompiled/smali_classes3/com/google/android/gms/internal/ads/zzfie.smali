.class public final Lcom/google/android/gms/internal/ads/zzfie;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final zza:Ljava/lang/Object;

.field public static zzb:Ljava/lang/Boolean;

.field private static final zzc:Ljava/lang/Object;

.field private static final zzd:Ljava/lang/Object;


# instance fields
.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfii;

.field private zzh:Ljava/lang/String;

.field private zzi:I

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdpz;

.field private final zzk:Ljava/util/List;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzcgj;

.field private zzm:Z

.field private final zzn:Lcom/google/android/gms/internal/ads/zzbvd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzdpz;Lcom/google/android/gms/internal/ads/zzeau;Lcom/google/android/gms/internal/ads/zzbvd;Lcom/google/android/gms/internal/ads/zzcgj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfil;->zzb()Lcom/google/android/gms/internal/ads/zzfii;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfii;

    const-string p4, ""

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzm:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzj:Lcom/google/android/gms/internal/ads/zzdpz;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzn:Lcom/google/android/gms/internal/ads/zzbvd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzl:Lcom/google/android/gms/internal/ads/zzcgj;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzjD:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzs;->zzk()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzk:Ljava/util/List;

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzk:Ljava/util/List;

    return-void
.end method

.method public static zza()Z
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeb;->zzb:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/lang/Boolean;

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbeb;->zza:Lcom/google/android/gms/internal/ads/zzbds;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    .line 4
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    cmpg-double v1, v5, v3

    if-gez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/lang/Boolean;

    .line 2
    :cond_2
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzfie;->zzb:Ljava/lang/Boolean;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfie;->zza()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfii;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfii;->zza()I

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0

    return-void

    .line 4
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfii;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfil;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaN()[B

    move-result-object v7

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfii;->zzc()Lcom/google/android/gms/internal/ads/zzfii;

    .line 7
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzear;

    .line 8
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzjx:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 10
    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    const-string v8, "application/x-protobuf"

    const/4 v9, 0x0

    const v5, 0xea60

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzear;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzn:Lcom/google/android/gms/internal/ads/zzbvd;

    .line 11
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzeat;

    invoke-direct {v5, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzeat;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvd;I)V

    .line 12
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzear;

    invoke-virtual {v5, v0}, Lcom/google/android/gms/internal/ads/zzeat;->zzb(Lcom/google/android/gms/internal/ads/zzear;)Lcom/google/android/gms/internal/ads/zzeas;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-void

    :catchall_0
    move-exception v1

    .line 7
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 4
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzdwz;

    if-eqz v1, :cond_3

    .line 13
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzdwz;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdwz;->zza()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v1, "CuiMonitor.sendCuiPing"

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzbyv;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbyv;->zzh(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 4
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzh;->zza:Lcom/google/android/gms/internal/ads/zzgpd;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfid;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzfid;-><init>(Lcom/google/android/gms/internal/ads/zzfie;Lcom/google/android/gms/internal/ads/zzfhu;)V

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzgpd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfhu;)V
    .locals 10

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzm:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x1

    .line 59
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzm:Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfie;->zza()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_3

    .line 4
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzt(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 5
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzh()Lcom/google/android/gms/internal/ads/zzbyv;

    move-result-object v2

    const-string v3, "CuiMonitor.gettingAppIdFromManifest"

    invoke-virtual {v2, v1, v3}, Lcom/google/android/gms/internal/ads/zzbyv;->zzg(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 6
    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfie;->zze:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getApkVersion(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzi:I

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzjy:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzmH:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 10
    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbzh;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v7, v1

    sget-object v9, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v4, p0

    move-wide v5, v7

    .line 12
    invoke-interface/range {v3 .. v9}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_2

    .line 13
    :cond_2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzh;->zzd:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, v2

    move-object v2, p0

    move-wide v3, v5

    .line 14
    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 12
    :goto_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzjE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzl:Lcom/google/android/gms/internal/ads/zzcgj;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgj;->zza()V

    .line 18
    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19
    :goto_3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfie;->zza()Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_4

    :cond_4
    if-eqz p1, :cond_9

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfie;->zzc:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzg:Lcom/google/android/gms/internal/ads/zzfii;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfii;->zza()I

    move-result v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzjz:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_5

    .line 23
    monitor-exit v0

    return-void

    .line 24
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfih;->zza()Lcom/google/android/gms/internal/ads/zzfif;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzm()I

    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzv(I)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzb()Z

    move-result v3

    .line 26
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zza(Z)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zza()J

    move-result-wide v3

    .line 27
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfif;->zzb(J)Lcom/google/android/gms/internal/ads/zzfif;

    const/4 v3, 0x3

    .line 28
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzw(I)Lcom/google/android/gms/internal/ads/zzfif;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzf:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 29
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzh:Ljava/lang/String;

    .line 30
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzf(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzg(I)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzo()I

    move-result v3

    .line 33
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzx(I)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzc()I

    move-result v3

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzi(I)Lcom/google/android/gms/internal/ads/zzfif;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzi:I

    int-to-long v3, v3

    .line 35
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfif;->zzj(J)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzn()I

    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzy(I)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzd()Ljava/lang/String;

    move-result-object v3

    .line 37
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzk(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zze()Ljava/lang/String;

    move-result-object v3

    .line 38
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf()Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzj:Lcom/google/android/gms/internal/ads/zzdpz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzf()Ljava/lang/String;

    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzdpz;->zzd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 41
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzn(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzg()Ljava/lang/String;

    move-result-object v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzh()Lcom/google/android/gms/internal/ads/zzfig;

    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzs(Lcom/google/android/gms/internal/ads/zzfig;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzk()Ljava/lang/String;

    move-result-object v3

    .line 44
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzr(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzi()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzj()Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfhu;->zzl()J

    move-result-wide v3

    .line 47
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfif;->zzc(J)Lcom/google/android/gms/internal/ads/zzfif;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzjD:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 48
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 49
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzk:Ljava/util/List;

    .line 50
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfif;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfif;

    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzjE:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 51
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 52
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfie;->zzl:Lcom/google/android/gms/internal/ads/zzcgj;

    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzc()Lcom/google/android/gms/internal/ads/zzhlz;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgj;->zzb()Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_7

    .line 55
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfif;->zzt(Lcom/google/android/gms/internal/ads/zzhlz;)Lcom/google/android/gms/internal/ads/zzfif;

    :cond_7
    if-eqz p1, :cond_8

    .line 56
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzfif;->zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfif;

    .line 57
    :cond_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfik;->zza()Lcom/google/android/gms/internal/ads/zzfij;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzfij;->zza(Lcom/google/android/gms/internal/ads/zzfif;)Lcom/google/android/gms/internal/ads/zzfij;

    .line 58
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfii;->zzb(Lcom/google/android/gms/internal/ads/zzfij;)Lcom/google/android/gms/internal/ads/zzfii;

    .line 59
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1

    :cond_9
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    .line 18
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
