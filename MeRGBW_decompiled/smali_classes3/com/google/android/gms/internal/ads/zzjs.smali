.class final Lcom/google/android/gms/internal/ads/zzjs;
.super Lcom/google/android/gms/internal/ads/zze;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzik;


# static fields
.field public static final synthetic zzd:I


# instance fields
.field private final zzA:J

.field private final zzB:Lcom/google/android/gms/internal/ads/zzda;

.field private final zzC:Lcom/google/android/gms/internal/ads/zzlz;

.field private zzD:I

.field private zzE:I

.field private zzF:Z

.field private zzG:Lcom/google/android/gms/internal/ads/zzls;

.field private zzH:Lcom/google/android/gms/internal/ads/zzlt;

.field private zzI:Lcom/google/android/gms/internal/ads/zzij;

.field private zzJ:Lcom/google/android/gms/internal/ads/zzaw;

.field private zzK:Lcom/google/android/gms/internal/ads/zzam;

.field private zzL:Ljava/lang/Object;

.field private zzM:Landroid/view/Surface;

.field private zzN:I

.field private zzO:Lcom/google/android/gms/internal/ads/zzeg;

.field private zzP:Lcom/google/android/gms/internal/ads/zzc;

.field private zzQ:F

.field private zzR:Z

.field private zzS:Z

.field private zzT:Z

.field private zzU:I

.field private zzV:Lcom/google/android/gms/internal/ads/zzam;

.field private zzW:Lcom/google/android/gms/internal/ads/zzld;

.field private zzX:I

.field private zzY:J

.field private zzZ:Lcom/google/android/gms/internal/ads/zzwi;

.field final zzb:Lcom/google/android/gms/internal/ads/zzyn;

.field final zzc:Lcom/google/android/gms/internal/ads/zzaw;

.field private final zze:Lcom/google/android/gms/internal/ads/zzde;

.field private final zzf:Landroid/content/Context;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzba;

.field private final zzh:[Lcom/google/android/gms/internal/ads/zzll;

.field private final zzi:[Lcom/google/android/gms/internal/ads/zzll;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzym;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdl;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzkd;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzkf;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzdr;

.field private final zzo:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private final zzp:Lcom/google/android/gms/internal/ads/zzbc;

.field private final zzq:Ljava/util/List;

.field private final zzr:Z

.field private final zzs:Lcom/google/android/gms/internal/ads/zzmd;

.field private final zzt:Landroid/os/Looper;

.field private final zzu:Lcom/google/android/gms/internal/ads/zzyu;

.field private final zzv:Lcom/google/android/gms/internal/ads/zzdb;

.field private final zzw:Lcom/google/android/gms/internal/ads/zzir;

.field private final zzx:Lcom/google/android/gms/internal/ads/zzjq;

.field private final zzy:Lcom/google/android/gms/internal/ads/zzmb;

.field private final zzz:Lcom/google/android/gms/internal/ads/zzmc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "media3.exoplayer"

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzak;->zzb(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzii;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zze;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzde;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdb;->zza:Lcom/google/android/gms/internal/ads/zzdb;

    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/ads/zzde;-><init>(Lcom/google/android/gms/internal/ads/zzdb;)V

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zze:Lcom/google/android/gms/internal/ads/zzde;

    const-string v3, "]"

    const-string v4, " [AndroidXMedia3/1.8.0] ["

    const-string v5, "Init "

    :try_start_0
    const-string v6, "ExoPlayerImpl"

    .line 2
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1e

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    add-int/2addr v9, v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v6, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzii;->zza:Landroid/content/Context;

    .line 4
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzf:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzii;->zzh:Lcom/google/android/gms/internal/ads/zzggr;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzii;->zzb:Lcom/google/android/gms/internal/ads/zzdb;

    .line 5
    invoke-interface {v3, v4}, Lcom/google/android/gms/internal/ads/zzggr;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzmd;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzii;->zzj:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzU:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzii;->zzk:Lcom/google/android/gms/internal/ads/zzc;

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzP:Lcom/google/android/gms/internal/ads/zzc;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzii;->zzl:I

    iput v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzN:I

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzR:Z

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzii;->zzq:J

    iput-wide v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzA:J

    .line 6
    new-instance v4, Lcom/google/android/gms/internal/ads/zzir;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Lcom/google/android/gms/internal/ads/zzir;-><init>(Lcom/google/android/gms/internal/ads/zzjs;[B)V

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzw:Lcom/google/android/gms/internal/ads/zzir;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjq;

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzjq;-><init>([B)V

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzx:Lcom/google/android/gms/internal/ads/zzjq;

    new-instance v12, Landroid/os/Handler;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzii;->zzi:Landroid/os/Looper;

    .line 7
    invoke-direct {v12, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzii;->zzc:Lcom/google/android/gms/internal/ads/zzght;

    .line 8
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzght;->zza()Ljava/lang/Object;

    move-result-object v6

    move-object v11, v6

    check-cast v11, Lcom/google/android/gms/internal/ads/zzlq;

    move-object v13, v4

    move-object v14, v4

    move-object v15, v4

    move-object/from16 v16, v4

    .line 9
    invoke-interface/range {v11 .. v16}, Lcom/google/android/gms/internal/ads/zzlq;->zza(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zzpv;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zztn;)[Lcom/google/android/gms/internal/ads/zzll;

    move-result-object v4

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    .line 10
    array-length v4, v4

    const/4 v4, 0x2

    new-array v6, v4, [Lcom/google/android/gms/internal/ads/zzll;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzi:[Lcom/google/android/gms/internal/ads/zzll;

    move v6, v3

    :goto_0
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzi:[Lcom/google/android/gms/internal/ads/zzll;

    .line 11
    array-length v8, v7

    if-ge v6, v4, :cond_0

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    .line 12
    aget-object v8, v8, v6

    .line 13
    aput-object v5, v7, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzii;->zze:Lcom/google/android/gms/internal/ads/zzght;

    .line 14
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzght;->zza()Ljava/lang/Object;

    move-result-object v6

    move-object v15, v6

    check-cast v15, Lcom/google/android/gms/internal/ads/zzym;

    iput-object v15, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzj:Lcom/google/android/gms/internal/ads/zzym;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzii;->zzd:Lcom/google/android/gms/internal/ads/zzght;

    .line 15
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzght;->zza()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzuo;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzii;->zzg:Lcom/google/android/gms/internal/ads/zzght;

    .line 16
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzght;->zza()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzyu;

    iput-object v6, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzu:Lcom/google/android/gms/internal/ads/zzyu;

    iget-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzii;->zzm:Z

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzr:Z

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzii;->zzn:Lcom/google/android/gms/internal/ads/zzlt;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzH:Lcom/google/android/gms/internal/ads/zzlt;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzii;->zzo:Lcom/google/android/gms/internal/ads/zzls;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzG:Lcom/google/android/gms/internal/ads/zzls;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzii;->zzi:Landroid/os/Looper;

    iput-object v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzt:Landroid/os/Looper;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzii;->zzb:Lcom/google/android/gms/internal/ads/zzdb;

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzv:Lcom/google/android/gms/internal/ads/zzdb;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzg:Lcom/google/android/gms/internal/ads/zzba;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzjp;

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzjp;-><init>(Lcom/google/android/gms/internal/ads/zzjs;)V

    .line 17
    invoke-direct {v9, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzdr;-><init>(Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdb;Lcom/google/android/gms/internal/ads/zzdn;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    .line 18
    new-instance v9, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v9}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzo:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v11, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzq:Ljava/util/List;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzwi;

    .line 20
    invoke-direct {v11, v3}, Lcom/google/android/gms/internal/ads/zzwi;-><init>(I)V

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    sget-object v11, Lcom/google/android/gms/internal/ads/zzij;->zza:Lcom/google/android/gms/internal/ads/zzij;

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzI:Lcom/google/android/gms/internal/ads/zzij;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    .line 21
    array-length v11, v11

    new-array v11, v4, [Lcom/google/android/gms/internal/ads/zzlo;

    new-array v12, v4, [Lcom/google/android/gms/internal/ads/zzyf;

    sget-object v13, Lcom/google/android/gms/internal/ads/zzbm;->zza:Lcom/google/android/gms/internal/ads/zzbm;

    invoke-direct {v14, v11, v12, v13, v5}, Lcom/google/android/gms/internal/ads/zzyn;-><init>([Lcom/google/android/gms/internal/ads/zzlo;[Lcom/google/android/gms/internal/ads/zzyf;Lcom/google/android/gms/internal/ads/zzbm;Ljava/lang/Object;)V

    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Lcom/google/android/gms/internal/ads/zzyn;

    .line 22
    new-instance v11, Lcom/google/android/gms/internal/ads/zzbc;

    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzav;

    .line 23
    invoke-direct {v11}, Lcom/google/android/gms/internal/ads/zzav;-><init>()V

    const/16 v12, 0x14

    new-array v12, v12, [I

    fill-array-data v12, :array_0

    .line 24
    invoke-virtual {v11, v12}, Lcom/google/android/gms/internal/ads/zzav;->zzc([I)Lcom/google/android/gms/internal/ads/zzav;

    .line 25
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzym;->zzd()Z

    const/16 v12, 0x1d

    .line 26
    invoke-virtual {v11, v12, v10}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v12, 0x17

    .line 27
    invoke-virtual {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v12, 0x19

    .line 28
    invoke-virtual {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v12, 0x21

    .line 29
    invoke-virtual {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v12, 0x1a

    .line 30
    invoke-virtual {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v12, 0x22

    .line 31
    invoke-virtual {v11, v12, v3}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    .line 32
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzav;->zze()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Lcom/google/android/gms/internal/ads/zzaw;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzav;

    .line 33
    invoke-direct {v12}, Lcom/google/android/gms/internal/ads/zzav;-><init>()V

    .line 34
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzaw;)Lcom/google/android/gms/internal/ads/zzav;

    const/4 v13, 0x4

    .line 35
    invoke-virtual {v12, v13}, Lcom/google/android/gms/internal/ads/zzav;->zza(I)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v11, 0xa

    .line 36
    invoke-virtual {v12, v11}, Lcom/google/android/gms/internal/ads/zzav;->zza(I)Lcom/google/android/gms/internal/ads/zzav;

    .line 37
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzav;->zze()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzJ:Lcom/google/android/gms/internal/ads/zzaw;

    .line 38
    invoke-interface {v8, v7, v5}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzk:Lcom/google/android/gms/internal/ads/zzdl;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzis;

    invoke-direct {v12, v1}, Lcom/google/android/gms/internal/ads/zzis;-><init>(Lcom/google/android/gms/internal/ads/zzjs;)V

    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzl:Lcom/google/android/gms/internal/ads/zzkd;

    .line 39
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzld;->zza(Lcom/google/android/gms/internal/ads/zzyn;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v11

    iput-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    .line 40
    invoke-interface {v11, v2, v7}, Lcom/google/android/gms/internal/ads/zzmd;->zzx(Lcom/google/android/gms/internal/ads/zzba;Landroid/os/Looper;)V

    .line 41
    new-instance v2, Lcom/google/android/gms/internal/ads/zzox;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzii;->zzu:Ljava/lang/String;

    invoke-direct {v2, v11}, Lcom/google/android/gms/internal/ads/zzox;-><init>(Ljava/lang/String;)V

    .line 42
    new-instance v11, Lcom/google/android/gms/internal/ads/zzkf;

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzf:Landroid/content/Context;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzi:[Lcom/google/android/gms/internal/ads/zzll;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzii;->zzf:Lcom/google/android/gms/internal/ads/zzght;

    .line 43
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzght;->zza()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v5

    check-cast v17, Lcom/google/android/gms/internal/ads/zzkj;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzH:Lcom/google/android/gms/internal/ads/zzlt;

    move-object/from16 v35, v9

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzii;->zzv:Lcom/google/android/gms/internal/ads/zzht;

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    iget-wide v7, v0, Lcom/google/android/gms/internal/ads/zzii;->zzp:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzI:Lcom/google/android/gms/internal/ads/zzij;

    move-object/from16 v33, v0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzx:Lcom/google/android/gms/internal/ads/zzjq;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v32, 0x0

    move-object/from16 p2, v11

    move-object/from16 v30, v12

    move-object v12, v13

    move-object v13, v4

    move-object v4, v14

    move-object v14, v3

    move-object/from16 v16, v4

    move-object/from16 v18, v6

    move-object/from16 v21, v5

    move-object/from16 v22, v10

    move-object/from16 v23, v9

    move-wide/from16 v24, v7

    move-object/from16 v28, v36

    move-object/from16 v29, v37

    move-object/from16 v31, v2

    move-object/from16 v34, v0

    invoke-direct/range {v11 .. v34}, Lcom/google/android/gms/internal/ads/zzkf;-><init>(Landroid/content/Context;[Lcom/google/android/gms/internal/ads/zzll;[Lcom/google/android/gms/internal/ads/zzll;Lcom/google/android/gms/internal/ads/zzym;Lcom/google/android/gms/internal/ads/zzyn;Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzyu;IZLcom/google/android/gms/internal/ads/zzmd;Lcom/google/android/gms/internal/ads/zzlt;Lcom/google/android/gms/internal/ads/zzht;JZZLandroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdb;Lcom/google/android/gms/internal/ads/zzkd;Lcom/google/android/gms/internal/ads/zzox;Lcom/google/android/gms/internal/ads/zzle;Lcom/google/android/gms/internal/ads/zzij;Lcom/google/android/gms/internal/ads/zzaar;)V

    move-object/from16 v0, p2

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zzn()Landroid/os/Looper;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzQ:F

    .line 45
    sget-object v4, Lcom/google/android/gms/internal/ads/zzam;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzK:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    const/4 v4, -0x1

    iput v4, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzX:I

    .line 46
    sget v5, Lcom/google/android/gms/internal/ads/zzcn;->zza:I

    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzS:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    .line 47
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzjs;->zzd(Lcom/google/android/gms/internal/ads/zzay;)V

    new-instance v5, Landroid/os/Handler;

    move-object/from16 v7, v36

    .line 48
    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-interface {v6, v5, v8}, Lcom/google/android/gms/internal/ads/zzyu;->zzf(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzyt;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzw:Lcom/google/android/gms/internal/ads/zzir;

    move-object/from16 v6, v35

    .line 49
    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_1

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzf:Landroid/content/Context;

    move-object/from16 v6, p1

    iget-boolean v8, v6, Lcom/google/android/gms/internal/ads/zzii;->zzs:Z

    .line 50
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zzn()Landroid/os/Looper;

    move-result-object v9

    move-object/from16 v10, v37

    const/4 v11, 0x0

    .line 51
    invoke-interface {v10, v9, v11}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcom/google/android/gms/internal/ads/zzdl;

    move-result-object v9

    new-instance v11, Lcom/google/android/gms/internal/ads/zzil;

    invoke-direct {v11, v5, v8, v1, v2}, Lcom/google/android/gms/internal/ads/zzil;-><init>(Landroid/content/Context;ZLcom/google/android/gms/internal/ads/zzjs;Lcom/google/android/gms/internal/ads/zzox;)V

    .line 52
    invoke-interface {v9, v11}, Lcom/google/android/gms/internal/ads/zzdl;->zzm(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    move-object/from16 v6, p1

    move-object/from16 v10, v37

    :goto_1
    new-instance v2, Lcom/google/android/gms/internal/ads/zzda;

    const/4 v5, 0x0

    .line 53
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjd;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzjd;-><init>(Lcom/google/android/gms/internal/ads/zzjs;)V

    move-object/from16 v16, v2

    move-object/from16 v17, v8

    move-object/from16 v18, v3

    move-object/from16 v19, v7

    move-object/from16 v20, v10

    move-object/from16 v21, v5

    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzda;-><init>(Ljava/lang/Object;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdb;Lcom/google/android/gms/internal/ads/zzcz;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzB:Lcom/google/android/gms/internal/ads/zzda;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzji;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzji;-><init>(Lcom/google/android/gms/internal/ads/zzjs;)V

    .line 54
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzda;->zzc(Ljava/lang/Runnable;)V

    new-instance v16, Lcom/google/android/gms/internal/ads/zzhl;

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzii;->zza:Landroid/content/Context;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzii;->zzi:Landroid/os/Looper;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzw:Lcom/google/android/gms/internal/ads/zzir;

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v7

    move-object/from16 v21, v10

    .line 55
    invoke-direct/range {v16 .. v21}, Lcom/google/android/gms/internal/ads/zzhl;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzhk;Lcom/google/android/gms/internal/ads/zzdb;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmb;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzii;->zza:Landroid/content/Context;

    .line 56
    invoke-direct {v2, v5, v3, v10}, Lcom/google/android/gms/internal/ads/zzmb;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdb;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzy:Lcom/google/android/gms/internal/ads/zzmb;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzmc;

    iget-object v5, v6, Lcom/google/android/gms/internal/ads/zzii;->zza:Landroid/content/Context;

    .line 57
    invoke-direct {v2, v5, v3, v10}, Lcom/google/android/gms/internal/ads/zzmc;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/internal/ads/zzdb;)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzz:Lcom/google/android/gms/internal/ads/zzmc;

    .line 58
    sget v2, Lcom/google/android/gms/internal/ads/zzl;->zza:I

    .line 59
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbu;->zza:Lcom/google/android/gms/internal/ads/zzbu;

    .line 60
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeg;->zza:Lcom/google/android/gms/internal/ads/zzeg;

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzO:Lcom/google/android/gms/internal/ads/zzeg;

    .line 61
    new-instance v2, Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzw:Lcom/google/android/gms/internal/ads/zzir;

    iget v5, v6, Lcom/google/android/gms/internal/ads/zzii;->zzr:I

    invoke-direct {v2, v1, v3, v10, v5}, Lcom/google/android/gms/internal/ads/zzlz;-><init>(Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzlx;Lcom/google/android/gms/internal/ads/zzdb;I)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzC:Lcom/google/android/gms/internal/ads/zzlz;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzG:Lcom/google/android/gms/internal/ads/zzls;

    .line 62
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzkf;->zzg(Lcom/google/android/gms/internal/ads/zzls;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzP:Lcom/google/android/gms/internal/ads/zzc;

    const/4 v3, 0x0

    .line 63
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzkf;->zzi(Lcom/google/android/gms/internal/ads/zzc;Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzP:Lcom/google/android/gms/internal/ads/zzc;

    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 64
    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzN:I

    .line 65
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    const/4 v0, 0x5

    .line 66
    invoke-direct {v1, v3, v0, v8}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzR:Z

    .line 67
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/16 v2, 0x9

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzx:Lcom/google/android/gms/internal/ads/zzjq;

    const/4 v2, 0x6

    const/16 v3, 0x8

    .line 68
    invoke-direct {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zzU:I

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x10

    .line 70
    invoke-direct {v1, v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzjs;->zze:Lcom/google/android/gms/internal/ads/zzde;

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzde;->zza()Z

    return-void

    :catchall_0
    move-exception v0

    .line 70
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzjs;->zze:Lcom/google/android/gms/internal/ads/zzde;

    .line 71
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzde;->zza()Z

    .line 72
    throw v0

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x1f
        0x14
        0x1e
        0x15
        0x23
        0x16
        0x18
        0x1b
        0x1c
        0x20
    .end array-data
.end method

.method private final zzX(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzld;->zzh(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzr:J

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzld;->zzf(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    :cond_0
    move-object v3, v0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzkf;->zzh()V

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x5

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-object v2, p0

    .line 6
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    return-void
.end method

.method private final zzY(Lcom/google/android/gms/internal/ads/zzld;)I
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzX:I

    return p1

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object p1

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    return p1
.end method

.method private final zzZ(Lcom/google/android/gms/internal/ads/zzld;)J
    .locals 6

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    .line 3
    iget-wide v2, p1, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    const-wide/16 v4, 0x0

    if-nez v0, :cond_0

    .line 5
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzY(Lcom/google/android/gms/internal/ads/zzld;)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 6
    invoke-virtual {v1, p1, v0, v4, v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p1

    iget-wide v0, p1, Lcom/google/android/gms/internal/ads/zzbd;->zzl:J

    .line 7
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0

    .line 8
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzaa(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private final zzaa(Lcom/google/android/gms/internal/ads/zzld;)J
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzY:J

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v0

    return-wide v0

    .line 3
    :cond_0
    iget-boolean v1, p1, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    .line 4
    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    .line 5
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v3

    if-eqz v3, :cond_1

    return-wide v1

    .line 6
    :cond_1
    invoke-direct {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzjs;->zzag(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzup;J)J

    return-wide v1
.end method

.method private final zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzbe;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v7

    const/4 v9, 0x3

    const/4 v10, -0x1

    .line 19
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-wide/16 v12, 0x0

    const/4 v14, 0x1

    .line 4
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/4 v8, 0x0

    .line 19
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v7, :cond_0

    .line 2
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v7

    if-eqz v7, :cond_0

    new-instance v7, Landroid/util/Pair;

    .line 19
    invoke-direct {v7, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v7

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v8

    if-eq v7, v8, :cond_1

    new-instance v7, Landroid/util/Pair;

    .line 4
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v7, v15, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    move-object v13, v3

    move-object/from16 v18, v4

    move v3, v2

    move/from16 v2, p3

    goto/16 :goto_4

    .line 5
    :cond_1
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v8, v7, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 6
    invoke-virtual {v4, v8, v9}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v8

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 7
    invoke-virtual {v4, v8, v14, v12, v13}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v8

    .line 8
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 9
    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v13, v12, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 10
    invoke-virtual {v5, v13, v9}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    move-object v13, v3

    move-object/from16 v18, v4

    const-wide/16 v3, 0x0

    .line 11
    invoke-virtual {v5, v9, v14, v3, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v9

    .line 12
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    .line 13
    invoke-virtual {v8, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    if-eqz p3, :cond_3

    if-nez v2, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_1
    if-eqz v3, :cond_4

    const/4 v7, 0x1

    if-ne v2, v7, :cond_4

    move v3, v4

    const/4 v7, 0x2

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v7, 0x3

    :goto_2
    new-instance v4, Landroid/util/Pair;

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v15, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v7, v4

    move/from16 v42, v3

    move v3, v2

    move/from16 v2, v42

    goto :goto_4

    .line 17
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 14
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_6
    if-eqz p3, :cond_9

    if-nez v2, :cond_8

    .line 16
    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzup;->zzd:J

    iget-wide v7, v12, Lcom/google/android/gms/internal/ads/zzup;->zzd:J

    cmp-long v2, v2, v7

    if-gez v2, :cond_7

    new-instance v7, Landroid/util/Pair;

    const/4 v2, 0x0

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v7, v15, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    const/4 v2, 0x1

    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    move v3, v2

    const/4 v2, 0x1

    goto :goto_3

    :cond_9
    move v3, v2

    const/4 v2, 0x0

    :goto_3
    new-instance v7, Landroid/util/Pair;

    .line 17
    invoke-direct {v7, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :goto_4
    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 21
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-eqz v4, :cond_b

    .line 22
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v9

    if-nez v9, :cond_a

    .line 23
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v9, v9, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 24
    invoke-virtual {v5, v9, v10}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v9

    iget v9, v9, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v11, 0x0

    .line 25
    invoke-virtual {v5, v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v5

    .line 26
    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    goto :goto_5

    :cond_a
    const/4 v5, 0x0

    .line 27
    :goto_5
    sget-object v9, Lcom/google/android/gms/internal/ads/zzam;->zza:Lcom/google/android/gms/internal/ads/zzam;

    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    move-object v9, v13

    if-nez v4, :cond_c

    .line 28
    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    .line 29
    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    :cond_c
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    .line 30
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzam;->zza()Lcom/google/android/gms/internal/ads/zzal;

    move-result-object v10

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    const/4 v12, 0x0

    .line 31
    :goto_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_e

    .line 32
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/android/gms/internal/ads/zzao;

    const/4 v14, 0x0

    .line 33
    :goto_8
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzao;->zza()I

    move-result v15

    if-ge v14, v15, :cond_d

    .line 34
    invoke-virtual {v13, v14}, Lcom/google/android/gms/internal/ads/zzao;->zzb(I)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v15

    .line 35
    invoke-interface {v15, v10}, Lcom/google/android/gms/internal/ads/zzan;->zza(Lcom/google/android/gms/internal/ads/zzal;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    :cond_d
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 36
    :cond_e
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzal;->zzw()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v10

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    .line 37
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v10

    .line 38
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    goto :goto_9

    .line 39
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzq()I

    move-result v11

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v13, 0x0

    .line 40
    invoke-virtual {v10, v11, v12, v13, v14}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v10

    .line 39
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzV:Lcom/google/android/gms/internal/ads/zzam;

    .line 41
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzam;->zza()Lcom/google/android/gms/internal/ads/zzal;

    move-result-object v11

    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzaj;->zzd:Lcom/google/android/gms/internal/ads/zzam;

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzal;->zzv(Lcom/google/android/gms/internal/ads/zzam;)Lcom/google/android/gms/internal/ads/zzal;

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzal;->zzw()Lcom/google/android/gms/internal/ads/zzam;

    move-result-object v10

    .line 38
    :goto_9
    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzK:Lcom/google/android/gms/internal/ads/zzam;

    .line 42
    invoke-virtual {v10, v11}, Lcom/google/android/gms/internal/ads/zzam;->equals(Ljava/lang/Object;)Z

    move-result v11

    iput-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzK:Lcom/google/android/gms/internal/ads/zzam;

    .line 43
    iget-boolean v10, v9, Lcom/google/android/gms/internal/ads/zzld;->zzl:Z

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzld;->zzl:Z

    if-eq v10, v12, :cond_11

    const/4 v10, 0x1

    goto :goto_a

    :cond_11
    const/4 v10, 0x0

    .line 44
    :goto_a
    iget v12, v9, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    if-eq v12, v13, :cond_12

    const/4 v12, 0x1

    goto :goto_b

    :cond_12
    const/4 v12, 0x0

    :goto_b
    if-nez v12, :cond_13

    if-eqz v10, :cond_14

    .line 45
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzak()V

    .line 46
    :cond_14
    iget-boolean v13, v9, Lcom/google/android/gms/internal/ads/zzld;->zzg:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzld;->zzg:Z

    if-eq v13, v14, :cond_15

    const/4 v13, 0x1

    goto :goto_c

    :cond_15
    const/4 v13, 0x0

    :goto_c
    if-nez v6, :cond_16

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v14, Lcom/google/android/gms/internal/ads/zzjl;

    move/from16 v15, p2

    invoke-direct {v14, v1, v15}, Lcom/google/android/gms/internal/ads/zzjl;-><init>(Lcom/google/android/gms/internal/ads/zzld;I)V

    const/4 v15, 0x0

    .line 47
    invoke-virtual {v6, v15, v14}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_16
    if-eqz v2, :cond_1e

    .line 48
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    .line 49
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v14

    if-nez v14, :cond_17

    .line 50
    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    move-object/from16 v15, v18

    .line 51
    invoke-virtual {v15, v14, v2}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    .line 52
    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzbe;->zze(Ljava/lang/Object;)I

    move-result v18

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move/from16 p4, v12

    move/from16 v19, v13

    const-wide/16 v12, 0x0

    .line 53
    invoke-virtual {v15, v8, v6, v12, v13}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v15

    .line 54
    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    move-object/from16 v23, v6

    move/from16 v22, v8

    move-object/from16 v21, v12

    move-object/from16 v24, v14

    move/from16 v25, v18

    goto :goto_d

    :cond_17
    move/from16 p4, v12

    move/from16 v19, v13

    move/from16 v22, p7

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, -0x1

    :goto_d
    if-nez v3, :cond_1a

    .line 55
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v8

    if-eqz v8, :cond_18

    .line 56
    iget v8, v6, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    .line 57
    invoke-virtual {v2, v8, v6}, Lcom/google/android/gms/internal/ads/zzbc;->zzh(II)J

    move-result-wide v12

    .line 58
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzjs;->zzac(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v14

    goto :goto_f

    .line 59
    :cond_18
    iget v6, v6, Lcom/google/android/gms/internal/ads/zzup;->zze:I

    const/4 v8, -0x1

    if-eq v6, v8, :cond_19

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 60
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzjs;->zzac(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v12

    goto :goto_e

    :cond_19
    iget-wide v12, v2, Lcom/google/android/gms/internal/ads/zzbc;->zzd:J

    goto :goto_e

    .line 61
    :cond_1a
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 62
    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    .line 63
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzjs;->zzac(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v14

    goto :goto_f

    .line 64
    :cond_1b
    iget-wide v12, v9, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    :goto_e
    move-wide v14, v12

    .line 65
    :goto_f
    new-instance v2, Lcom/google/android/gms/internal/ads/zzaz;

    .line 66
    sget-object v6, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 67
    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget v8, v6, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    iget v6, v6, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v26

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v28

    move-object/from16 v20, v2

    move/from16 v30, v8

    move/from16 v31, v6

    invoke-direct/range {v20 .. v31}, Lcom/google/android/gms/internal/ads/zzaz;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Object;IJJII)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzq()I

    move-result v6

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 69
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v8

    if-nez v8, :cond_1c

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 70
    iget-object v12, v8, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v12, v12, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 71
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {v8, v12, v13}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 72
    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v8, v12}, Lcom/google/android/gms/internal/ads/zzbe;->zze(Ljava/lang/Object;)I

    move-result v8

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 73
    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move/from16 v18, v10

    move v15, v11

    const-wide/16 v10, 0x0

    .line 74
    invoke-virtual {v13, v6, v14, v10, v11}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v13

    .line 73
    iget-object v10, v13, Lcom/google/android/gms/internal/ads/zzbd;->zzb:Ljava/lang/Object;

    iget-object v11, v14, Lcom/google/android/gms/internal/ads/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzaj;

    move/from16 v35, v8

    move-object/from16 v31, v10

    move-object/from16 v33, v11

    move-object/from16 v34, v12

    goto :goto_10

    :cond_1c
    move/from16 v18, v10

    move v15, v11

    const/16 v31, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, -0x1

    :goto_10
    invoke-static/range {p5 .. p6}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v36

    new-instance v8, Lcom/google/android/gms/internal/ads/zzaz;

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 75
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v10

    if-eqz v10, :cond_1d

    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 76
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzjs;->zzac(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v10

    move-wide/from16 v38, v10

    goto :goto_11

    :cond_1d
    move-wide/from16 v38, v36

    :goto_11
    iget-object v10, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 77
    iget-object v10, v10, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget v11, v10, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    iget v10, v10, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    move-object/from16 v30, v8

    move/from16 v32, v6

    move/from16 v40, v11

    move/from16 v41, v10

    invoke-direct/range {v30 .. v41}, Lcom/google/android/gms/internal/ads/zzaz;-><init>(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzaj;Ljava/lang/Object;IJJII)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzjm;

    invoke-direct {v10, v3, v2, v8}, Lcom/google/android/gms/internal/ads/zzjm;-><init>(ILcom/google/android/gms/internal/ads/zzaz;Lcom/google/android/gms/internal/ads/zzaz;)V

    const/16 v2, 0xb

    .line 78
    invoke-virtual {v6, v2, v10}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    goto :goto_12

    :cond_1e
    move/from16 v18, v10

    move v15, v11

    move/from16 p4, v12

    move/from16 v19, v13

    :goto_12
    if-eqz v4, :cond_1f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzjn;

    invoke-direct {v3, v5, v7}, Lcom/google/android/gms/internal/ads/zzjn;-><init>(Lcom/google/android/gms/internal/ads/zzaj;I)V

    const/4 v7, 0x1

    .line 79
    invoke-virtual {v2, v7, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    goto :goto_13

    :cond_1f
    const/4 v7, 0x1

    .line 80
    :goto_13
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzf:Lcom/google/android/gms/internal/ads/zzhz;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzld;->zzf:Lcom/google/android/gms/internal/ads/zzhz;

    const/16 v4, 0xa

    if-eq v2, v3, :cond_20

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzjo;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zzjo;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 81
    invoke-virtual {v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    if-eqz v3, :cond_20

    new-instance v3, Lcom/google/android/gms/internal/ads/zzit;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzit;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 82
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 83
    :cond_20
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    if-eq v2, v3, :cond_21

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzj:Lcom/google/android/gms/internal/ads/zzym;

    .line 84
    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzyn;->zze:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzym;->zzp(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zziu;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zziu;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    const/4 v5, 0x2

    .line 85
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_21
    if-nez v15, :cond_22

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzK:Lcom/google/android/gms/internal/ads/zzam;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v5, Lcom/google/android/gms/internal/ads/zziv;

    invoke-direct {v5, v2}, Lcom/google/android/gms/internal/ads/zziv;-><init>(Lcom/google/android/gms/internal/ads/zzam;)V

    const/16 v2, 0xe

    .line 86
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_22
    if-eqz v19, :cond_23

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zziw;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zziw;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    const/4 v5, 0x3

    .line 87
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_23
    if-nez p4, :cond_24

    if-eqz v18, :cond_25

    :cond_24
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzix;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzix;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    const/4 v5, -0x1

    .line 88
    invoke-virtual {v2, v5, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_25
    const/4 v2, 0x4

    if-eqz p4, :cond_26

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v5, Lcom/google/android/gms/internal/ads/zziy;

    invoke-direct {v5, v1}, Lcom/google/android/gms/internal/ads/zziy;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 89
    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_26
    const/4 v3, 0x5

    if-nez v18, :cond_27

    .line 90
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzld;->zzm:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzld;->zzm:I

    if-eq v5, v6, :cond_28

    :cond_27
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zziz;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zziz;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 91
    invoke-virtual {v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 92
    :cond_28
    iget v5, v9, Lcom/google/android/gms/internal/ads/zzld;->zzn:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzld;->zzn:I

    const/4 v8, 0x6

    if-eq v5, v6, :cond_29

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzja;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzja;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 93
    invoke-virtual {v5, v8, v6}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 94
    :cond_29
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzld;->zzj()Z

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzld;->zzj()Z

    move-result v6

    const/4 v10, 0x7

    if-eq v5, v6, :cond_2a

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzjb;

    invoke-direct {v6, v1}, Lcom/google/android/gms/internal/ads/zzjb;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 95
    invoke-virtual {v5, v10, v6}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 96
    :cond_2a
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzld;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzld;->zzo:Lcom/google/android/gms/internal/ads/zzau;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzau;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xc

    if-nez v5, :cond_2b

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzjc;

    invoke-direct {v11, v1}, Lcom/google/android/gms/internal/ads/zzjc;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 97
    invoke-virtual {v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_2b
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzJ:Lcom/google/android/gms/internal/ads/zzaw;

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzg:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzc:Lcom/google/android/gms/internal/ads/zzaw;

    .line 98
    sget-object v13, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 99
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzba;->zzv()Z

    move-result v13

    move-object v14, v11

    check-cast v14, Lcom/google/android/gms/internal/ads/zze;

    .line 100
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v15

    .line 101
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v17

    if-nez v17, :cond_2c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v7

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move-object/from16 v17, v5

    const-wide/16 v4, 0x0

    .line 102
    invoke-virtual {v15, v7, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v6

    .line 101
    iget-boolean v4, v6, Lcom/google/android/gms/internal/ads/zzbd;->zzh:Z

    if-eqz v4, :cond_2d

    const/4 v7, 0x1

    goto :goto_14

    :cond_2c
    move-object/from16 v17, v5

    :cond_2d
    const/4 v7, 0x0

    .line 103
    :goto_14
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v4

    .line 104
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v5

    if-eqz v5, :cond_2e

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/16 v16, 0x0

    goto :goto_15

    .line 105
    :cond_2e
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v5

    .line 106
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzk()I

    .line 105
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzl()Z

    const/4 v6, 0x0

    .line 107
    invoke-virtual {v4, v5, v6, v6}, Lcom/google/android/gms/internal/ads/zzbe;->zzi(IIZ)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2f

    const/16 v16, 0x1

    goto :goto_15

    :cond_2f
    move/from16 v16, v6

    .line 108
    :goto_15
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v15

    if-eqz v15, :cond_31

    :cond_30
    move v4, v6

    goto :goto_16

    .line 110
    :cond_31
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v15

    .line 111
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzk()I

    .line 110
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzl()Z

    .line 112
    invoke-virtual {v4, v15, v6, v6}, Lcom/google/android/gms/internal/ads/zzbe;->zzh(IIZ)I

    move-result v4

    if-eq v4, v5, :cond_30

    const/4 v4, 0x1

    .line 113
    :goto_16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v15

    if-nez v15, :cond_32

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v15

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    .line 115
    invoke-virtual {v5, v15, v6, v8, v9}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v5

    .line 114
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzbd;->zzb()Z

    move-result v5

    if-eqz v5, :cond_33

    const/4 v5, 0x1

    goto :goto_17

    :cond_32
    move-object/from16 v18, v9

    const-wide/16 v8, 0x0

    :cond_33
    const/4 v5, 0x0

    .line 116
    :goto_17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v6

    .line 117
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v15

    if-nez v15, :cond_34

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v15

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 118
    invoke-virtual {v6, v15, v14, v8, v9}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v6

    .line 117
    iget-boolean v6, v6, Lcom/google/android/gms/internal/ads/zzbd;->zzi:Z

    if-eqz v6, :cond_34

    const/4 v6, 0x1

    goto :goto_18

    :cond_34
    const/4 v6, 0x0

    .line 119
    :goto_18
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzba;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v8

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzav;

    .line 120
    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzav;-><init>()V

    .line 121
    invoke-virtual {v9, v12}, Lcom/google/android/gms/internal/ads/zzav;->zzd(Lcom/google/android/gms/internal/ads/zzaw;)Lcom/google/android/gms/internal/ads/zzav;

    xor-int/lit8 v11, v13, 0x1

    .line 122
    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v7, :cond_35

    if-nez v13, :cond_35

    const/4 v2, 0x1

    goto :goto_19

    :cond_35
    const/4 v2, 0x0

    .line 123
    :goto_19
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v16, :cond_36

    if-nez v13, :cond_36

    const/4 v2, 0x1

    goto :goto_1a

    :cond_36
    const/4 v2, 0x0

    :goto_1a
    const/4 v3, 0x6

    .line 124
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-nez v8, :cond_38

    if-nez v16, :cond_37

    if-eqz v5, :cond_37

    if-eqz v7, :cond_38

    :cond_37
    if-nez v13, :cond_38

    const/4 v2, 0x1

    goto :goto_1b

    :cond_38
    const/4 v2, 0x0

    .line 125
    :goto_1b
    invoke-virtual {v9, v10, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v4, :cond_39

    if-nez v13, :cond_39

    const/4 v2, 0x1

    goto :goto_1c

    :cond_39
    const/4 v2, 0x0

    :goto_1c
    const/16 v3, 0x8

    .line 126
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-nez v8, :cond_3b

    if-nez v4, :cond_3a

    if-eqz v5, :cond_3b

    if-eqz v6, :cond_3b

    :cond_3a
    if-nez v13, :cond_3b

    const/4 v2, 0x1

    goto :goto_1d

    :cond_3b
    const/4 v2, 0x0

    :goto_1d
    const/16 v3, 0x9

    .line 127
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    const/16 v2, 0xa

    .line 128
    invoke-virtual {v9, v2, v11}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v7, :cond_3c

    if-nez v13, :cond_3c

    const/4 v2, 0x1

    goto :goto_1e

    :cond_3c
    const/4 v2, 0x0

    :goto_1e
    const/16 v3, 0xb

    .line 129
    invoke-virtual {v9, v3, v2}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    if-eqz v7, :cond_3d

    if-nez v13, :cond_3d

    const/16 v2, 0xc

    const/4 v14, 0x1

    goto :goto_1f

    :cond_3d
    const/16 v2, 0xc

    const/4 v14, 0x0

    .line 130
    :goto_1f
    invoke-virtual {v9, v2, v14}, Lcom/google/android/gms/internal/ads/zzav;->zzb(IZ)Lcom/google/android/gms/internal/ads/zzav;

    .line 131
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzav;->zze()Lcom/google/android/gms/internal/ads/zzaw;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzJ:Lcom/google/android/gms/internal/ads/zzaw;

    move-object/from16 v3, v17

    .line 132
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzaw;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzje;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzje;-><init>(Lcom/google/android/gms/internal/ads/zzjs;)V

    const/16 v4, 0xd

    .line 133
    invoke-virtual {v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    :cond_3e
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    .line 134
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdr;->zze()V

    move-object/from16 v2, v18

    .line 135
    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    return-void
.end method

.method private static zzac(Lcom/google/android/gms/internal/ads/zzld;)J
    .locals 7

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbd;-><init>()V

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzbc;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbc;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    .line 4
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzld;->zzc:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p0, v3, v5

    if-nez p0, :cond_0

    iget p0, v1, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    const-wide/16 v3, 0x0

    .line 5
    invoke-virtual {v2, p0, v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbd;->zzl:J

    :cond_0
    return-wide v3
.end method

.method private final zzad(Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzbe;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzld;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v5

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    move-object/from16 v3, p1

    .line 2
    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    .line 3
    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzZ(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v7

    .line 4
    invoke-virtual/range {p1 .. p2}, Lcom/google/android/gms/internal/ads/zzld;->zzd(Lcom/google/android/gms/internal/ads/zzbe;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    .line 5
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzld;->zzb()Lcom/google/android/gms/internal/ads/zzup;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzY:J

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v15

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Lcom/google/android/gms/internal/ads/zzyn;

    .line 7
    sget-object v19, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzwq;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v21

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v15

    move-wide v13, v15

    move-object/from16 v20, v2

    .line 9
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzld;->zzc(Lcom/google/android/gms/internal/ads/zzup;JJJJLcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzyn;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v2

    .line 10
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzld;->zzh(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v1

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    return-object v1

    :cond_2
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    .line 11
    iget-object v10, v3, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 12
    sget-object v11, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    move-object v11, v2

    check-cast v11, Landroid/util/Pair;

    iget-object v11, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v12, Lcom/google/android/gms/internal/ads/zzup;

    .line 13
    iget-object v13, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    const-wide/16 v14, -0x1

    .line 14
    invoke-direct {v12, v13, v14, v15}, Lcom/google/android/gms/internal/ads/zzup;-><init>(Ljava/lang/Object;J)V

    move-object v15, v12

    goto :goto_2

    :cond_3
    move-object v15, v3

    .line 15
    :goto_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v7

    .line 16
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 17
    invoke-virtual {v6, v10, v2}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    :cond_4
    if-eqz v11, :cond_a

    cmp-long v2, v13, v7

    if-gez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    if-nez v2, :cond_8

    .line 22
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    .line 23
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 24
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbe;->zze(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 25
    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzd(ILcom/google/android/gms/internal/ads/zzbc;Z)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v2

    .line 26
    iget v2, v2, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    iget-object v4, v15, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 27
    invoke-virtual {v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v3

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzbc;->zzc:I

    if-eq v2, v3, :cond_e

    .line 28
    :cond_6
    iget-object v2, v15, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    .line 29
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 30
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    iget v2, v15, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    invoke-virtual {v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbc;->zzh(II)J

    move-result-wide v1

    goto :goto_3

    .line 31
    :cond_7
    iget-wide v1, v3, Lcom/google/android/gms/internal/ads/zzbc;->zzd:J

    .line 30
    :goto_3
    iget-wide v11, v9, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    iget-wide v13, v9, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    iget-wide v3, v9, Lcom/google/android/gms/internal/ads/zzld;->zzd:J

    iget-wide v5, v9, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    sub-long v17, v1, v5

    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzld;->zzh:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v7, v9, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    move-object v10, v15

    move-object v8, v15

    move-wide v15, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .line 32
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzld;->zzc(Lcom/google/android/gms/internal/ads/zzup;JJJJLcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzyn;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzld;->zzh(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    iput-wide v1, v9, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    goto/16 :goto_8

    :cond_8
    move-object v1, v15

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzld;->zzr:J

    sub-long v6, v13, v7

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    .line 35
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v17

    iget-wide v4, v9, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    .line 36
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    add-long v4, v13, v17

    :cond_9
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzh:Lcom/google/android/gms/internal/ads/zzwq;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v6, v9, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    move-object v10, v1

    move-wide v11, v13

    move-wide v7, v13

    move-wide v15, v7

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v21, v6

    .line 37
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzld;->zzc(Lcom/google/android/gms/internal/ads/zzup;JJJJLcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzyn;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    iput-wide v4, v9, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    goto :goto_8

    :cond_a
    :goto_4
    move-wide v7, v13

    move-object v1, v15

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v2

    xor-int/2addr v2, v5

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    if-nez v11, :cond_b

    .line 19
    sget-object v2, Lcom/google/android/gms/internal/ads/zzwq;->zza:Lcom/google/android/gms/internal/ads/zzwq;

    goto :goto_5

    .line 22
    :cond_b
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzh:Lcom/google/android/gms/internal/ads/zzwq;

    :goto_5
    move-object/from16 v19, v2

    if-nez v11, :cond_c

    .line 19
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzjs;->zzb:Lcom/google/android/gms/internal/ads/zzyn;

    goto :goto_6

    .line 22
    :cond_c
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    :goto_6
    move-object/from16 v20, v2

    if-nez v11, :cond_d

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v2

    goto :goto_7

    .line 22
    :cond_d
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzld;->zzj:Ljava/util/List;

    :goto_7
    move-object/from16 v21, v2

    const-wide/16 v17, 0x0

    move-object v10, v1

    move-wide v11, v7

    move-wide v13, v7

    move-wide v15, v7

    .line 21
    invoke-virtual/range {v9 .. v21}, Lcom/google/android/gms/internal/ads/zzld;->zzc(Lcom/google/android/gms/internal/ads/zzup;JJJJLcom/google/android/gms/internal/ads/zzwq;Lcom/google/android/gms/internal/ads/zzyn;Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v2

    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzld;->zzh(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v9

    iput-wide v7, v9, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    :cond_e
    :goto_8
    return-object v9
.end method

.method private static zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzld;->zze(I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzld;->zzg(Z)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p0

    return-object p0
.end method

.method private final zzaf(Lcom/google/android/gms/internal/ads/zzbe;IJ)Landroid/util/Pair;
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzX:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, p3, p1

    if-nez p1, :cond_0

    move-wide p3, v1

    :cond_0
    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzY:J

    const/4 p1, 0x0

    return-object p1

    :cond_1
    const/4 v0, -0x1

    if-eq p2, v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbe;->zza()I

    move-result v0

    if-lt p2, v0, :cond_3

    :cond_2
    const/4 p2, 0x0

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbe;->zzk(Z)I

    move-result p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 4
    invoke-virtual {p1, p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object p3

    iget-wide p3, p3, Lcom/google/android/gms/internal/ads/zzbd;->zzl:J

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide p3

    :cond_3
    move v3, p2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 6
    invoke-static {p3, p4}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzbe;->zzm(Lcom/google/android/gms/internal/ads/zzbd;Lcom/google/android/gms/internal/ads/zzbc;IJ)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method private final zzag(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzup;J)J
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    return-wide p3
.end method

.method private final zzah(Lcom/google/android/gms/internal/ads/zzlg;)Lcom/google/android/gms/internal/ads/zzlh;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzY(Lcom/google/android/gms/internal/ads/zzld;)I

    move-result v0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzlh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    move v5, v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzv:Lcom/google/android/gms/internal/ads/zzdb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzkf;->zzn()Landroid/os/Looper;

    move-result-object v7

    move-object v1, v8

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzlh;-><init>(Lcom/google/android/gms/internal/ads/zzlf;Lcom/google/android/gms/internal/ads/zzlg;Lcom/google/android/gms/internal/ads/zzbe;ILcom/google/android/gms/internal/ads/zzdb;Landroid/os/Looper;)V

    return-object v8
.end method

.method private final zzai(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzL:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzA:J

    goto :goto_0

    :cond_1
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzkf;->zzl(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzL:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzM:Landroid/view/Surface;

    if-ne v1, v2, :cond_2

    .line 2
    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzM:Landroid/view/Surface;

    :cond_2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzL:Ljava/lang/Object;

    if-nez v0, :cond_3

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkg;

    const/4 v0, 0x3

    .line 3
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzkg;-><init>(I)V

    const/16 v0, 0x3eb

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhz;->zzc(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzhz;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzX(Lcom/google/android/gms/internal/ads/zzhz;)V

    :cond_3
    return-void
.end method

.method private final zzaj(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzO:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zza()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzO:Lcom/google/android/gms/internal/ads/zzeg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzeg;->zzb()I

    move-result v0

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    .line 2
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzO:Lcom/google/android/gms/internal/ads/zzeg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjf;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzjf;-><init>(II)V

    const/16 v2, 0x18

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zze()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeg;

    .line 5
    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzeg;-><init>(II)V

    const/4 p1, 0x2

    const/16 p2, 0xe

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    return-void
.end method

.method private final zzak()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzg()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzy:Lcom/google/android/gms/internal/ads/zzmb;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmb;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzz:Lcom/google/android/gms/internal/ads/zzmc;

    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Z)V

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 3
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzy:Lcom/google/android/gms/internal/ads/zzmb;

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmb;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzz:Lcom/google/android/gms/internal/ads/zzmc;

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzj()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Z)V

    return-void
.end method

.method private final zzal()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zze:Lcom/google/android/gms/internal/ads/zzde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzde;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzt:Landroid/os/Looper;

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    .line 4
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "Player is accessed on the wrong thread.\nCurrent thread: \'%s\'\nExpected thread: \'%s\'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread"

    .line 5
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzS:Z

    if-nez v2, :cond_1

    .line 6
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzT:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    .line 6
    :goto_0
    const-string v3, "ExoPlayerImpl"

    .line 7
    invoke-static {v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzds;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzT:Z

    return-void

    .line 5
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 6
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private final zzam(IILjava/lang/Object;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    array-length v1, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    if-eq p1, v3, :cond_0

    .line 2
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzll;->zza()I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 3
    :cond_0
    invoke-direct {p0, v4}, Lcom/google/android/gms/internal/ads/zzjs;->zzah(Lcom/google/android/gms/internal/ads/zzlg;)Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(I)Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzlh;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzlh;->zzg()Lcom/google/android/gms/internal/ads/zzlh;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzi:[Lcom/google/android/gms/internal/ads/zzll;

    .line 4
    array-length v2, v0

    :goto_1
    if-ge v1, v4, :cond_5

    aget-object v2, v0, v1

    if-eqz v2, :cond_4

    if-eq p1, v3, :cond_3

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzll;->zza()I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 5
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/zzjs;->zzah(Lcom/google/android/gms/internal/ads/zzlg;)Lcom/google/android/gms/internal/ads/zzlh;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/android/gms/internal/ads/zzlh;->zzb(I)Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzlh;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzlh;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlh;->zzg()Lcom/google/android/gms/internal/ads/zzlh;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method public final zzA(Landroid/view/Surface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzai(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 3
    :goto_0
    invoke-direct {p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzaj(II)V

    return-void
.end method

.method public final zzB(Lcom/google/android/gms/internal/ads/zzmg;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzv(Lcom/google/android/gms/internal/ads/zzmg;)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzmg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzmg;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzw(Lcom/google/android/gms/internal/ads/zzmg;)V

    return-void
.end method

.method public final zzD()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzh:[Lcom/google/android/gms/internal/ads/zzll;

    .line 2
    array-length v0, v0

    const/4 v0, 0x2

    return v0
.end method

.method public final zzE(Lcom/google/android/gms/internal/ads/zzur;)V
    .locals 16

    move-object/from16 v9, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 4
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 5
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzY(Lcom/google/android/gms/internal/ads/zzld;)I

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzs()J

    iget v1, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzq:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v5, v3, -0x1

    :goto_0
    if-ltz v5, :cond_0

    .line 9
    invoke-interface {v1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_0
    iget-object v5, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    .line 10
    invoke-virtual {v5, v4, v3}, Lcom/google/android/gms/internal/ads/zzwi;->zzg(II)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object v3

    iput-object v3, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    :cond_1
    new-instance v11, Ljava/util/ArrayList;

    .line 11
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v3, v4

    .line 12
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    new-instance v5, Lcom/google/android/gms/internal/ads/zzkz;

    .line 13
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v7, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzr:Z

    invoke-direct {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzkz;-><init>(Lcom/google/android/gms/internal/ads/zzur;Z)V

    .line 14
    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzkz;->zzb:Ljava/lang/Object;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzkz;->zza:Lcom/google/android/gms/internal/ads/zzuk;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-direct {v7, v6, v5}, Lcom/google/android/gms/internal/ads/zzjr;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzuk;)V

    .line 15
    invoke-interface {v1, v3, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    .line 16
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    .line 17
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/ads/zzwi;->zzf(II)Lcom/google/android/gms/internal/ads/zzwi;

    move-result-object v0

    iput-object v0, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/zzlj;

    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzlj;-><init>(Ljava/util/Collection;Lcom/google/android/gms/internal/ads/zzwi;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, -0x1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zza()I

    move-result v1

    if-ltz v1, :cond_3

    goto :goto_2

    .line 23
    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzv;

    .line 32
    invoke-direct {v1, v0, v3, v5, v6}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Lcom/google/android/gms/internal/ads/zzbe;IJ)V

    throw v1

    .line 20
    :cond_4
    :goto_2
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzk(Z)I

    move-result v12

    iget-object v1, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 21
    invoke-direct {v9, v0, v12, v5, v6}, Lcom/google/android/gms/internal/ads/zzjs;->zzaf(Lcom/google/android/gms/internal/ads/zzbe;IJ)Landroid/util/Pair;

    move-result-object v7

    .line 22
    invoke-direct {v9, v1, v0, v7}, Lcom/google/android/gms/internal/ads/zzjs;->zzad(Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzbe;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v1

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    if-ne v7, v2, :cond_5

    move v7, v2

    goto :goto_4

    .line 23
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v8

    const/4 v10, 0x4

    if-eqz v8, :cond_6

    :goto_3
    move v7, v10

    goto :goto_4

    :cond_6
    if-ne v12, v3, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zza()I

    move-result v0

    if-lt v12, v0, :cond_8

    goto :goto_3

    :cond_8
    const/4 v7, 0x2

    .line 24
    :goto_4
    invoke-static {v1, v7}, Lcom/google/android/gms/internal/ads/zzjs;->zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v1

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 25
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide v13

    iget-object v15, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzZ:Lcom/google/android/gms/internal/ads/zzwi;

    .line 26
    invoke-virtual/range {v10 .. v15}, Lcom/google/android/gms/internal/ads/zzkf;->zzy(Ljava/util/List;IJLcom/google/android/gms/internal/ads/zzwi;)V

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 27
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    .line 28
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v9, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    if-nez v0, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    move v3, v4

    .line 30
    :goto_5
    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzaa(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v5

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x4

    move-object/from16 v0, p0

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    return-void
.end method

.method public final zzF()V
    .locals 6

    .line 1
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzak;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v3, v3, 0x21

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x3

    add-int/2addr v3, v5

    new-instance v4, Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Release "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " [AndroidXMedia3/1.8.0] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] ["

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExoPlayerImpl"

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzy:Lcom/google/android/gms/internal/ads/zzmb;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmb;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzz:Lcom/google/android/gms/internal/ads/zzmc;

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzmc;->zza(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzC:Lcom/google/android/gms/internal/ads/zzlz;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzlz;->zzv()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zzm()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    const/16 v1, 0xa

    sget-object v2, Lcom/google/android/gms/internal/ads/zzjj;->zza:Lcom/google/android/gms/internal/ads/zzjj;

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zze()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzk:Lcom/google/android/gms/internal/ads/zzdl;

    const/4 v1, 0x0

    .line 12
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzdl;->zzl(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzu:Lcom/google/android/gms/internal/ads/zzyu;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    .line 13
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzyu;->zzg(Lcom/google/android/gms/internal/ads/zzyt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 14
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 15
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzjs;->zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 16
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzld;->zzh(Lcom/google/android/gms/internal/ads/zzup;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 17
    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    const-wide/16 v3, 0x0

    .line 18
    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zzr:J

    .line 19
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzmd;->zzy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzM:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 20
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzM:Landroid/view/Surface;

    .line 21
    :cond_1
    sget v0, Lcom/google/android/gms/internal/ads/zzcn;->zza:I

    return-void
.end method

.method public final zzG()Lcom/google/android/gms/internal/ads/zzhz;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzf:Lcom/google/android/gms/internal/ads/zzhz;

    return-object v0
.end method

.method final synthetic zzH(Lcom/google/android/gms/internal/ads/zzay;Lcom/google/android/gms/internal/ads/zzr;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzax;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzax;-><init>(Lcom/google/android/gms/internal/ads/zzr;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzg:Lcom/google/android/gms/internal/ads/zzba;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzay;->zza(Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzax;)V

    return-void
.end method

.method final synthetic zzI(Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzjh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzjh;-><init>(Lcom/google/android/gms/internal/ads/zzjs;Lcom/google/android/gms/internal/ads/zzkc;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzk:Lcom/google/android/gms/internal/ads/zzdl;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzdl;->zzm(Ljava/lang/Runnable;)Z

    return-void
.end method

.method final synthetic zzJ(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    const/4 v0, 0x2

    .line 3
    invoke-direct {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzam(IILjava/lang/Object;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzjg;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzjg;-><init>(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    const/16 v0, 0x15

    .line 4
    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdr;->zze()V

    return-void
.end method

.method final synthetic zzK()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzf:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioManager;->generateAudioSessionId()I

    move-result v0

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzB:Lcom/google/android/gms/internal/ads/zzda;

    .line 3
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzda;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzL(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzJ:Lcom/google/android/gms/internal/ads/zzaw;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzay;->zzg(Lcom/google/android/gms/internal/ads/zzaw;)V

    return-void
.end method

.method final synthetic zzM(Lcom/google/android/gms/internal/ads/zzkc;)V
    .locals 11

    .line 1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zzb:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    .line 2
    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zzc:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 3
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zzd:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzE:I

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzF:Z

    :cond_0
    if-nez v1, :cond_a

    .line 4
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 5
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzX:I

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzY:J

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzlj;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzlj;->zzw()Ljava/util/List;

    move-result-object v2

    .line 8
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzq:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-ne v5, v7, :cond_2

    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    move v5, v4

    .line 9
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 10
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzjr;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzjr;->zzc(Lcom/google/android/gms/internal/ads/zzbe;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzF:Z

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v2, :cond_8

    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    .line 12
    invoke-virtual {v2, v7}, Lcom/google/android/gms/internal/ads/zzup;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v7, v2, Lcom/google/android/gms/internal/ads/zzld;->zzd:J

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v9, v2, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    cmp-long v2, v7, v9

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-wide v6, v2, Lcom/google/android/gms/internal/ads/zzld;->zzd:J

    invoke-direct {p0, v1, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzjs;->zzag(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzup;J)J

    goto :goto_4

    .line 14
    :cond_7
    :goto_3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzld;->zzd:J

    :goto_4
    move-wide v5, v6

    goto :goto_5

    :cond_8
    move v3, v4

    :cond_9
    :goto_5
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzF:Z

    .line 16
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkc;->zza:Lcom/google/android/gms/internal/ads/zzld;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzE:I

    const/4 v7, -0x1

    const/4 v8, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    :cond_a
    return-void
.end method

.method final synthetic zzN(Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzX(Lcom/google/android/gms/internal/ads/zzhz;)V

    return-void
.end method

.method final synthetic zzO(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzai(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzM:Landroid/view/Surface;

    return-void
.end method

.method final synthetic zzP(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzjs;->zzai(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic zzQ(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzjs;->zzaj(II)V

    return-void
.end method

.method final synthetic zzR()Lcom/google/android/gms/internal/ads/zzdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    return-object v0
.end method

.method final synthetic zzS()Lcom/google/android/gms/internal/ads/zzmd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    return-object v0
.end method

.method final synthetic zzT()Lcom/google/android/gms/internal/ads/zzda;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzB:Lcom/google/android/gms/internal/ads/zzda;

    return-object v0
.end method

.method final synthetic zzU()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzL:Ljava/lang/Object;

    return-object v0
.end method

.method final synthetic zzV()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzR:Z

    return v0
.end method

.method final synthetic zzW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzR:Z

    return-void
.end method

.method protected final zzb(IJIZ)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    const/4 p4, -0x1

    if-ne p1, p4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p4, 0x1

    if-ltz p1, :cond_1

    move p5, p4

    goto :goto_0

    :cond_1
    const/4 p5, 0x0

    .line 2
    :goto_0
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    iget-object p5, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 3
    iget-object p5, p5, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    .line 4
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbe;->zza()I

    move-result v0

    if-ge p1, v0, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzs:Lcom/google/android/gms/internal/ads/zzmd;

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zzA()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    add-int/2addr v0, p4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzv()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    .line 7
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzkc;-><init>(Lcom/google/android/gms/internal/ads/zzld;)V

    .line 8
    invoke-virtual {p1, p4}, Lcom/google/android/gms/internal/ads/zzkc;->zza(I)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzl:Lcom/google/android/gms/internal/ads/zzkd;

    .line 9
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzkd;->zza(Lcom/google/android/gms/internal/ads/zzkc;)V

    return-void

    :cond_4
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 10
    iget v0, p4, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 11
    invoke-virtual {p5}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    const/4 v0, 0x2

    .line 12
    invoke-static {p4, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object p4

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzq()I

    move-result v7

    .line 14
    invoke-direct {p0, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzjs;->zzaf(Lcom/google/android/gms/internal/ads/zzbe;IJ)Landroid/util/Pair;

    move-result-object v0

    .line 15
    invoke-direct {p0, p4, p5, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzad(Lcom/google/android/gms/internal/ads/zzld;Lcom/google/android/gms/internal/ads/zzbe;Landroid/util/Pair;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v1

    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 16
    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/zzeo;->zzq(J)J

    move-result-wide p2

    invoke-virtual {p4, p5, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzkf;->zzf(Lcom/google/android/gms/internal/ads/zzbe;IJ)V

    .line 17
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzaa(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v5

    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    .line 18
    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    return-void
.end method

.method public final zzc()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzt:Landroid/os/Looper;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    .line 1
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdr;->zzb(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzay;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    .line 2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzay;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdr;->zzc(Ljava/lang/Object;)V

    return-void
.end method

.method public final zzf()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzld;->zzf(Lcom/google/android/gms/internal/ads/zzhz;)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v0

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v1

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    .line 5
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzjs;->zzae(Lcom/google/android/gms/internal/ads/zzld;I)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v4

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzkf;->zzd()V

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x5

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    move-object v3, p0

    .line 7
    invoke-direct/range {v3 .. v11}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    return-void
.end method

.method public final zzg()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zze:I

    return v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzn:I

    return v0
.end method

.method public final zzi(Z)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzn:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    if-nez p1, :cond_0

    move v1, v3

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, v3

    .line 3
    :cond_1
    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzld;->zzl:Z

    if-ne v4, p1, :cond_2

    if-ne v1, v2, :cond_2

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzm:I

    if-ne v1, v3, :cond_2

    return-void

    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzD:I

    .line 4
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzp:Z

    .line 5
    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzld;->zzi(ZII)Lcom/google/android/gms/internal/ads/zzld;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 6
    invoke-virtual {v0, p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzkf;->zze(ZII)V

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x5

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v4, p0

    .line 7
    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzjs;->zzab(Lcom/google/android/gms/internal/ads/zzld;IZIJIZ)V

    return-void
.end method

.method public final zzj()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzl:Z

    return v0
.end method

.method public final zzk()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzl()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    const/4 v0, 0x0

    return v0
.end method

.method public final zzm()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzX(Lcom/google/android/gms/internal/ads/zzhz;)V

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcn;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgjz;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzld;->zzs:J

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcn;-><init>(Ljava/util/List;J)V

    return-void
.end method

.method public final zzn()Lcom/google/android/gms/internal/ads/zzbm;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzi:Lcom/google/android/gms/internal/ads/zzyn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzyn;->zzd:Lcom/google/android/gms/internal/ads/zzbm;

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzbe;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    return-object v0
.end method

.method public final zzp()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 3
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbe;->zze(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final zzq()I
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzY(Lcom/google/android/gms/internal/ads/zzld;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public final zzr()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzv()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zze;->zzo()Lcom/google/android/gms/internal/ads/zzbe;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zze;->zzq()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zze;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    const-wide/16 v3, 0x0

    .line 6
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzm:J

    .line 7
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 8
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    .line 9
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    .line 10
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    invoke-virtual {v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzh(II)J

    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzs()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzaa(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzt()J
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzv()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 17
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzup;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 18
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzr()J

    move-result-wide v0

    goto :goto_1

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 4
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbe;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzY:J

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 5
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzup;->zzd:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-wide v3, v3, Lcom/google/android/gms/internal/ads/zzup;->zzd:J

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_3

    .line 6
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzq()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zza:Lcom/google/android/gms/internal/ads/zzbd;

    .line 7
    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/google/android/gms/internal/ads/zzbe;->zzb(ILcom/google/android/gms/internal/ads/zzbd;J)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzbd;->zzm:J

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    goto :goto_1

    .line 9
    :cond_3
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzq:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 10
    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 11
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zza:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzp:Lcom/google/android/gms/internal/ads/zzbc;

    .line 12
    invoke-virtual {v1, v0, v4}, Lcom/google/android/gms/internal/ads/zzbe;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbc;->zzc(I)J

    goto :goto_0

    :cond_4
    move-wide v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 15
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzld;->zza:Lcom/google/android/gms/internal/ads/zzbe;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzk:Lcom/google/android/gms/internal/ads/zzup;

    .line 16
    invoke-direct {p0, v1, v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzjs;->zzag(Lcom/google/android/gms/internal/ads/zzbe;Lcom/google/android/gms/internal/ads/zzup;J)J

    .line 15
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    :goto_1
    return-wide v0
.end method

.method public final zzu()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-wide v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzr:J

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzp(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzv()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzup;->zzb()Z

    move-result v0

    return v0
.end method

.method public final zzw()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zzb:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzx()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzv()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzld;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzup;->zzc:I

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final zzy()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzW:Lcom/google/android/gms/internal/ads/zzld;

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzjs;->zzZ(Lcom/google/android/gms/internal/ads/zzld;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzz(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzjs;->zzal()V

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzQ:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzQ:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzm:Lcom/google/android/gms/internal/ads/zzkf;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzkf;->zzj(F)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjs;->zzn:Lcom/google/android/gms/internal/ads/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzjk;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzjk;-><init>(F)V

    const/16 p1, 0x16

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzdr;->zzd(ILcom/google/android/gms/internal/ads/zzdm;)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdr;->zze()V

    return-void
.end method
