.class final Lcom/google/android/gms/internal/ads/zzqg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private zzA:J

.field private zzB:J

.field private zzC:J

.field private zzD:J

.field private zzE:Z

.field private zzF:J

.field private zzG:Lcom/google/android/gms/internal/ads/zzdb;

.field zza:Z

.field private final zzb:Lcom/google/android/gms/internal/ads/zzqf;

.field private final zzc:[J

.field private zzd:Landroid/media/AudioTrack;

.field private zze:I

.field private zzf:Lcom/google/android/gms/internal/ads/zzqe;

.field private zzg:I

.field private zzh:J

.field private zzi:F

.field private zzj:Z

.field private zzk:J

.field private zzl:I

.field private zzm:J

.field private zzn:J

.field private zzo:Ljava/lang/reflect/Method;

.field private zzp:J

.field private zzq:Z

.field private zzr:Z

.field private zzs:J

.field private zzt:J

.field private zzu:J

.field private zzv:J

.field private zzw:I

.field private zzx:I

.field private zzy:J

.field private zzz:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqf;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzqf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    :try_start_0
    const-class p1, Landroid/media/AudioTrack;

    const-string v0, "getLatency"

    const/4 v1, 0x0

    .line 2
    move-object v2, v1

    check-cast v2, [Ljava/lang/Class;

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzo:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/16 p1, 0xa

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzc:[J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzD:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzdb;->zza:Lcom/google/android/gms/internal/ads/zzdb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    return-void
.end method

.method private final zzl(J)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzk:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    sub-long/2addr p1, v0

    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzw(JF)J

    move-result-wide p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zza()J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide p1

    sub-long/2addr v0, p1

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzk:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    .line 3
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zza(J)V

    :cond_1
    :goto_0
    return-void
.end method

.method private final zzm(J)J
    .locals 5

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzx:I

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v0, :cond_1

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    cmp-long p1, p1, v1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzq()J

    move-result-wide p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    .line 2
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzo()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzm:J

    add-long/2addr p1, v3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 4
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzeo;->zzv(JF)J

    move-result-wide p1

    .line 2
    :goto_0
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzp:J

    sub-long/2addr p1, v3

    const-wide/16 v3, 0x0

    .line 5
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzB:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    .line 6
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    :cond_2
    return-wide p1
.end method

.method private final zzn()V
    .locals 3

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzm:J

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzx:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzw:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzn:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzD:J

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzj:Z

    return-void
.end method

.method private final zzo()J
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzp()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzp()J
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzq()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzB:J

    .line 2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzt:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x5

    cmp-long v4, v4, v6

    if-ltz v4, :cond_6

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 7
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    move-object v5, v4

    check-cast v5, Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlaybackHeadPosition()I

    move-result v4

    int-to-long v6, v4

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x1d

    if-gt v4, v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzu:J

    cmp-long v4, v10, v8

    if-lez v4, :cond_2

    const/4 v4, 0x3

    if-ne v5, v4, :cond_2

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_5

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    goto :goto_0

    :cond_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    :cond_3
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzu:J

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzv:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzv:J

    .line 7
    :cond_4
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzu:J

    .line 5
    :cond_5
    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzt:J

    :cond_6
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzu:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzF:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzv:J

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final zzq()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzA:J

    return-wide v0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzv(JF)J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    .line 4
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzs(JI)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzA:J

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final zza(Landroid/media/AudioTrack;IIIZ)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzqg;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzqf;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    .line 2
    invoke-virtual {p1}, Landroid/media/AudioTrack;->getSampleRate()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeo;->zzA(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzr:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p1, :cond_0

    .line 4
    div-int/2addr p4, p3

    int-to-long p1, p4

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzeo;->zzr(JI)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    move-wide p1, v0

    :goto_0
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzh:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzu:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzv:J

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzE:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzF:J

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzq:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzs:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzp:J

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzl:I

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzk:J

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    return-void
.end method

.method public final zzb()J
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v2, v1

    check-cast v2, Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v2

    const/4 v3, 0x3

    const-wide/16 v4, 0x3e8

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v2, v3, :cond_6

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 3
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzc()J

    move-result-wide v9

    div-long v12, v9, v4

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzn:J

    sub-long v9, v12, v9

    const-wide/16 v14, 0x7530

    cmp-long v2, v9, v14

    if-ltz v2, :cond_2

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzo()J

    move-result-wide v9

    cmp-long v2, v9, v7

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 17
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzc:[J

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzw:I

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 5
    invoke-static {v9, v10, v14}, Lcom/google/android/gms/internal/ads/zzeo;->zzw(JF)J

    move-result-wide v9

    sub-long/2addr v9, v12

    aput-wide v9, v2, v11

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzw:I

    add-int/2addr v9, v6

    const/16 v10, 0xa

    rem-int/2addr v9, v10

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzw:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzx:I

    if-ge v9, v10, :cond_1

    add-int/2addr v9, v6

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzx:I

    :cond_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzn:J

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzm:J

    const/4 v9, 0x0

    :goto_0
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzx:I

    if-ge v9, v10, :cond_2

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzm:J

    .line 6
    aget-wide v16, v2, v9

    int-to-long v10, v10

    div-long v16, v16, v10

    add-long v14, v14, v16

    iput-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzm:J

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzr:Z

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzo:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    iget-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzs:J

    sub-long v9, v12, v9

    const-wide/32 v14, 0x7a120

    cmp-long v9, v9, v14

    if-ltz v9, :cond_5

    const/4 v9, 0x0

    :try_start_0
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    if-eqz v10, :cond_3

    .line 7
    invoke-virtual {v2, v10, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    move-object v10, v2

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v10, v2

    mul-long/2addr v10, v4

    iget-wide v14, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzh:J

    sub-long/2addr v10, v14

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzp:J

    .line 8
    invoke-static {v10, v11, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzp:J

    const-wide/32 v14, 0x4c4b40

    cmp-long v2, v10, v14

    if-lez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    .line 9
    invoke-interface {v2, v10, v11}, Lcom/google/android/gms/internal/ads/zzqf;->zzd(J)V

    iput-wide v7, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzp:J

    goto :goto_1

    .line 10
    :cond_3
    throw v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzo:Ljava/lang/reflect/Method;

    .line 9
    :cond_4
    :goto_1
    iput-wide v12, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzs:J

    :cond_5
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    .line 29
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v2, v11

    check-cast v2, Lcom/google/android/gms/internal/ads/zzqe;

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 12
    invoke-direct {v0, v12, v13}, Lcom/google/android/gms/internal/ads/zzqg;->zzm(J)J

    move-result-wide v15

    .line 13
    invoke-virtual/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzqe;->zza(JFJ)V

    .line 4
    :cond_6
    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 14
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzc()J

    move-result-wide v9

    div-long/2addr v9, v4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-object v4, v2

    check-cast v4, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqe;->zzb()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 16
    invoke-virtual {v2, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzqe;->zze(JF)J

    move-result-wide v11

    goto :goto_3

    .line 17
    :cond_7
    invoke-direct {v0, v9, v10}, Lcom/google/android/gms/internal/ads/zzqg;->zzm(J)J

    move-result-wide v11

    .line 18
    :goto_3
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v1

    if-ne v1, v3, :cond_c

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzqe;->zzc()Z

    move-result v1

    if-nez v1, :cond_9

    .line 19
    :cond_8
    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzqg;->zzl(J)V

    :cond_9
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzD:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    sub-long v1, v9, v1

    iget-wide v13, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    sub-long v13, v11, v13

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    .line 20
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzeo;->zzv(JF)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    add-long/2addr v3, v1

    sub-long v17, v3, v11

    cmp-long v5, v13, v7

    .line 21
    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    if-eqz v5, :cond_a

    const-wide/32 v13, 0xf4240

    cmp-long v5, v7, v13

    if-gez v5, :cond_a

    const-wide/16 v7, 0xa

    mul-long/2addr v1, v7

    const-wide/16 v7, 0x64

    div-long/2addr v1, v7

    sub-long v7, v3, v1

    add-long/2addr v3, v1

    .line 22
    invoke-static {v11, v12, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    invoke-static {v7, v8, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    move-wide v11, v1

    :cond_a
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zza:Z

    if-nez v1, :cond_b

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzj:Z

    if-nez v1, :cond_b

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    cmp-long v3, v11, v1

    if-lez v3, :cond_b

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzj:Z

    sub-long v1, v11, v1

    .line 23
    sget-object v3, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzi:F

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v1

    .line 24
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzw(JF)J

    move-result-wide v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 25
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zza()J

    move-result-wide v3

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    .line 26
    invoke-interface {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqf;->zza(J)V

    :cond_b
    iput-wide v9, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzD:J

    iput-wide v11, v0, Lcom/google/android/gms/internal/ads/zzqg;->zzC:J

    goto :goto_4

    :cond_c
    if-eq v1, v6, :cond_d

    :goto_4
    return-wide v11

    .line 27
    :cond_d
    invoke-direct {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzqg;->zzl(J)V

    return-wide v11
.end method

.method public final zzc()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzo()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzk:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqe;->zzd()V

    return-void
.end method

.method public final zzd()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zze(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object p2, p1

    check-cast p2, Landroid/media/AudioTrack;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioTrack;)I

    move-result p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzl:I

    if-le p1, p2, :cond_0

    move v4, v3

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzl:I

    goto :goto_0

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzq:Z

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzqg;->zzh(J)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzq:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    if-eq v0, v3, :cond_2

    move v4, v3

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzb:Lcom/google/android/gms/internal/ads/zzqf;

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zze:I

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzh:J

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lcom/google/android/gms/internal/ads/zzqf;->zze(IJ)V

    :cond_3
    return v3
.end method

.method public final zzf(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdb;->zzb()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzz:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0xc8

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzg(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzA:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzB:J

    return-void
.end method

.method public final zzh(J)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzb()J

    move-result-wide v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzg:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzs(JI)J

    move-result-wide v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzi()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzn()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzy:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqe;->zzd()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzp()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzA:J

    return-void
.end method

.method public final zzj()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzqg;->zzn()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzd:Landroid/media/AudioTrack;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzf:Lcom/google/android/gms/internal/ads/zzqe;

    return-void
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzdb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqg;->zzG:Lcom/google/android/gms/internal/ads/zzdb;

    return-void
.end method
