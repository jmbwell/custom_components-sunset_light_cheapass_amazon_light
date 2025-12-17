.class public final Lcom/google/android/gms/internal/ads/zzrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzqc;


# static fields
.field private static final zza:Ljava/lang/Object;

.field private static zzb:Ljava/util/concurrent/ScheduledExecutorService;

.field private static zzc:I


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzqs;

.field private zzB:Lcom/google/android/gms/internal/ads/zzau;

.field private zzC:Z

.field private zzD:J

.field private zzE:J

.field private zzF:J

.field private zzG:J

.field private zzH:I

.field private zzI:Z

.field private zzJ:Z

.field private zzK:J

.field private zzL:F

.field private zzM:Ljava/nio/ByteBuffer;

.field private zzN:I

.field private zzO:Ljava/nio/ByteBuffer;

.field private zzP:Z

.field private zzQ:Z

.field private zzR:Z

.field private zzS:Z

.field private zzT:I

.field private zzU:Z

.field private zzV:Lcom/google/android/gms/internal/ads/zzd;

.field private zzW:Landroid/media/AudioDeviceInfo;

.field private zzX:J

.field private zzY:Z

.field private zzZ:Z

.field private zzaa:Landroid/os/Looper;

.field private zzab:J

.field private zzac:J

.field private zzad:Landroid/os/Handler;

.field private zzae:Landroid/content/Context;

.field private zzaf:Z

.field private final zzag:Lcom/google/android/gms/internal/ads/zzqm;

.field private final zzah:Lcom/google/android/gms/internal/ads/zzqi;

.field private final zzd:Landroid/content/Context;

.field private final zze:Lcom/google/android/gms/internal/ads/zzqh;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzrk;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcj;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzrj;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzgjz;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzqg;

.field private final zzk:Ljava/util/ArrayDeque;

.field private zzl:Lcom/google/android/gms/internal/ads/zzrb;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzqx;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzqx;

.field private final zzo:I

.field private zzp:Lcom/google/android/gms/internal/ads/zzox;

.field private zzq:Lcom/google/android/gms/internal/ads/zzpz;

.field private zzr:Lcom/google/android/gms/internal/ads/zzql;

.field private zzs:Lcom/google/android/gms/internal/ads/zzql;

.field private zzt:Lcom/google/android/gms/internal/ads/zzcb;

.field private zzu:Landroid/media/AudioTrack;

.field private zzv:Lcom/google/android/gms/internal/ads/zzoz;

.field private zzw:Lcom/google/android/gms/internal/ads/zzpe;

.field private zzx:Lcom/google/android/gms/internal/ads/zzqw;

.field private zzy:Lcom/google/android/gms/internal/ads/zzc;

.field private zzz:Lcom/google/android/gms/internal/ads/zzqs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrc;->zza:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzqk;[B)V
    .locals 9

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()Landroid/content/Context;

    move-result-object p2

    .line 1
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    .line 2
    :goto_0
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    if-eqz p2, :cond_1

    move-object p2, v0

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzc()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object p2

    .line 2
    :goto_1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzd()Lcom/google/android/gms/internal/ads/zzqm;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zze()Lcom/google/android/gms/internal/ads/zzqi;

    move-result-object p2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzah:Lcom/google/android/gms/internal/ads/zzqi;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqy;

    .line 4
    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ads/zzqy;-><init>(Lcom/google/android/gms/internal/ads/zzrc;[B)V

    invoke-direct {p2, v1}, Lcom/google/android/gms/internal/ads/zzqg;-><init>(Lcom/google/android/gms/internal/ads/zzqf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    .line 5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqh;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqh;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    .line 6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzrk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Lcom/google/android/gms/internal/ads/zzrk;

    .line 7
    new-instance v1, Lcom/google/android/gms/internal/ads/zzcj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcj;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzcj;

    .line 8
    new-instance v1, Lcom/google/android/gms/internal/ads/zzrj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzrj;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzh:Lcom/google/android/gms/internal/ads/zzrj;

    .line 9
    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzgjz;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:Lcom/google/android/gms/internal/ads/zzgjz;

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzL:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzd;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzd;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzV:Lcom/google/android/gms/internal/ads/zzd;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqs;

    .line 10
    sget-object v1, Lcom/google/android/gms/internal/ads/zzau;->zza:Lcom/google/android/gms/internal/ads/zzau;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    move-object v2, v0

    move-object v3, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzau;JJ[B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzC:Z

    new-instance p2, Ljava/util/ArrayDeque;

    .line 11
    invoke-direct {p2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Ljava/util/ArrayDeque;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzm:Lcom/google/android/gms/internal/ads/zzqx;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzqx;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzqx;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzn:Lcom/google/android/gms/internal/ads/zzqx;

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    const/4 v1, -0x1

    if-lt p2, v0, :cond_4

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqk;->zzb()Landroid/content/Context;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_4

    if-ne p1, v1, :cond_3

    goto :goto_2

    :cond_3
    move v1, p1

    .line 11
    :cond_4
    :goto_2
    iput v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzo:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaf:Z

    return-void
.end method

.method static synthetic zzE(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpz;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpw;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 2
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzqp;

    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzqp;-><init>(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpw;)V

    .line 4
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzrc;->zza:Ljava/lang/Object;

    monitor-enter p0

    :try_start_1
    sget p1, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    add-int/lit8 p1, p1, -0x1

    sput p1, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    if-nez p1, :cond_1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p0

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqq;

    invoke-direct {v1, p1, p3}, Lcom/google/android/gms/internal/ads/zzqq;-><init>(Lcom/google/android/gms/internal/ads/zzpz;Lcom/google/android/gms/internal/ads/zzpw;)V

    .line 4
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzrc;->zza:Ljava/lang/Object;

    monitor-enter p1

    :try_start_2
    sget p2, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    add-int/lit8 p2, p2, -0x1

    sput p2, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    if-nez p2, :cond_3

    sget-object p2, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    invoke-interface {p2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    :cond_3
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    throw p0

    :catchall_2
    move-exception p0

    .line 6
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0
.end method

.method static synthetic zzH()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzrc;->zza:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final zzN()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Lcom/google/android/gms/internal/ads/zzcb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcd;->zza:Lcom/google/android/gms/internal/ads/zzcd;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcb;->zzb(Lcom/google/android/gms/internal/ads/zzcd;)V

    return-void
.end method

.method private final zzO(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpy;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzo:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Landroid/content/Context;

    if-eqz v2, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x22

    if-lt v4, v5, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzae:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzae:Landroid/content/Context;

    :cond_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzae:Landroid/content/Context;

    const/4 v0, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzql;->zza()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzu;

    .line 2
    invoke-static {v1, v2, v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzrc;->zzaf(Lcom/google/android/gms/internal/ads/zzpw;Lcom/google/android/gms/internal/ads/zzc;ILcom/google/android/gms/internal/ads/zzu;Landroid/content/Context;)Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-nez v0, :cond_2

    goto :goto_0

    .line 3
    :cond_2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpz;->zzb(Ljava/lang/Exception;)V

    .line 4
    :goto_0
    throw p1
.end method

.method private final zzP(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzS(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzc()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzg()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zze()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzR(Ljava/nio/ByteBuffer;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzS(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcb;->zzd(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzR(Ljava/nio/ByteBuffer;)V

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzS(J)V

    :cond_4
    :goto_1
    return-void
.end method

.method private final zzQ()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzc()Z

    move-result v0

    const-wide/high16 v1, -0x8000000000000000L

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_1

    .line 2
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrc;->zzS(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    return v3

    :cond_0
    return v4

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzf()V

    .line 4
    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzrc;->zzP(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzg()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_4

    .line 6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    move v3, v4

    :cond_4
    return v3
.end method

.method private final zzR(Ljava/nio/ByteBuffer;)V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    .line 2
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 3
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_15

    const-wide/16 v1, 0x14

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 5
    iget v3, v3, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 6
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzs(JI)J

    move-result-wide v1

    long-to-int v1, v1

    .line 7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v2

    int-to-long v4, v1

    cmp-long v6, v2, v4

    if-gez v6, :cond_15

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 8
    iget v7, v6, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    .line 9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    long-to-int v2, v2

    .line 11
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_14

    if-ge v2, v1, :cond_14

    const/high16 v12, 0x50000000

    const/high16 v13, 0x10000000

    const/16 v14, 0x16

    const/16 v15, 0x15

    const/4 v10, 0x4

    const/4 v3, 0x3

    const/4 v11, 0x2

    if-eq v7, v11, :cond_a

    if-eq v7, v3, :cond_9

    if-eq v7, v10, :cond_7

    if-eq v7, v15, :cond_6

    if-eq v7, v14, :cond_5

    if-eq v7, v13, :cond_4

    if-eq v7, v12, :cond_3

    const/high16 v12, 0x60000000

    if-ne v7, v12, :cond_2

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 13
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    .line 15
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    goto :goto_2

    .line 57
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 58
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 16
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    .line 17
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 18
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x8

    goto :goto_3

    .line 19
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    goto/16 :goto_5

    .line 20
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    .line 21
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    .line 22
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    .line 23
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x18

    :goto_2
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    or-int/2addr v12, v15

    goto :goto_6

    .line 24
    :cond_6
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x8

    .line 25
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x10

    .line 26
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x18

    :goto_3
    or-int/2addr v12, v13

    or-int/2addr v12, v14

    goto :goto_6

    .line 27
    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result v12

    const/high16 v13, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    const/high16 v13, -0x40800000    # -1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->max(FF)F

    move-result v12

    const/4 v13, 0x0

    cmpg-float v13, v12, v13

    if-gez v13, :cond_8

    neg-float v12, v12

    const/high16 v13, -0x31000000

    goto :goto_4

    :cond_8
    const/high16 v13, 0x4f000000

    :goto_4
    mul-float/2addr v12, v13

    float-to-int v12, v12

    goto :goto_6

    .line 29
    :cond_9
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x18

    goto :goto_6

    .line 30
    :cond_a
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    shl-int/lit8 v12, v12, 0x10

    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v13

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    :goto_5
    or-int/2addr v12, v13

    :goto_6
    int-to-long v12, v12

    int-to-long v14, v2

    mul-long/2addr v12, v14

    .line 31
    div-long/2addr v12, v4

    long-to-int v12, v12

    if-eq v7, v11, :cond_13

    if-eq v7, v3, :cond_12

    if-eq v7, v10, :cond_10

    const/16 v3, 0x15

    if-eq v7, v3, :cond_f

    const/16 v3, 0x16

    if-eq v7, v3, :cond_e

    const/high16 v3, 0x10000000

    if-eq v7, v3, :cond_d

    const/high16 v3, 0x50000000

    if-eq v7, v3, :cond_c

    const/high16 v3, 0x60000000

    if-ne v7, v3, :cond_b

    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    int-to-byte v11, v11

    .line 32
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 33
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 34
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 35
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto/16 :goto_7

    .line 56
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 57
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_c
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v11, v11

    .line 36
    invoke-virtual {v8, v11}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v10, v10

    .line 37
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 38
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_d
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v10, v10

    .line 39
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 40
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_e
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v12, v12

    .line 41
    invoke-virtual {v8, v12}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v3

    .line 42
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 43
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 44
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_f
    shr-int/lit8 v3, v12, 0x8

    shr-int/lit8 v10, v12, 0x10

    shr-int/lit8 v11, v12, 0x18

    int-to-byte v3, v3

    .line 45
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 46
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v11

    .line 47
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_10
    if-gez v12, :cond_11

    int-to-float v3, v12

    neg-float v3, v3

    const/high16 v10, -0x31000000

    div-float/2addr v3, v10

    .line 48
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_11
    int-to-float v3, v12

    const/high16 v10, 0x4f000000

    div-float/2addr v3, v10

    .line 49
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_12
    shr-int/lit8 v3, v12, 0x18

    int-to-byte v3, v3

    .line 50
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_7

    :cond_13
    shr-int/lit8 v3, v12, 0x10

    shr-int/lit8 v10, v12, 0x18

    int-to-byte v3, v3

    .line 51
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    int-to-byte v3, v10

    .line 52
    invoke-virtual {v8, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 53
    :goto_7
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int v10, v9, v6

    if-ne v3, v10, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v9

    goto/16 :goto_1

    :cond_14
    move-object/from16 v1, p1

    .line 55
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    move-object v1, v8

    goto :goto_8

    :cond_15
    move-object/from16 v1, p1

    :goto_8
    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    :cond_16
    return-void
.end method

.method private final zzS(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzn:Lcom/google/android/gms/internal/ads/zzqx;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqx;->zzb()Z

    move-result p2

    if-nez p2, :cond_e

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    .line 2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v0, v1, p2, v2}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzX:J

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    if-gez v0, :cond_8

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt p2, v5, :cond_1

    const/4 p2, -0x6

    if-eq v0, p2, :cond_2

    :cond_1
    const/16 p2, -0x20

    if-ne v0, p2, :cond_4

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v5

    cmp-long p2, v5, v3

    if-lez p2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzT()V

    goto :goto_0

    :cond_4
    move v2, v1

    .line 5
    :goto_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzqb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 8
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzu;

    invoke-direct {p2, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqb;-><init>(ILcom/google/android/gms/internal/ads/zzu;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz v0, :cond_5

    .line 9
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzpz;->zzb(Ljava/lang/Exception;)V

    :cond_5
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzqb;->zzb:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Landroid/content/Context;

    if-nez v0, :cond_6

    goto :goto_1

    .line 11
    :cond_6
    sget-object p1, Lcom/google/android/gms/internal/ads/zzoz;->zza:Lcom/google/android/gms/internal/ads/zzoz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    .line 12
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zza(Lcom/google/android/gms/internal/ads/zzoz;)V

    .line 13
    throw p2

    .line 10
    :cond_7
    :goto_1
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzqx;->zza(Ljava/lang/Exception;)V

    return-void

    .line 14
    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqx;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 15
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzG:J

    cmp-long p1, v5, v3

    if-lez p1, :cond_9

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzZ:Z

    :cond_9
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz p1, :cond_a

    if-ge v0, p2, :cond_a

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrf;

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 16
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez p1, :cond_b

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzF:J

    int-to-long v5, v0

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzF:J

    :cond_b
    if-ne v0, p2, :cond_e

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    if-ne p1, p2, :cond_c

    goto :goto_2

    :cond_c
    move v2, v1

    .line 17
    :goto_2
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzG:J

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzH:I

    int-to-long v0, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzN:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzG:J

    :cond_d
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    :cond_e
    :goto_3
    return-void
.end method

.method private final zzT()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzY:Z

    :cond_0
    return-void
.end method

.method private final zzU()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzL:F

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method private final zzV(Lcom/google/android/gms/internal/ads/zzau;)V
    .locals 8

    new-instance v7, Lcom/google/android/gms/internal/ads/zzqs;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    move-wide v2, v4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzau;JJ[B)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzz:Lcom/google/android/gms/internal/ads/zzqs;

    return-void

    :cond_0
    iput-object v7, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    return-void
.end method

.method private final zzW(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzX()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzb(Lcom/google/android/gms/internal/ads/zzau;)Lcom/google/android/gms/internal/ads/zzau;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzau;->zza:Lcom/google/android/gms/internal/ads/zzau;

    :goto_0
    move-object v3, v1

    .line 2
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzX()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzC:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzc(Z)Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzC:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqs;

    const-wide/16 v4, 0x0

    .line 6
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 7
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v6

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 8
    invoke-static {v6, v7, p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzau;JJ[B)V

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzN()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzC:Z

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrg;->zzav()Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object p1

    .line 11
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzh(Z)V

    :cond_2
    return-void
.end method

.method private final zzX()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzu;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzu;->zzI:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzY()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final zzZ()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzD:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzE:J

    :goto_0
    return-wide v1
.end method

.method private final zzaa()J
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzF:J

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    int-to-long v3, v0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    .line 3
    div-long/2addr v1, v3

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzG:J

    :goto_0
    return-wide v1
.end method

.method private final zzab()V
    .locals 5
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "audioCapabilities"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaa:Landroid/os/Looper;

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaa:Landroid/os/Looper;

    .line 2
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzrc;->zzae(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzae(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DefaultAudioSink accessed on multiple threads: %s and %s"

    .line 4
    invoke-static {v2, v4, v1, v3}, Lcom/google/android/gms/internal/ads/zzghc;->zzj(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzd:Landroid/content/Context;

    if-eqz v1, :cond_2

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaa:Landroid/os/Looper;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzpe;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzqn;-><init>(Lcom/google/android/gms/internal/ads/zzrc;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzW:Landroid/media/AudioDeviceInfo;

    .line 5
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzpe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzpd;Lcom/google/android/gms/internal/ads/zzc;Landroid/media/AudioDeviceInfo;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zzd()Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method private static zzac(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private final zzad()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzQ:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzQ:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqg;->zzg(J)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzR:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    return-void
.end method

.method private static zzae(Landroid/os/Looper;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    .line 1
    const-string p0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final zzaf(Lcom/google/android/gms/internal/ads/zzpw;Lcom/google/android/gms/internal/ads/zzc;ILcom/google/android/gms/internal/ads/zzu;Landroid/content/Context;)Landroid/media/AudioTrack;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpy;
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzc:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzC(III)Landroid/media/AudioFormat;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzc;->zza()Landroid/media/AudioAttributes;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 4
    invoke-virtual {v1, p1}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    const/4 v0, 0x1

    .line 6
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpw;->zze:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p2}, Landroid/media/AudioTrack$Builder;->setSessionId(I)Landroid/media/AudioTrack$Builder;

    move-result-object p1

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt p2, v1, :cond_0

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzd:Z

    .line 9
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack$Builder;Z)Landroid/media/AudioTrack$Builder;

    :cond_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x22

    if-lt p2, v1, :cond_1

    if-eqz p4, :cond_1

    .line 10
    invoke-static {p1, p4}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack$Builder;Landroid/content/Context;)Landroid/media/AudioTrack$Builder;

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result v2

    if-ne v2, v0, :cond_2

    return-object p1

    .line 14
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzc:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzpw;->zze:I

    iget-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpy;

    const/4 v9, 0x0

    move-object v1, p0

    move-object v7, p3

    .line 15
    invoke-direct/range {v1 .. v9}, Lcom/google/android/gms/internal/ads/zzpy;-><init>(IIIIILcom/google/android/gms/internal/ads/zzu;ZLjava/lang/Exception;)V

    throw p0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    move-object v8, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzb:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzc:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzpw;->zza:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzpw;->zze:I

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzpw;->zzd:Z

    new-instance p0, Lcom/google/android/gms/internal/ads/zzpy;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, p3

    .line 12
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzpy;-><init>(IIIIILcom/google/android/gms/internal/ads/zzu;ZLjava/lang/Exception;)V

    throw p0
.end method


# virtual methods
.method public final zzA()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzz()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzi:Lcom/google/android/gms/internal/ads/zzgjz;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 2
    check-cast v4, Lcom/google/android/gms/internal/ads/zzcf;

    .line 3
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcf;->zzj()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzcj;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcg;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzh:Lcom/google/android/gms/internal/ads/zzrj;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcg;->zzj()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcb;->zzh()V

    :cond_1
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzY:Z

    return-void
.end method

.method public final zzB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzpe;->zze()V

    :cond_0
    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzoz;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaa:Landroid/os/Looper;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzae(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzaa:Landroid/os/Looper;

    .line 3
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzrc;->zzae(Landroid/os/Looper;)Ljava/lang/String;

    move-result-object v3

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Current looper (%s) is not the playback looper (%s)"

    .line 4
    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzghc;->zzj(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzoz;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz p1, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrg;->zzau(Lcom/google/android/gms/internal/ads/zzrg;)V

    :cond_1
    return-void
.end method

.method final synthetic zzD()V
    .locals 4

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzac:J

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzrf;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzrg;->zzax(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzac:J

    :cond_0
    return-void
.end method

.method final synthetic zzF()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzZ()J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zzG()J
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v0

    return-wide v0
.end method

.method final synthetic zzI()Lcom/google/android/gms/internal/ads/zzpz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    return-object v0
.end method

.method final synthetic zzJ()Landroid/media/AudioTrack;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    return-object v0
.end method

.method final synthetic zzK(Z)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzR:Z

    return-void
.end method

.method final synthetic zzL()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    return v0
.end method

.method final synthetic zzM()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzX:J

    return-wide v0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzpz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzox;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzp:Lcom/google/android/gms/internal/ads/zzox;

    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzk(Lcom/google/android/gms/internal/ads/zzdb;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzu;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzrc;->zze(Lcom/google/android/gms/internal/ads/zzu;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzu;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzab()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    .line 3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzu;->zzI:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzA(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x16

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid PCM encoding: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DefaultAudioSink"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    if-eq p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    .line 5
    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzoz;->zzd(Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzc;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzpg;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzY:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzah:Lcom/google/android/gms/internal/ads/zzqi;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    .line 2
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqi;->zza(Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzc;)Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Z)J
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzJ:Z

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqg;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v2

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 3
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v2

    .line 2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Ljava/util/ArrayDeque;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqs;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzqs;->zzc:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzqs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    .line 7
    iget-wide v3, v2, Lcom/google/android/gms/internal/ads/zzqs;->zzc:J

    sub-long/2addr v0, v3

    .line 8
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzqs;->zza:Lcom/google/android/gms/internal/ads/zzau;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzau;->zzb:F

    .line 9
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzv(JF)J

    move-result-wide v2

    .line 10
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    .line 11
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    .line 12
    iget-wide v4, p1, Lcom/google/android/gms/internal/ads/zzqs;->zzb:J

    add-long/2addr v4, v0

    sub-long/2addr v0, v2

    .line 13
    iput-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqs;->zzd:J

    goto :goto_1

    .line 20
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    .line 14
    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzqs;->zzb:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzqs;->zzd:J

    add-long v4, v0, v2

    .line 13
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzqm;->zze()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 16
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v2

    add-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzab:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    sub-long v2, v0, v2

    .line 17
    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzab:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzac:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzac:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzad:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    .line 18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzad:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzad:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzad:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqr;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqr;-><init>(Lcom/google/android/gms/internal/ads/zzrc;)V

    const-wide/16 v1, 0x64

    .line 20
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzu;I[I)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpx;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzab()V

    const-string v0, "audio/raw"

    .line 2
    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    .line 3
    iget v0, v3, Lcom/google/android/gms/internal/ads/zzu;->zzI:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzA(I)Z

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    .line 4
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzu;->zzG:I

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzE(I)I

    move-result v6

    mul-int/2addr v6, v5

    new-instance v7, Lcom/google/android/gms/internal/ads/zzgjw;

    .line 6
    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzgjw;-><init>()V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzi:Lcom/google/android/gms/internal/ads/zzgjz;

    .line 7
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzgjw;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgjw;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzg:Lcom/google/android/gms/internal/ads/zzcj;

    .line 8
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzgjw;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjw;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzag:Lcom/google/android/gms/internal/ads/zzqm;

    .line 9
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzqm;->zza()[Lcom/google/android/gms/internal/ads/zzcf;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzgjw;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjw;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcb;

    .line 10
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzgjw;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v7

    invoke-direct {v8, v7}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(Lcom/google/android/gms/internal/ads/zzgjz;)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    .line 11
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzcb;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzt:Lcom/google/android/gms/internal/ads/zzcb;

    :cond_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Lcom/google/android/gms/internal/ads/zzrk;

    .line 12
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzu;->zzJ:I

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzu;->zzK:I

    invoke-virtual {v7, v9, v10}, Lcom/google/android/gms/internal/ads/zzrk;->zzq(II)V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zze:Lcom/google/android/gms/internal/ads/zzqh;

    move-object/from16 v9, p3

    .line 13
    invoke-virtual {v7, v9}, Lcom/google/android/gms/internal/ads/zzqh;->zzq([I)V

    .line 14
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcc;

    .line 15
    iget v9, v3, Lcom/google/android/gms/internal/ads/zzu;->zzH:I

    invoke-direct {v7, v9, v5, v0}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(III)V

    .line 16
    :try_start_0
    invoke-virtual {v8, v7}, Lcom/google/android/gms/internal/ads/zzcb;->zza(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzcc;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzce; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzd:I

    .line 19
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzb:I

    .line 20
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzcc;->zzc:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzB(I)I

    move-result v9

    .line 21
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzeo;->zzE(I)I

    move-result v10

    mul-int/2addr v10, v0

    move v15, v5

    move v13, v7

    move-object/from16 v16, v8

    move v14, v9

    move v0, v10

    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpx;

    .line 17
    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzu;)V

    throw v0

    .line 37
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcb;

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/google/android/gms/internal/ads/zzcb;-><init>(Lcom/google/android/gms/internal/ads/zzgjz;)V

    .line 23
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzu;->zzH:I

    .line 24
    sget-object v6, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzv:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    .line 25
    invoke-virtual {v6, v3, v7}, Lcom/google/android/gms/internal/ads/zzoz;->zzd(Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzc;)Landroid/util/Pair;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 27
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 28
    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v8, 0x2

    move-object/from16 v16, v0

    move v0, v4

    move v13, v5

    move v14, v6

    move v15, v7

    move v5, v8

    move v6, v0

    .line 21
    :goto_0
    const-string v7, ") for: "

    if-eqz v15, :cond_7

    if-eqz v14, :cond_6

    .line 31
    iget v7, v3, Lcom/google/android/gms/internal/ads/zzu;->zzj:I

    .line 32
    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    const-string v9, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-ne v7, v4, :cond_2

    const v7, 0xbb800

    :cond_2
    move v12, v7

    .line 33
    invoke-static {v13, v14, v15}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v11

    const/4 v7, -0x2

    const/4 v8, 0x1

    if-eq v11, v7, :cond_3

    move v7, v8

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    .line 34
    :goto_1
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    if-eq v0, v4, :cond_4

    move/from16 v17, v0

    goto :goto_2

    :cond_4
    move/from16 v17, v8

    :goto_2
    move v7, v11

    move v8, v15

    move v9, v5

    move/from16 v10, v17

    move v2, v11

    move v11, v13

    .line 35
    invoke-static/range {v7 .. v12}, Lcom/google/android/gms/internal/ads/zzre;->zzb(IIIIII)I

    move-result v7

    int-to-double v7, v7

    double-to-int v7, v7

    .line 36
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v2, v2, v17

    add-int/2addr v2, v4

    .line 37
    div-int v2, v2, v17

    mul-int v10, v2, v17

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzY:Z

    new-instance v12, Lcom/google/android/gms/internal/ads/zzql;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v2, v12

    move-object/from16 v3, p1

    move v4, v6

    move v6, v0

    move v7, v13

    move v8, v14

    move v9, v15

    move-object/from16 v11, v16

    move-object v0, v12

    move/from16 v12, v19

    move/from16 v13, v17

    move/from16 v14, v18

    invoke-direct/range {v2 .. v14}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzu;IIIIIIILcom/google/android/gms/internal/ads/zzcb;ZZZ)V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v2

    if-eqz v2, :cond_5

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    return-void

    :cond_5
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    return-void

    .line 29
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpx;

    .line 30
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x2b

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v4, v6

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid output channel config (mode="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzu;)V

    throw v0

    .line 21
    :cond_7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpx;

    .line 29
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v4, v4, 0x25

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    new-instance v8, Ljava/lang/StringBuilder;

    add-int/2addr v4, v6

    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Invalid output encoding (mode="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzu;)V

    throw v0

    .line 25
    :cond_8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpx;

    .line 26
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpx;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzu;)V

    throw v0
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzc()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    return-void
.end method

.method public final zzj()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    return-void
.end method

.method public final zzk(Ljava/nio/ByteBuffer;JI)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpy;,
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    if-ne v2, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v7

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    const/4 v8, 0x0

    if-eqz v0, :cond_6

    .line 2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzQ()Z

    move-result v0

    if-nez v0, :cond_2

    return v7

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 3
    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    if-ne v10, v11, :cond_3

    iget v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    if-ne v10, v11, :cond_3

    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/zzql;->zzj:Z

    iget-boolean v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzj:Z

    iget-boolean v9, v9, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    if-eqz v0, :cond_5

    .line 7
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    goto :goto_2

    .line 4
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzad()V

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzn()Z

    move-result v0

    if-eqz v0, :cond_4

    return v7

    .line 6
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzz()V

    .line 8
    :cond_5
    :goto_2
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzW(J)V

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_4

    .line 71
    :cond_7
    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzm:Lcom/google/android/gms/internal/ads/zzqx;

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zzb()Z

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_8

    return v7

    :cond_8
    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    if-eqz v0, :cond_9

    .line 10
    move-object v10, v0

    check-cast v10, Lcom/google/android/gms/internal/ads/zzql;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzO(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_3

    .line 11
    :cond_9
    throw v8
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    move-object v10, v0

    .line 35
    :try_start_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 12
    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    const v12, 0xf4240

    if-le v11, v12, :cond_2d

    new-instance v11, Lcom/google/android/gms/internal/ads/zzql;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzu;

    iget v15, v0, Lcom/google/android/gms/internal/ads/zzql;->zzb:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzql;->zzf:I

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzql;->zzi:Lcom/google/android/gms/internal/ads/zzcb;

    move/from16 v16, v13

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzql;->zzj:Z

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzl:Z

    const/16 v24, 0x0

    const/16 v25, 0x0

    const v21, 0xf4240

    const/16 v23, 0x0

    move/from16 v0, v16

    move-object v13, v11

    move/from16 v16, v12

    move/from16 v17, v0

    move/from16 v18, v8

    move/from16 v19, v7

    move/from16 v20, v6

    move-object/from16 v22, v9

    invoke-direct/range {v13 .. v25}, Lcom/google/android/gms/internal/ads/zzql;-><init>(Lcom/google/android/gms/internal/ads/zzu;IIIIIIILcom/google/android/gms/internal/ads/zzcb;ZZZ)V
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_2 .. :try_end_2} :catch_2

    .line 13
    :try_start_3
    invoke-direct {v1, v11}, Lcom/google/android/gms/internal/ads/zzrc;->zzO(Lcom/google/android/gms/internal/ads/zzql;)Landroid/media/AudioTrack;

    move-result-object v0

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_3 .. :try_end_3} :catch_1

    .line 10
    :goto_3
    :try_start_4
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzrb;

    if-nez v6, :cond_a

    new-instance v6, Lcom/google/android/gms/internal/ads/zzrb;

    .line 18
    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzrb;-><init>(Lcom/google/android/gms/internal/ads/zzrc;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzrb;

    :cond_a
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzrb;

    .line 19
    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzrb;->zza(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 20
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzk:Z

    :cond_b
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v0, v6, :cond_c

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzp:Lcom/google/android/gms/internal/ads/zzox;

    if-eqz v0, :cond_c

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzox;->zza()Landroid/media/metrics/LogSessionId;

    move-result-object v0

    .line 22
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m()Landroid/media/metrics/LogSessionId;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/metrics/LogSessionId;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 23
    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;Landroid/media/metrics/LogSessionId;)V

    :cond_c
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 24
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzql;->zzd:I

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzql;->zzh:I

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzaf:Z

    invoke-virtual/range {v8 .. v13}, Lcom/google/android/gms/internal/ads/zzqg;->zza(Landroid/media/AudioTrack;IIIZ)V

    .line 25
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzU()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzV:Lcom/google/android/gms/internal/ads/zzd;

    .line 26
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzd;->zza:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzW:Landroid/media/AudioDeviceInfo;

    if-eqz v0, :cond_d

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 27
    invoke-virtual {v6, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_d

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzW:Landroid/media/AudioDeviceInfo;

    .line 28
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpe;->zzc(Landroid/media/AudioDeviceInfo;)V

    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_e

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_e

    new-instance v6, Lcom/google/android/gms/internal/ads/zzqw;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 29
    invoke-direct {v6, v7, v0}, Lcom/google/android/gms/internal/ads/zzqw;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpe;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    :cond_e
    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzJ:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz v7, :cond_10

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 31
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzql;->zza()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v8

    check-cast v7, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzrg;->zzav()Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object v7

    .line 32
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzpu;->zzk(Lcom/google/android/gms/internal/ads/zzpw;)V

    if-eq v0, v6, :cond_10

    const/4 v6, 0x1

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzU:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x23

    if-lt v7, v8, :cond_f

    move-object v7, v0

    check-cast v7, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzrg;->zzaw()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v8

    if-eqz v8, :cond_f

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzrg;->zzaw()Lcom/google/android/gms/internal/ads/zzsm;

    move-result-object v7

    .line 33
    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzsm;->zza(I)V

    :cond_f
    check-cast v0, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrg;->zzav()Lcom/google/android/gms/internal/ads/zzpu;

    move-result-object v0

    .line 34
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzpu;->zzm(I)V
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_4 .. :try_end_4} :catch_2

    .line 8
    :cond_10
    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzm:Lcom/google/android/gms/internal/ads/zzqx;

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zzc()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzJ:Z

    const-wide/16 v6, 0x0

    if-eqz v0, :cond_11

    .line 38
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzK:J

    const/4 v8, 0x0

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzJ:Z

    .line 39
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzW(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    if-eqz v0, :cond_11

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzi()V

    :cond_11
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    .line 41
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/android/gms/internal/ads/zzqg;->zze(J)Z

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    if-nez v8, :cond_2a

    .line 42
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v8

    sget-object v9, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v8, v9, :cond_12

    const/4 v8, 0x1

    goto :goto_5

    :cond_12
    const/4 v8, 0x0

    :goto_5
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v8

    if-nez v8, :cond_13

    const/4 v8, 0x1

    return v8

    :cond_13
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 44
    iget v9, v8, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-eqz v9, :cond_22

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzH:I

    if-nez v9, :cond_22

    .line 45
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    const/16 v9, 0x14

    if-eq v8, v9, :cond_20

    const/16 v9, 0x1e

    const/4 v10, -0x2

    const/16 v11, 0x400

    const/4 v12, -0x1

    if-eq v8, v9, :cond_19

    packed-switch v8, :pswitch_data_0

    const/16 v9, 0x10

    packed-switch v8, :pswitch_data_1

    .line 6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected audio encoding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :pswitch_0
    sget v8, Lcom/google/android/gms/internal/ads/zzaby;->zza:I

    new-array v8, v9, [B

    .line 48
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    .line 49
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzee;

    invoke-direct {v10, v8, v9}, Lcom/google/android/gms/internal/ads/zzee;-><init>([BI)V

    .line 51
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzaby;->zzb(Lcom/google/android/gms/internal/ads/zzee;)Lcom/google/android/gms/internal/ads/zzabx;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzabx;->zzc:I

    goto/16 :goto_a

    :pswitch_1
    const/16 v8, 0x200

    goto/16 :goto_a

    .line 52
    :pswitch_2
    sget v8, Lcom/google/android/gms/internal/ads/zzabv;->zza:I

    .line 53
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 54
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    add-int/lit8 v11, v11, -0xa

    move v13, v8

    :goto_6
    if-gt v13, v11, :cond_15

    add-int/lit8 v14, v13, 0x4

    .line 55
    invoke-static {v2, v14}, Lcom/google/android/gms/internal/ads/zzeo;->zzK(Ljava/nio/ByteBuffer;I)I

    move-result v14

    and-int/2addr v14, v10

    const v15, -0x78d9046

    if-ne v14, v15, :cond_14

    sub-int/2addr v13, v8

    goto :goto_7

    :cond_14
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_15
    move v13, v12

    :goto_7
    if-ne v13, v12, :cond_16

    const/4 v8, 0x0

    goto :goto_a

    .line 56
    :cond_16
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    add-int/2addr v8, v13

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xff

    .line 57
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v10

    add-int/2addr v10, v13

    const/16 v11, 0xbb

    if-ne v8, v11, :cond_17

    const/16 v8, 0x9

    goto :goto_8

    :cond_17
    const/16 v8, 0x8

    :goto_8
    add-int/2addr v10, v8

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shr-int/lit8 v8, v8, 0x4

    and-int/lit8 v8, v8, 0x7

    const/16 v10, 0x28

    shl-int v8, v10, v8

    mul-int/2addr v8, v9

    goto :goto_a

    :pswitch_3
    const/16 v8, 0x800

    goto :goto_a

    :goto_9
    :pswitch_4
    move v8, v11

    goto :goto_a

    .line 58
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzeo;->zzK(Ljava/nio/ByteBuffer;I)I

    move-result v8

    .line 59
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzadp;->zzb(I)I

    move-result v8

    if-eq v8, v12, :cond_18

    goto :goto_a

    .line 88
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 60
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 71
    :pswitch_6
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzabv;->zze(Ljava/nio/ByteBuffer;)I

    move-result v8

    :goto_a
    const/4 v10, 0x1

    goto/16 :goto_e

    .line 61
    :cond_19
    :pswitch_7
    sget v8, Lcom/google/android/gms/internal/ads/zzact;->zza:I

    const/4 v8, 0x0

    .line 62
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v13, -0xde4bec0

    if-eq v9, v13, :cond_1f

    .line 63
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v13, -0x17bd3b8f

    if-ne v9, v13, :cond_1a

    goto :goto_9

    .line 64
    :cond_1a
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v9

    const v8, 0x25205864

    if-ne v9, v8, :cond_1b

    const/16 v8, 0x1000

    goto :goto_a

    .line 65
    :cond_1b
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v8

    .line 66
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    if-eq v9, v10, :cond_1e

    if-eq v9, v12, :cond_1d

    const/16 v10, 0x1f

    if-eq v9, v10, :cond_1c

    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    .line 70
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    const/4 v10, 0x1

    and-int/2addr v9, v10

    shl-int/lit8 v9, v9, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    and-int/lit16 v8, v8, 0xfc

    goto :goto_c

    :cond_1c
    add-int/lit8 v9, v8, 0x5

    .line 67
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    goto :goto_b

    :cond_1d
    add-int/lit8 v9, v8, 0x4

    .line 68
    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit8 v9, v9, 0x7

    shl-int/lit8 v9, v9, 0x4

    add-int/lit8 v8, v8, 0x7

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    :goto_b
    and-int/lit8 v8, v8, 0x3c

    :goto_c
    shr-int/lit8 v8, v8, 0x2

    or-int/2addr v8, v9

    const/4 v10, 0x1

    goto :goto_d

    :cond_1e
    add-int/lit8 v9, v8, 0x4

    add-int/lit8 v8, v8, 0x5

    .line 69
    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    const/4 v10, 0x1

    and-int/2addr v8, v10

    shl-int/lit8 v8, v8, 0x6

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v9

    and-int/lit16 v9, v9, 0xfc

    shr-int/lit8 v9, v9, 0x2

    or-int/2addr v8, v9

    :goto_d
    add-int/2addr v8, v10

    mul-int/lit8 v8, v8, 0x20

    goto :goto_e

    :cond_1f
    const/4 v10, 0x1

    move v8, v11

    goto :goto_e

    :cond_20
    const/4 v10, 0x1

    .line 46
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzadr;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v8

    :goto_e
    iput v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzH:I

    if-eqz v8, :cond_21

    goto :goto_f

    :cond_21
    return v10

    :cond_22
    :goto_f
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzz:Lcom/google/android/gms/internal/ads/zzqs;

    if-eqz v8, :cond_24

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzQ()Z

    move-result v8

    if-nez v8, :cond_23

    const/4 v8, 0x0

    return v8

    .line 73
    :cond_23
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzW(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzz:Lcom/google/android/gms/internal/ads/zzqs;

    :cond_24
    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzK:J

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 74
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzZ()J

    move-result-wide v11

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzrk;->zzs()J

    move-result-wide v13

    sub-long/2addr v11, v13

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzql;->zza:Lcom/google/android/gms/internal/ads/zzu;

    .line 75
    iget v10, v10, Lcom/google/android/gms/internal/ads/zzu;->zzH:I

    invoke-static {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v10

    add-long/2addr v8, v10

    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    if-nez v10, :cond_26

    sub-long v10, v8, v3

    .line 76
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0x30d40

    cmp-long v10, v10, v12

    if-lez v10, :cond_26

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz v10, :cond_25

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqa;

    .line 77
    invoke-direct {v11, v3, v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzqa;-><init>(JJ)V

    invoke-interface {v10, v11}, Lcom/google/android/gms/internal/ads/zzpz;->zzb(Ljava/lang/Exception;)V

    :cond_25
    const/4 v10, 0x1

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    :cond_26
    iget-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    if-eqz v10, :cond_28

    .line 78
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzQ()Z

    move-result v10

    if-nez v10, :cond_27

    const/4 v10, 0x0

    return v10

    :cond_27
    const/4 v10, 0x0

    sub-long v8, v3, v8

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzK:J

    add-long/2addr v11, v8

    iput-wide v11, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzK:J

    iput-boolean v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzI:Z

    .line 79
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzW(J)V

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    if-eqz v10, :cond_28

    cmp-long v6, v8, v6

    if-eqz v6, :cond_28

    check-cast v10, Lcom/google/android/gms/internal/ads/zzrf;

    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzrf;->zza:Lcom/google/android/gms/internal/ads/zzrg;

    .line 80
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzrg;->zzan()V

    :cond_28
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 81
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v6, :cond_29

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzD:J

    .line 82
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzD:J

    goto :goto_10

    .line 87
    :cond_29
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzE:J

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzH:I

    int-to-long v8, v8

    int-to-long v10, v5

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzE:J

    .line 82
    :goto_10
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzN:I

    .line 83
    :cond_2a
    invoke-direct {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzP(J)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    .line 84
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_2b

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzN:I

    const/4 v3, 0x1

    return v3

    :cond_2b
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzqg;->zzf(J)Z

    move-result v0

    if-eqz v0, :cond_2c

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    .line 86
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzz()V

    return v3

    :cond_2c
    return v2

    :catch_1
    move-exception v0

    .line 14
    :try_start_5
    invoke-virtual {v10, v0}, Lcom/google/android/gms/internal/ads/zzpy;->addSuppressed(Ljava/lang/Throwable;)V

    .line 15
    :cond_2d
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzT()V

    .line 16
    throw v10
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzpy; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception v0

    .line 60
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpy;->zzb:Z

    if-nez v2, :cond_2e

    .line 11
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzrc;->zzm:Lcom/google/android/gms/internal/ads/zzqx;

    .line 36
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzqx;->zza(Ljava/lang/Exception;)V

    const/4 v2, 0x0

    return v2

    .line 35
    :cond_2e
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public final zzl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzqb;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzP:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzad()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzP:Z

    :cond_0
    return-void
.end method

.method public final zzm()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzP:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzn()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return v2

    :cond_1
    move v1, v2

    :cond_2
    :goto_0
    return v1
.end method

.method public final zzn()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzR:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzaa()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzqg;->zzh(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzau;)V
    .locals 5

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzau;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzau;->zzb:F

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    const/high16 v2, 0x41000000    # 8.0f

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 2
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzau;->zzc:F

    .line 4
    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 5
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzau;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    .line 6
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzV(Lcom/google/android/gms/internal/ads/zzau;)V

    return-void
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzau;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    return-object v0
.end method

.method public final zzq(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzC:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzV(Lcom/google/android/gms/internal/ads/zzau;)V

    return-void
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzy:Lcom/google/android/gms/internal/ads/zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzb(Lcom/google/android/gms/internal/ads/zzc;)V

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzz()V

    return-void
.end method

.method public final zzs(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzU:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    if-ne v0, p1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzU:Z

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzT:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzz()V

    :cond_1
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzV:Lcom/google/android/gms/internal/ads/zzd;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzd;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzV:Lcom/google/android/gms/internal/ads/zzd;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzd;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzV:Lcom/google/android/gms/internal/ads/zzd;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzW:Landroid/media/AudioDeviceInfo;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzw:Lcom/google/android/gms/internal/ads/zzpe;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpe;->zzc(Landroid/media/AudioDeviceInfo;)V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzW:Landroid/media/AudioDeviceInfo;

    .line 2
    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setPreferredDevice(Landroid/media/AudioDeviceInfo;)Z

    :cond_1
    return-void
.end method

.method public final zzv()J
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzql;->zzc:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v1

    int-to-long v1, v1

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zze:I

    .line 3
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 4
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getBufferSizeInFrames()I

    move-result v0

    int-to-long v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzql;->zzg:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzacy;->zzf(I)I

    move-result v0

    const v3, -0x7fffffff

    if-eq v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 5
    :goto_0
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    int-to-long v5, v0

    sget-object v7, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v3, 0xf4240

    .line 6
    invoke-static/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzw(II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public final zzx(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzL:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzL:F

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzU()V

    :cond_0
    return-void
.end method

.method public final zzy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzS:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzi()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzQ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final zzz()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzY()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_5

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzD:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzE:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzF:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzG:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzZ:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzH:I

    new-instance v11, Lcom/google/android/gms/internal/ads/zzqs;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzB:Lcom/google/android/gms/internal/ads/zzau;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzqs;-><init>(Lcom/google/android/gms/internal/ads/zzau;JJ[B)V

    iput-object v11, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzA:Lcom/google/android/gms/internal/ads/zzqs;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzK:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzz:Lcom/google/android/gms/internal/ads/zzqs;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzk:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzM:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzN:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzO:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzQ:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzP:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzR:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzf:Lcom/google/android/gms/internal/ads/zzrk;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrk;->zzr()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzN()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzj:Lcom/google/android/gms/internal/ads/zzqg;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzd()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    .line 6
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzrc;->zzac(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzl:Lcom/google/android/gms/internal/ads/zzrb;

    .line 18
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzrb;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzrb;->zzb(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    .line 8
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzql;->zza()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    if-eqz v5, :cond_2

    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzs:Lcom/google/android/gms/internal/ads/zzql;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzr:Lcom/google/android/gms/internal/ads/zzql;

    .line 9
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqg;->zzj()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x18

    if-lt v0, v5, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqw;->zza()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzx:Lcom/google/android/gms/internal/ads/zzqw;

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzq:Lcom/google/android/gms/internal/ads/zzpz;

    new-instance v6, Landroid/os/Handler;

    .line 11
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzrc;->zza:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v8, :cond_4

    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    .line 12
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzeo;->zzg(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_4
    sget v8, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/google/android/gms/internal/ads/zzrc;->zzc:I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzrc;->zzb:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqo;

    invoke-direct {v9, v0, v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzqo;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpz;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpw;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    .line 13
    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 14
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzu:Landroid/media/AudioTrack;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzn:Lcom/google/android/gms/internal/ads/zzqx;

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzm:Lcom/google/android/gms/internal/ads/zzqx;

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqx;->zzc()V

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzab:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzac:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->zzad:Landroid/os/Handler;

    if-eqz v0, :cond_6

    .line 17
    move-object v2, v0

    check-cast v2, Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_6
    return-void
.end method
