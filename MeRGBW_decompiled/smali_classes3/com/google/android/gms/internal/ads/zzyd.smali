.class public final Lcom/google/android/gms/internal/ads/zzyd;
.super Lcom/google/android/gms/internal/ads/zzyj;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlm;


# static fields
.field public static final synthetic zzb:I

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzglj;


# instance fields
.field public final zza:Landroid/content/Context;

.field private final zzd:Ljava/lang/Object;

.field private zze:Lcom/google/android/gms/internal/ads/zzxo;

.field private zzf:Ljava/lang/Thread;

.field private zzg:Lcom/google/android/gms/internal/ads/zzxs;

.field private zzh:Lcom/google/android/gms/internal/ads/zzc;

.field private zzi:Ljava/lang/Boolean;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzww;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzxj;->zza:Lcom/google/android/gms/internal/ads/zzxj;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzglj;->zzc(Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzglj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzyd;->zzc:Lcom/google/android/gms/internal/ads/zzglj;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzww;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzww;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzxo;->zzJ:Lcom/google/android/gms/internal/ads/zzxo;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyj;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzj:Lcom/google/android/gms/internal/ads/zzww;

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzxo;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, v1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxo;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    goto :goto_1

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxn;

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzxn;-><init>(Lcom/google/android/gms/internal/ads/zzxo;[B)V

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzxn;->zzx(Lcom/google/android/gms/internal/ads/zzbk;)Lcom/google/android/gms/internal/ads/zzxn;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzxo;

    .line 6
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(Lcom/google/android/gms/internal/ads/zzxn;[B)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    .line 7
    :goto_1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzc;->zza:Lcom/google/android/gms/internal/ads/zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Lcom/google/android/gms/internal/ads/zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    .line 8
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzU:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method protected static zzi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "und"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected static zzj(Lcom/google/android/gms/internal/ads/zzu;Ljava/lang/String;Z)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzd:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x4

    return p0

    .line 2
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzyd;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzu;->zzd:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    if-nez p1, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    .line 5
    :cond_3
    sget-object p2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 6
    const-string p2, "-"

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 5
    aget-object p0, p0, v0

    .line 7
    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    .line 8
    aget-object p1, p1, v0

    .line 9
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v1

    :cond_4
    return v0

    :cond_5
    :goto_1
    const/4 p0, 0x3

    return p0

    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    if-nez p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v0
.end method

.method static synthetic zzm(II)I
    .locals 0

    if-eqz p0, :cond_0

    if-ne p0, p1, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    and-int/2addr p0, p1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->bitCount(I)I

    move-result p0

    return p0
.end method

.method static synthetic zzn(Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzgjz;)I
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgjz;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    move v2, v0

    .line 2
    :goto_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzu;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzw;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzw;->zzb:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzgjz;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const v1, 0x7fffffff

    :goto_2
    return v1
.end method

.method static synthetic zzo()Lcom/google/android/gms/internal/ads/zzglj;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzyd;->zzc:Lcom/google/android/gms/internal/ads/zzglj;

    return-object v0
.end method

.method private final zzu()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzxo;->zzU:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzxs;->zza()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 2
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static zzv(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzbk;Ljava/util/Map;)V
    .locals 2

    const/4 p2, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzwq;->zzb:I

    if-ge p2, v0, :cond_1

    .line 2
    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/zzwq;->zza(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v0

    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbk;->zzH:Lcom/google/android/gms/internal/ads/zzgkc;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzgkc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbg;

    if-nez v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 4
    throw p0

    :cond_1
    return-void
.end method

.method private static final zzw(ILcom/google/android/gms/internal/ads/zzyi;[[[ILcom/google/android/gms/internal/ads/zzxu;Ljava/util/Comparator;)Landroid/util/Pair;
    .locals 17

    move-object/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_7

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v5

    move/from16 v6, p0

    if-ne v6, v5, :cond_6

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyi;->zzb(I)Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v5

    const/4 v7, 0x0

    .line 4
    :goto_1
    iget v8, v5, Lcom/google/android/gms/internal/ads/zzwq;->zzb:I

    if-ge v7, v8, :cond_6

    .line 5
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzwq;->zza(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v8

    .line 6
    aget-object v9, p2, v3

    aget-object v9, v9, v7

    move-object/from16 v10, p3

    .line 7
    invoke-interface {v10, v3, v8, v9}, Lcom/google/android/gms/internal/ads/zzxu;->zza(ILcom/google/android/gms/internal/ads/zzbf;[I)Ljava/util/List;

    move-result-object v9

    .line 8
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbf;->zza:I

    new-array v11, v8, [Z

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v8, :cond_5

    add-int/lit8 v13, v12, 0x1

    .line 9
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/google/android/gms/internal/ads/zzxv;

    .line 10
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzxv;->zza()I

    move-result v15

    .line 11
    aget-boolean v12, v11, v12

    if-nez v12, :cond_4

    if-nez v15, :cond_0

    goto :goto_6

    :cond_0
    const/4 v12, 0x1

    if-ne v15, v12, :cond_1

    .line 12
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v12

    goto :goto_5

    .line 20
    :cond_1
    new-instance v15, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v13

    :goto_3
    if-ge v2, v8, :cond_3

    .line 15
    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lcom/google/android/gms/internal/ads/zzxv;

    .line 16
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzxv;->zza()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 17
    invoke-virtual {v14, v12}, Lcom/google/android/gms/internal/ads/zzxv;->zzc(Lcom/google/android/gms/internal/ads/zzxv;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 19
    aput-boolean v0, v11, v2

    goto :goto_4

    :cond_2
    const/4 v0, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v12, v0

    move-object/from16 v0, p1

    goto :goto_3

    :cond_3
    move-object v12, v15

    .line 20
    :goto_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_6
    move-object/from16 v0, p1

    move v12, v13

    goto :goto_2

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p1

    goto :goto_1

    :cond_6
    move-object/from16 v10, p3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p1

    goto/16 :goto_0

    .line 21
    :cond_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    move-object/from16 v0, p4

    .line 22
    invoke-static {v1, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    .line 24
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 25
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzxv;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzxv;->zzc:I

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    const/4 v2, 0x0

    .line 26
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzxv;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzye;

    .line 27
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzxv;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    .line 28
    invoke-direct {v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzye;-><init>(Lcom/google/android/gms/internal/ads/zzbf;[II)V

    .line 27
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzxv;->zza:I

    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 27
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzll;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzY:Z

    .line 2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final zzb()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzf:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "DefaultTrackSelector is accessed on the wrong thread."

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzghc;->zzi(ZLjava/lang/Object;)V

    .line 3
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzxs;->zze()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    .line 5
    :cond_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzyj;->zzb()V

    return-void

    :catchall_0
    move-exception v1

    .line 3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzxo;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzd()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzc;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Lcom/google/android/gms/internal/ads/zzc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Lcom/google/android/gms/internal/ads/zzc;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzu()V

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzxn;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzxo;-><init>(Lcom/google/android/gms/internal/ads/zzxn;[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    .line 2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbk;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    .line 3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    iget-boolean p1, v0, Lcom/google/android/gms/internal/ads/zzxo;->zzU:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    if-nez p1, :cond_0

    const-string p1, "DefaultTrackSelector"

    const-string v0, "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument."

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzym;->zzs()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    .line 3
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzlm;
    .locals 0

    return-object p0
.end method

.method protected final zzh(Lcom/google/android/gms/internal/ads/zzyi;[[[I[ILcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzbe;)Landroid/util/Pair;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhz;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 1
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzd:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzf:Ljava/lang/Thread;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzyd;->zze:Lcom/google/android/gms/internal/ads/zzxo;

    .line 2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Ljava/lang/Boolean;

    if-nez v4, :cond_0

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzeo;->zzN(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Ljava/lang/Boolean;

    .line 4
    :cond_0
    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzU:Z

    if-eqz v4, :cond_1

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x20

    if-lt v4, v6, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    if-nez v4, :cond_1

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzxs;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Ljava/lang/Boolean;

    .line 5
    invoke-direct {v6, v4, v1, v7}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzyd;Ljava/lang/Boolean;)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    :cond_1
    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzye;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    const/4 v9, 0x1

    if-ge v8, v4, :cond_3

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v10

    if-ne v10, v4, :cond_2

    .line 7
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zzb(I)Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v10

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzwq;->zzb:I

    if-lez v10, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_1
    new-instance v10, Lcom/google/android/gms/internal/ads/zzxf;

    invoke-direct {v10, v1, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzxf;-><init>(Lcom/google/android/gms/internal/ads/zzyd;Lcom/google/android/gms/internal/ads/zzxo;Z[I)V

    sget-object v8, Lcom/google/android/gms/internal/ads/zzxb;->zza:Lcom/google/android/gms/internal/ads/zzxb;

    .line 8
    invoke-static {v9, v0, v2, v10, v8}, Lcom/google/android/gms/internal/ads/zzyd;->zzw(ILcom/google/android/gms/internal/ads/zzyi;[[[ILcom/google/android/gms/internal/ads/zzxu;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 9
    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzye;

    aput-object v11, v6, v10

    :cond_4
    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    .line 10
    :cond_5
    iget-object v11, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Lcom/google/android/gms/internal/ads/zzye;

    iget-object v11, v11, Lcom/google/android/gms/internal/ads/zzye;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/google/android/gms/internal/ads/zzye;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzye;->zzb:[I

    aget v8, v8, v7

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzbf;->zza(I)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v8

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzu;->zzd:Ljava/lang/String;

    .line 11
    :goto_2
    iget-object v11, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzw:Lcom/google/android/gms/internal/ads/zzbi;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzbi;->zzb:I

    .line 12
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzk:Z

    if-eqz v11, :cond_6

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    if-eqz v11, :cond_6

    .line 13
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzP(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v11

    goto :goto_3

    :cond_6
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Lcom/google/android/gms/internal/ads/zzxk;

    invoke-direct {v12, v5, v8, v3, v11}, Lcom/google/android/gms/internal/ads/zzxk;-><init>(Lcom/google/android/gms/internal/ads/zzxo;Ljava/lang/String;[ILandroid/graphics/Point;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzxe;->zza:Lcom/google/android/gms/internal/ads/zzxe;

    .line 14
    invoke-static {v4, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzyd;->zzw(ILcom/google/android/gms/internal/ads/zzyi;[[[ILcom/google/android/gms/internal/ads/zzxu;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    .line 15
    iget-boolean v11, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzE:Z

    const/4 v11, 0x4

    if-nez v3, :cond_7

    new-instance v12, Lcom/google/android/gms/internal/ads/zzxh;

    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzxh;-><init>(Lcom/google/android/gms/internal/ads/zzxo;)V

    sget-object v13, Lcom/google/android/gms/internal/ads/zzxc;->zza:Lcom/google/android/gms/internal/ads/zzxc;

    .line 16
    invoke-static {v11, v0, v2, v12, v13}, Lcom/google/android/gms/internal/ads/zzyd;->zzw(ILcom/google/android/gms/internal/ads/zzyi;[[[ILcom/google/android/gms/internal/ads/zzxu;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v12

    goto :goto_4

    :cond_7
    const/4 v12, 0x0

    :goto_4
    if-eqz v12, :cond_8

    .line 17
    iget-object v3, v12, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v12, v12, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Lcom/google/android/gms/internal/ads/zzye;

    aput-object v12, v6, v3

    goto :goto_5

    :cond_8
    if-eqz v3, :cond_9

    .line 18
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzye;

    aput-object v3, v6, v12

    .line 19
    :cond_9
    :goto_5
    iget-boolean v3, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzB:Z

    if-eqz v3, :cond_d

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzyd;->zza:Landroid/content/Context;

    if-nez v3, :cond_a

    goto :goto_6

    .line 68
    :cond_a
    const-string v12, "captioning"

    .line 20
    invoke-virtual {v3, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/CaptioningManager;

    if-eqz v3, :cond_d

    .line 21
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_b

    goto :goto_6

    .line 22
    :cond_b
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager;->getLocale()Ljava/util/Locale;

    move-result-object v3

    if-nez v3, :cond_c

    goto :goto_6

    .line 23
    :cond_c
    sget-object v12, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 24
    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    goto :goto_7

    :cond_d
    :goto_6
    const/4 v3, 0x0

    .line 19
    :goto_7
    new-instance v12, Lcom/google/android/gms/internal/ads/zzxg;

    invoke-direct {v12, v5, v8, v3}, Lcom/google/android/gms/internal/ads/zzxg;-><init>(Lcom/google/android/gms/internal/ads/zzxo;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/google/android/gms/internal/ads/zzxd;->zza:Lcom/google/android/gms/internal/ads/zzxd;

    const/4 v8, 0x3

    .line 25
    invoke-static {v8, v0, v2, v12, v3}, Lcom/google/android/gms/internal/ads/zzyd;->zzw(ILcom/google/android/gms/internal/ads/zzyi;[[[ILcom/google/android/gms/internal/ads/zzxu;Ljava/util/Comparator;)Landroid/util/Pair;

    move-result-object v3

    if-eqz v3, :cond_e

    .line 26
    iget-object v12, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzye;

    aput-object v3, v6, v12

    :cond_e
    move v3, v7

    :goto_8
    if-ge v3, v4, :cond_15

    .line 27
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v12

    if-eq v12, v4, :cond_14

    if-eq v12, v9, :cond_14

    if-eq v12, v8, :cond_14

    if-eq v12, v11, :cond_14

    .line 28
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzyi;->zzb(I)Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v12

    aget-object v13, v2, v3

    move v14, v7

    move/from16 v16, v14

    const/4 v15, 0x0

    const/16 v17, 0x0

    .line 29
    :goto_9
    iget v8, v12, Lcom/google/android/gms/internal/ads/zzwq;->zzb:I

    if-ge v14, v8, :cond_12

    .line 30
    invoke-virtual {v12, v14}, Lcom/google/android/gms/internal/ads/zzwq;->zza(I)Lcom/google/android/gms/internal/ads/zzbf;

    move-result-object v8

    .line 31
    aget-object v18, v13, v14

    move v9, v7

    move-object/from16 v11, v17

    .line 32
    :goto_a
    iget v10, v8, Lcom/google/android/gms/internal/ads/zzbf;->zza:I

    if-ge v9, v10, :cond_11

    .line 33
    aget v10, v18, v9

    iget-boolean v4, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzV:Z

    invoke-static {v10, v4}, Lcom/google/android/gms/internal/ads/zzln$-CC;->zzZ(IZ)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 34
    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzbf;->zza(I)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v4

    new-instance v10, Lcom/google/android/gms/internal/ads/zzxm;

    .line 35
    aget v7, v18, v9

    invoke-direct {v10, v4, v7}, Lcom/google/android/gms/internal/ads/zzxm;-><init>(Lcom/google/android/gms/internal/ads/zzu;I)V

    if-eqz v11, :cond_f

    .line 36
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzxm;->zza(Lcom/google/android/gms/internal/ads/zzxm;)I

    move-result v4

    if-lez v4, :cond_10

    :cond_f
    move-object v15, v8

    move/from16 v16, v9

    move-object v11, v10

    :cond_10
    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    goto :goto_a

    :cond_11
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v17, v11

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_9

    :cond_12
    if-nez v15, :cond_13

    const/4 v4, 0x0

    goto :goto_b

    .line 38
    :cond_13
    new-instance v4, Lcom/google/android/gms/internal/ads/zzye;

    filled-new-array/range {v16 .. v16}, [I

    move-result-object v7

    const/4 v8, 0x0

    .line 37
    invoke-direct {v4, v15, v7, v8}, Lcom/google/android/gms/internal/ads/zzye;-><init>(Lcom/google/android/gms/internal/ads/zzbf;[II)V

    .line 38
    :goto_b
    aput-object v4, v6, v3

    :cond_14
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v11, 0x4

    goto :goto_8

    .line 37
    :cond_15
    new-instance v2, Ljava/util/HashMap;

    .line 39
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x2

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v3, :cond_16

    .line 40
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zzb(I)Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v4

    .line 41
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzyd;->zzv(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzbk;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzyi;->zze()Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v4

    .line 42
    invoke-static {v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzyd;->zzv(Lcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzbk;Ljava/util/Map;)V

    const/4 v8, 0x0

    :goto_d
    if-ge v8, v3, :cond_18

    .line 43
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v4

    .line 44
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzbg;

    if-nez v4, :cond_17

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_17
    const/4 v4, 0x0

    .line 69
    throw v4

    :cond_18
    const/4 v4, 0x0

    const/4 v8, 0x0

    :goto_e
    if-ge v8, v3, :cond_1b

    .line 45
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zzb(I)Lcom/google/android/gms/internal/ads/zzwq;

    move-result-object v2

    .line 46
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzxo;->zzb(ILcom/google/android/gms/internal/ads/zzwq;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_f

    .line 47
    :cond_19
    invoke-virtual {v5, v8, v2}, Lcom/google/android/gms/internal/ads/zzxo;->zzc(ILcom/google/android/gms/internal/ads/zzwq;)Lcom/google/android/gms/internal/ads/zzxp;

    move-result-object v2

    if-nez v2, :cond_1a

    .line 50
    aput-object v4, v6, v8

    :goto_f
    add-int/lit8 v8, v8, 0x1

    const/4 v3, 0x2

    goto :goto_e

    .line 48
    :cond_1a
    throw v4

    :cond_1b
    move v2, v3

    const/4 v8, 0x0

    :goto_10
    if-ge v8, v2, :cond_1e

    .line 51
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v2

    .line 52
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzxo;->zza(I)Z

    move-result v3

    if-nez v3, :cond_1d

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzI:Lcom/google/android/gms/internal/ads/zzgke;

    .line 53
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzgke;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v4, 0x0

    goto :goto_12

    :cond_1d
    :goto_11
    const/4 v4, 0x0

    .line 54
    aput-object v4, v6, v8

    :goto_12
    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x2

    goto :goto_10

    :cond_1e
    const/4 v4, 0x0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzyd;->zzj:Lcom/google/android/gms/internal/ads/zzww;

    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzym;->zzt()Lcom/google/android/gms/internal/ads/zzyu;

    move-result-object v3

    .line 56
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzwx;->zzd([Lcom/google/android/gms/internal/ads/zzye;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v7

    const/4 v8, 0x2

    new-array v15, v8, [Lcom/google/android/gms/internal/ads/zzyf;

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v8, :cond_22

    .line 57
    aget-object v8, v6, v14

    if-eqz v8, :cond_21

    iget-object v11, v8, Lcom/google/android/gms/internal/ads/zzye;->zzb:[I

    .line 58
    array-length v9, v11

    if-nez v9, :cond_1f

    goto :goto_15

    :cond_1f
    const/4 v13, 0x1

    if-ne v9, v13, :cond_20

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzye;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzyg;

    const/16 v16, 0x0

    .line 59
    aget v22, v11, v16

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v23, 0x0

    move-object/from16 v20, v9

    move-object/from16 v21, v8

    .line 60
    invoke-direct/range {v20 .. v25}, Lcom/google/android/gms/internal/ads/zzyg;-><init>(Lcom/google/android/gms/internal/ads/zzbf;IIILjava/lang/Object;)V

    move/from16 v17, v13

    move/from16 v19, v14

    goto :goto_14

    :cond_20
    const/16 v16, 0x0

    .line 62
    iget-object v10, v8, Lcom/google/android/gms/internal/ads/zzye;->zza:Lcom/google/android/gms/internal/ads/zzbf;

    .line 61
    invoke-virtual {v7, v14}, Lcom/google/android/gms/internal/ads/zzgjz;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzgjz;

    const/4 v12, 0x0

    move-object v9, v2

    move/from16 v17, v13

    move-object v13, v3

    move/from16 v19, v14

    move-object v14, v8

    .line 62
    invoke-virtual/range {v9 .. v14}, Lcom/google/android/gms/internal/ads/zzww;->zza(Lcom/google/android/gms/internal/ads/zzbf;[IILcom/google/android/gms/internal/ads/zzyu;Lcom/google/android/gms/internal/ads/zzgjz;)Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v9

    :goto_14
    aput-object v9, v15, v19

    goto :goto_16

    :cond_21
    :goto_15
    move/from16 v19, v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    :goto_16
    add-int/lit8 v14, v19, 0x1

    const/4 v8, 0x2

    goto :goto_13

    :cond_22
    const/16 v16, 0x0

    new-array v2, v8, [Lcom/google/android/gms/internal/ads/zzlo;

    move/from16 v7, v16

    :goto_17
    if-ge v7, v8, :cond_26

    .line 63
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v3

    .line 64
    invoke-virtual {v5, v7}, Lcom/google/android/gms/internal/ads/zzxo;->zza(I)Z

    move-result v6

    if-nez v6, :cond_25

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzI:Lcom/google/android/gms/internal/ads/zzgke;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v6, v3}, Lcom/google/android/gms/internal/ads/zzgke;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_18

    .line 65
    :cond_23
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzyi;->zza(I)I

    move-result v3

    const/4 v6, -0x2

    if-eq v3, v6, :cond_24

    aget-object v3, v15, v7

    if-eqz v3, :cond_25

    :cond_24
    sget-object v3, Lcom/google/android/gms/internal/ads/zzlo;->zza:Lcom/google/android/gms/internal/ads/zzlo;

    goto :goto_19

    :cond_25
    :goto_18
    move-object v3, v4

    .line 66
    :goto_19
    aput-object v3, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_17

    .line 67
    :cond_26
    iget-boolean v0, v5, Lcom/google/android/gms/internal/ads/zzxo;->zzW:Z

    .line 68
    invoke-static {v2, v15}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    .line 2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final synthetic zzk(Lcom/google/android/gms/internal/ads/zzxo;Lcom/google/android/gms/internal/ads/zzu;)Z
    .locals 7

    .line 1
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/zzxo;->zzU:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzi:Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_7

    :cond_0
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzu;->zzG:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_7

    const/4 v2, 0x2

    if-le p1, v2, :cond_7

    .line 3
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    const/16 v3, 0x20

    const/4 v4, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, 0x3

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v5, "audio/eac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v0

    goto :goto_0

    :sswitch_1
    const-string v5, "audio/ac4"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v6

    goto :goto_0

    :sswitch_2
    const-string v5, "audio/ac3"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v4

    goto :goto_0

    :sswitch_3
    const-string v5, "audio/eac3-joc"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, v0, :cond_3

    if-eq v1, v2, :cond_3

    if-eq v1, v6, :cond_3

    goto :goto_1

    :cond_3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zza()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_2

    .line 3
    :cond_4
    :goto_1
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v3, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zza()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zzb()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzxs;->zzc()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzg:Lcom/google/android/gms/internal/ads/zzxs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzyd;->zzh:Lcom/google/android/gms/internal/ads/zzc;

    .line 6
    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzxs;->zzd(Lcom/google/android/gms/internal/ads/zzc;Lcom/google/android/gms/internal/ads/zzu;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    return v4

    :cond_6
    move v0, v4

    :cond_7
    :goto_2
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e929daa -> :sswitch_3
        0xb269698 -> :sswitch_2
        0xb269699 -> :sswitch_1
        0x59ae0c65 -> :sswitch_0
    .end sparse-switch
.end method

.method final synthetic zzl()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzyd;->zzu()V

    return-void
.end method
