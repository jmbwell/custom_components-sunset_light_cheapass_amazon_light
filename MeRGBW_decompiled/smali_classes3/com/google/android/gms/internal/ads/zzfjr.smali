.class public final Lcom/google/android/gms/internal/ads/zzfjr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzehk;

.field private final zzb:Ljava/lang/String;

.field private final zzc:Ljava/lang/String;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzh:Lcom/google/android/gms/common/util/Clock;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzauu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfcv;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/common/util/Clock;Lcom/google/android/gms/internal/ads/zzauu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zza:Lcom/google/android/gms/internal/ads/zzehk;

    iget-object p1, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzc:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Landroid/content/Context;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzf:Lcom/google/android/gms/internal/ads/zzfcv;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzg:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzh:Lcom/google/android/gms/common/util/Clock;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzi:Lcom/google/android/gms/internal/ads/zzauu;

    return-void
.end method

.method public static zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const-string p2, ""

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/ads/zzfcv;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcv;->zza:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfjr;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/ads/zzfcv;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcv;->zzb:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzfjr;->zzg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/client/zzl;->zzj()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "fakeForAdDebugLog"

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcj;Ljava/util/List;)Ljava/util/List;
    .locals 8

    .line 1
    const-string v5, ""

    const/4 v7, 0x0

    const/4 v3, 0x0

    const-string v4, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzb(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcj;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcum;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcj;ZLjava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzcum;)Ljava/util/List;
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "0"

    const-string v5, "1"

    const/4 v6, 0x1

    move/from16 v7, p3

    if-eq v6, v7, :cond_0

    move-object v8, v4

    goto :goto_1

    :cond_0
    move-object v8, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v10, p1

    .line 3
    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/internal/ads/zzfcr;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfcr;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    const-string v12, "@gw_adlocid@"

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzfdc;->zzg:Ljava/lang/String;

    invoke-static {v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "@gw_adnetrefresh@"

    .line 4
    invoke-static {v9, v11, v8}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zzb:Ljava/lang/String;

    const-string v11, "@gw_sdkver@"

    .line 5
    invoke-static {v8, v11, v9}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v1, :cond_2

    const-string v9, "@gw_qdata@"

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzy:Ljava/lang/String;

    .line 6
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@gw_adnetid@"

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzx:Ljava/lang/String;

    .line 7
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@gw_allocid@"

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzw:Ljava/lang/String;

    .line 8
    invoke-static {v8, v9, v11}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Landroid/content/Context;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzaw:Ljava/util/Map;

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zzW:Z

    .line 9
    invoke-static {v8, v9, v12, v11}, Lcom/google/android/gms/internal/ads/zzbxt;->zza(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v8

    .line 10
    sget-object v11, Lcom/google/android/gms/internal/ads/zzbci;->zzoj:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v11

    .line 10
    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_2

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zze:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_2

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v9}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result v9

    if-eq v6, v9, :cond_1

    goto :goto_2

    :cond_1
    move-object v4, v5

    :goto_2
    const-string v5, "@gw_aps@"

    .line 13
    invoke-static {v8, v5, v4}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_2
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zza:Lcom/google/android/gms/internal/ads/zzehk;

    const-string v5, "@gw_adnetstatus@"

    .line 14
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzehk;->zzg()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v5, v9}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 15
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzehk;->zzh()J

    move-result-wide v8

    const/16 v4, 0xa

    invoke-static {v8, v9, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v8

    const-string v9, "@gw_ttr@"

    .line 16
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zzc:Ljava/lang/String;

    const-string v9, "@gw_seqnum@"

    .line 17
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zzd:Ljava/lang/String;

    const-string v9, "@gw_sessid@"

    .line 18
    invoke-static {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 19
    sget-object v8, Lcom/google/android/gms/internal/ads/zzbci;->zzos:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v8

    .line 19
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "@gw_placement_id@"

    if-eqz p7, :cond_3

    .line 21
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzcum;->zza()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-lez v9, :cond_3

    .line 23
    invoke-virtual/range {p7 .. p7}, Lcom/google/android/gms/internal/ads/zzcum;->zza()J

    move-result-wide v11

    invoke-static {v11, v12, v4}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v4

    .line 24
    invoke-static {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 34
    :cond_3
    const-string v4, ""

    .line 22
    invoke-static {v5, v8, v4}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 24
    :cond_4
    :goto_3
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzdW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 26
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_5

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move v8, v6

    .line 27
    :cond_5
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v9, v4, 0x1

    if-nez v8, :cond_6

    if-nez v4, :cond_9

    goto :goto_4

    :cond_6
    move v6, v9

    .line 28
    :goto_4
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzfjr;->zzi:Lcom/google/android/gms/internal/ads/zzauu;

    .line 29
    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzauu;->zza(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 30
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    if-eqz v8, :cond_7

    const-string v5, "ms"

    move-object/from16 v8, p4

    .line 31
    invoke-virtual {v4, v5, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    goto :goto_5

    :cond_7
    move-object/from16 v8, p4

    :goto_5
    if-eqz v6, :cond_8

    const-string v5, "attok"

    move-object/from16 v6, p5

    .line 32
    invoke-virtual {v4, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object/from16 v6, p5

    .line 33
    :goto_6
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_7

    :cond_9
    move-object/from16 v8, p4

    move-object/from16 v6, p5

    .line 34
    :goto_7
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    return-object v2
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzfcj;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzbvh;)Ljava/util/List;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzh:Lcom/google/android/gms/common/util/Clock;

    .line 2
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v1

    :try_start_0
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvh;->zzb()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzbvh;->zzc()I

    move-result p3

    .line 3
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzdX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzg:Lcom/google/android/gms/internal/ads/zzfcw;

    if-nez v4, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgha;->zzc()Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v4

    goto :goto_1

    .line 20
    :cond_0
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfcw;->zza:Lcom/google/android/gms/internal/ads/zzfcv;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzf:Lcom/google/android/gms/internal/ads/zzfcv;

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgha;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v4

    .line 6
    :goto_1
    sget-object v5, Lcom/google/android/gms/internal/ads/zzfjq;->zza:Lcom/google/android/gms/internal/ads/zzfjq;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzgha;->zzb(Lcom/google/android/gms/internal/ads/zzggr;)Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzgha;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 9
    check-cast v5, Ljava/lang/String;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Lcom/google/android/gms/internal/ads/zzfjp;

    .line 10
    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzgha;->zzb(Lcom/google/android/gms/internal/ads/zzggr;)Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/google/android/gms/internal/ads/zzgha;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 11
    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 13
    invoke-static {v5}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_userid@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_custom_data@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_tmstmp@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "@gw_rwd_itm@"

    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@gw_rwd_amt@"

    .line 17
    invoke-static {v6, v7, p3}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zzb:Ljava/lang/String;

    const-string v8, "@gw_sdkver@"

    .line 18
    invoke-static {v6, v8, v7}, Lcom/google/android/gms/internal/ads/zzfjr;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfjr;->zze:Landroid/content/Context;

    iget-boolean v8, p1, Lcom/google/android/gms/internal/ads/zzfcj;->zzW:Z

    iget-object v9, p1, Lcom/google/android/gms/internal/ads/zzfcj;->zzaw:Ljava/util/Map;

    .line 19
    invoke-static {v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbxt;->zza(Ljava/lang/String;Landroid/content/Context;ZLjava/util/Map;)Ljava/lang/String;

    move-result-object v6

    .line 20
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    .line 4
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Unable to determine award type and amount."

    .line 5
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method
