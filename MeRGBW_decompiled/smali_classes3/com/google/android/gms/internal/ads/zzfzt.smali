.class final Lcom/google/android/gms/internal/ads/zzfzt;
.super Lcom/google/android/gms/internal/ads/zzfzq;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfym;

.field private final zzc:Landroid/util/DisplayMetrics;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/internal/ads/zzfym;Ljava/util/Map;Landroid/util/DisplayMetrics;Lcom/google/android/gms/internal/ads/zzgea;)V
    .locals 7

    const/16 v0, 0x7b

    .line 1
    invoke-virtual {p5, v0}, Lcom/google/android/gms/internal/ads/zzgea;->zza(I)Lcom/google/android/gms/internal/ads/zzgdy;

    move-result-object v6

    const-string v2, "Dk7le2G0L6HUcIBYYyRiEXeHVDMO/oBbMEwszwNBPNgJgR0rMIgTO+3VcCYkagiO"

    const-string v3, "MEG24O0q7awNaelraWn+3ttzyyjUPdINDQhT32ek/uA="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfzq;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/internal/ads/zzfym;Lcom/google/android/gms/internal/ads/zzgdy;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfzt;->zzb:Lcom/google/android/gms/internal/ads/zzfym;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfzt;->zza:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfzt;->zzc:Landroid/util/DisplayMetrics;

    return-void
.end method

.method private static zzb(DLandroid/util/DisplayMetrics;)J
    .locals 2

    .line 1
    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    float-to-double v0, p2

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzc(Landroid/util/DisplayMetrics;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzarw;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzfzt;->zza:Ljava/util/Map;

    const-string v3, "nv"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzfzt;->zzc:Landroid/util/DisplayMetrics;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v3, 0x1

    aput-object v4, v6, v3

    const-string v8, ""

    move-object/from16 v9, p1

    .line 2
    invoke-virtual {v9, v8, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    .line 74
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    check-cast v6, [Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasq;->zza()Lcom/google/android/gms/internal/ads/zzasp;

    move-result-object v8

    .line 4
    aget-object v9, v6, v7

    if-eqz v9, :cond_0

    aget-object v10, v6, v3

    if-eqz v10, :cond_0

    .line 5
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzasp;->zza(J)Lcom/google/android/gms/internal/ads/zzasp;

    .line 6
    aget-object v9, v6, v3

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzasp;->zzb(J)Lcom/google/android/gms/internal/ads/zzasp;

    .line 7
    :cond_0
    aget-object v9, v6, v5

    if-eqz v9, :cond_1

    .line 8
    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzasp;->zzh(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_1
    const/4 v9, 0x3

    .line 9
    aget-object v10, v6, v9

    if-eqz v10, :cond_2

    .line 10
    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Lcom/google/android/gms/internal/ads/zzasp;->zzf(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_2
    const/4 v10, 0x4

    .line 11
    aget-object v11, v6, v10

    if-eqz v11, :cond_3

    .line 12
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-virtual {v8, v11, v12}, Lcom/google/android/gms/internal/ads/zzasp;->zzc(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_3
    const/4 v11, 0x5

    .line 13
    aget-object v11, v6, v11

    const-wide/16 v12, 0x0

    if-eqz v11, :cond_5

    .line 14
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v11, v14, v12

    if-eqz v11, :cond_4

    move v11, v5

    goto :goto_0

    :cond_4
    move v11, v3

    .line 15
    :goto_0
    invoke-virtual {v8, v11}, Lcom/google/android/gms/internal/ads/zzasp;->zzs(I)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_5
    const/4 v11, 0x6

    .line 16
    aget-object v11, v6, v11

    if-eqz v11, :cond_6

    .line 17
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzasp;->zzj(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_6
    const/4 v11, 0x7

    .line 18
    aget-object v11, v6, v11

    if-eqz v11, :cond_7

    .line 19
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Lcom/google/android/gms/internal/ads/zzasp;->zzi(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_7
    const/16 v11, 0x8

    .line 20
    aget-object v6, v6, v11

    if-eqz v6, :cond_9

    .line 21
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    cmp-long v6, v14, v12

    if-eqz v6, :cond_8

    move v6, v5

    goto :goto_1

    :cond_8
    move v6, v3

    .line 22
    :goto_1
    invoke-virtual {v8, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzt(I)Lcom/google/android/gms/internal/ads/zzasp;

    .line 23
    :cond_9
    monitor-enter p2

    :try_start_0
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzfzt;->zzb:Lcom/google/android/gms/internal/ads/zzfym;

    const-string v11, "Oo51wfjSr3e0tlSFcZlk4moN1riB7K5QqAElL+VBM20G5yPiNcxL5OZ2+w3rRCgD"

    const-string v14, "S96ZfaiY+bqhATbTeqYp/0N9f7wy1g2H4l/6SL8+nl8="

    .line 24
    invoke-interface {v6, v11, v14}, Lcom/google/android/gms/internal/ads/zzfym;->zzc(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_1b

    .line 25
    move-object v14, v6

    check-cast v14, Ljava/lang/reflect/Method;

    const-string v14, "nv"

    .line 26
    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/MotionEvent;

    const-string v15, ""

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v14, v11, v7

    aput-object v4, v11, v3

    .line 27
    invoke-virtual {v6, v15, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    if-eqz v6, :cond_1a

    check-cast v6, [Ljava/lang/Object;

    .line 28
    aget-object v11, v6, v7

    if-eqz v11, :cond_a

    .line 29
    check-cast v11, Ljava/lang/Long;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzarw;->zzh(J)Lcom/google/android/gms/internal/ads/zzarw;

    .line 30
    :cond_a
    aget-object v3, v6, v3

    if-eqz v3, :cond_b

    .line 31
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzarw;->zzi(J)Lcom/google/android/gms/internal/ads/zzarw;

    .line 32
    :cond_b
    aget-object v3, v6, v5

    if-eqz v3, :cond_c

    .line 33
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzarw;->zzj(J)Lcom/google/android/gms/internal/ads/zzarw;

    .line 34
    :cond_c
    aget-object v3, v6, v9

    if-eqz v3, :cond_d

    .line 35
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Lcom/google/android/gms/internal/ads/zzarw;->zzv(J)Lcom/google/android/gms/internal/ads/zzarw;

    .line 36
    :cond_d
    aget-object v3, v6, v10

    if-eqz v3, :cond_e

    .line 37
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzw(J)Lcom/google/android/gms/internal/ads/zzarw;

    :cond_e
    const-string v3, "oe"

    .line 38
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfxg;

    if-nez v3, :cond_f

    goto :goto_2

    .line 59
    :cond_f
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zza:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_10

    .line 39
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzz(J)Lcom/google/android/gms/internal/ads/zzarw;

    :cond_10
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzb:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_11

    .line 40
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzy(J)Lcom/google/android/gms/internal/ads/zzarw;

    :cond_11
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzc:J

    cmp-long v9, v5, v12

    if-lez v9, :cond_12

    .line 41
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzx(J)Lcom/google/android/gms/internal/ads/zzarw;

    :cond_12
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzd:J

    cmp-long v3, v5, v12

    if-lez v3, :cond_13

    .line 42
    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzA(J)Lcom/google/android/gms/internal/ads/zzarw;

    .line 38
    :cond_13
    :goto_2
    const-string v3, "oe"

    .line 43
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfxg;

    if-nez v3, :cond_14

    goto/16 :goto_3

    .line 70
    :cond_14
    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zza:J

    cmp-long v5, v5, v12

    if-eqz v5, :cond_17

    .line 44
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zze:D

    if-eqz v4, :cond_16

    .line 45
    move-object v9, v4

    check-cast v9, Landroid/util/DisplayMetrics;

    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 46
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzl(J)Lcom/google/android/gms/internal/ads/zzasp;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzh:F

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzf:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 47
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 48
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzm(J)Lcom/google/android/gms/internal/ads/zzasp;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzi:F

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzg:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    .line 49
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    .line 50
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzn(J)Lcom/google/android/gms/internal/ads/zzasp;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzf:F

    float-to-double v5, v5

    .line 51
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzq(J)Lcom/google/android/gms/internal/ads/zzasp;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzg:F

    float-to-double v5, v5

    .line 52
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzr(J)Lcom/google/android/gms/internal/ads/zzasp;

    const-string v5, "nv"

    .line 53
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    if-eqz v5, :cond_17

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzf:F

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzh:F

    sub-float/2addr v6, v9

    .line 54
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    add-float/2addr v6, v9

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    sub-float/2addr v6, v9

    float-to-double v9, v6

    .line 55
    invoke-static {v9, v10, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v9

    cmp-long v6, v9, v12

    if-eqz v6, :cond_15

    .line 56
    invoke-virtual {v8, v9, v10}, Lcom/google/android/gms/internal/ads/zzasp;->zzo(J)Lcom/google/android/gms/internal/ads/zzasp;

    :cond_15
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzg:F

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfxg;->zzi:F

    sub-float/2addr v6, v3

    .line 57
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    add-float/2addr v6, v3

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v6, v3

    float-to-double v5, v6

    .line 58
    invoke-static {v5, v6, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v5

    cmp-long v3, v5, v12

    if-eqz v3, :cond_17

    .line 59
    invoke-virtual {v8, v5, v6}, Lcom/google/android/gms/internal/ads/zzasp;->zzp(J)Lcom/google/android/gms/internal/ads/zzasp;

    goto :goto_3

    :cond_16
    const/4 v0, 0x0

    .line 71
    throw v0

    .line 60
    :cond_17
    :goto_3
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzarw;->zzJ(Lcom/google/android/gms/internal/ads/zzasp;)Lcom/google/android/gms/internal/ads/zzarw;

    const-string v3, "ro"

    .line 61
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfxh;

    if-eqz v0, :cond_19

    .line 62
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzc(Landroid/util/DisplayMetrics;)Z

    move-result v3

    if-eqz v3, :cond_19

    :goto_4
    array-length v3, v0

    add-int/lit8 v3, v3, -0x2

    if-gt v7, v3, :cond_19

    .line 63
    aget-object v3, v0, v7

    .line 64
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasq;->zza()Lcom/google/android/gms/internal/ads/zzasp;

    move-result-object v5

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzfxh;->zza:F

    float-to-double v8, v6

    if-eqz v4, :cond_18

    .line 65
    move-object v6, v4

    check-cast v6, Landroid/util/DisplayMetrics;

    invoke-static {v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzasp;->zza(J)Lcom/google/android/gms/internal/ads/zzasp;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzfxh;->zzb:F

    float-to-double v8, v3

    .line 66
    invoke-static {v8, v9, v4}, Lcom/google/android/gms/internal/ads/zzfzt;->zzb(DLandroid/util/DisplayMetrics;)J

    move-result-wide v8

    invoke-virtual {v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzasp;->zzb(J)Lcom/google/android/gms/internal/ads/zzasp;

    .line 67
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzasq;

    .line 68
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzarw;->zzK(Lcom/google/android/gms/internal/ads/zzasq;)Lcom/google/android/gms/internal/ads/zzarw;

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_18
    const/4 v0, 0x0

    .line 69
    throw v0

    .line 70
    :cond_19
    monitor-exit p2

    return-void

    :cond_1a
    const/4 v0, 0x0

    .line 72
    throw v0

    :cond_1b
    const/4 v0, 0x0

    .line 73
    throw v0

    :catchall_0
    move-exception v0

    .line 70
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
