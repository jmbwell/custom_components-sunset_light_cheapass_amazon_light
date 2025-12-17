.class public final Lcom/google/android/gms/internal/ads/zzfbw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzely;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfbn;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfab;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfcv;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfie;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfdb;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzfab;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/internal/ads/zzfdb;Lcom/google/android/gms/internal/ads/zzfcv;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zze:Lcom/google/android/gms/internal/ads/zzfab;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzd:Lcom/google/android/gms/internal/ads/zzfbn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzh:Lcom/google/android/gms/internal/ads/zzfdb;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzf:Lcom/google/android/gms/internal/ads/zzfcv;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzv()Lcom/google/android/gms/internal/ads/zzfie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzg:Lcom/google/android/gms/internal/ads/zzfie;

    return-void
.end method

.method private final zzk(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbv;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzn()Lcom/google/android/gms/internal/ads/zzdoq;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcva;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zza:Landroid/content/Context;

    .line 3
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcva;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbv;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzcva;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzf:Lcom/google/android/gms/internal/ads/zzfcv;

    .line 5
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzf(Lcom/google/android/gms/internal/ads/zzfcv;)Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcva;->zze()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p1

    .line 6
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoq;->zzd(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzdoq;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdbr;->zzn()Lcom/google/android/gms/internal/ads/zzdbs;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdoq;->zze(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzdoq;

    return-object v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbvo;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbvo;-><init>(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;)V

    .line 2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzbvo;->zzb:Ljava/lang/String;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzb:Ljava/util/concurrent/Executor;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfbu;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfbu;-><init>(Lcom/google/android/gms/internal/ads/zzfbw;)V

    .line 5
    invoke-interface {p1, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_1

    :cond_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result p3

    if-nez p3, :cond_1

    goto/16 :goto_1

    .line 7
    :cond_1
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zze:Lcom/google/android/gms/internal/ads/zzfab;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfab;->zzd()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzfab;->zzd()Ljava/lang/Object;

    move-result-object p3

    .line 8
    check-cast p3, Lcom/google/android/gms/internal/ads/zzdor;

    .line 9
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzdor;->zzd()Lcom/google/android/gms/internal/ads/zzfib;

    move-result-object p3

    .line 10
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfib;->zzi(I)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbvo;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    iget-object v4, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 11
    invoke-virtual {p3, v4}, Lcom/google/android/gms/internal/ads/zzfib;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 12
    invoke-virtual {p3, v3}, Lcom/google/android/gms/internal/ads/zzfib;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfib;

    move-object v7, p3

    goto :goto_0

    :cond_2
    move-object v7, v2

    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zza:Landroid/content/Context;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvo;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 13
    iget-boolean v3, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {p3, v3}, Lcom/google/android/gms/internal/ads/zzfdz;->zzb(Landroid/content/Context;Z)V

    .line 14
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzjI:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 14
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v10, 0x1

    if-eqz v4, :cond_3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzu()Lcom/google/android/gms/internal/ads/zzdvs;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzdvs;->zzc(Z)V

    :cond_3
    new-instance v3, Landroid/util/Pair;

    .line 17
    sget-object v4, Lcom/google/android/gms/internal/ads/zzdru;->zza:Lcom/google/android/gms/internal/ads/zzdru;

    .line 18
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    .line 19
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdru;->zzb:Lcom/google/android/gms/internal/ads/zzdru;

    .line 20
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v6

    invoke-interface {v6}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/util/Pair;

    aput-object v3, v5, p2

    aput-object v4, v5, v10

    .line 22
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdrw;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzh:Lcom/google/android/gms/internal/ads/zzfdb;

    .line 23
    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 24
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzr;->zzc()Lcom/google/android/gms/ads/internal/client/zzr;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 25
    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 26
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzfdb;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 27
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfdb;->zzz()Lcom/google/android/gms/internal/ads/zzfdc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfia;->zzg(Lcom/google/android/gms/internal/ads/zzfdc;)I

    move-result p2

    .line 28
    invoke-static {p3, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfhr$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhr;

    move-result-object v8

    new-instance v9, Lcom/google/android/gms/internal/ads/zzfbv;

    invoke-direct {v9, v2}, Lcom/google/android/gms/internal/ads/zzfbv;-><init>([B)V

    iput-object p1, v9, Lcom/google/android/gms/internal/ads/zzfbv;->zza:Lcom/google/android/gms/internal/ads/zzfdc;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zze:Lcom/google/android/gms/internal/ads/zzfab;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfac;

    invoke-direct {p2, v9, v2}, Lcom/google/android/gms/internal/ads/zzfac;-><init>(Lcom/google/android/gms/internal/ads/zzezz;Lcom/google/android/gms/internal/ads/zzbuv;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzfbt;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/zzfbt;-><init>(Lcom/google/android/gms/internal/ads/zzfbw;)V

    .line 29
    invoke-interface {p1, p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfab;->zzc(Lcom/google/android/gms/internal/ads/zzfac;Lcom/google/android/gms/internal/ads/zzfaa;Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfbs;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    .line 30
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfbs;-><init>(Lcom/google/android/gms/internal/ads/zzfbw;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzfib;Lcom/google/android/gms/internal/ads/zzfhr;Lcom/google/android/gms/internal/ads/zzfbv;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgot;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgoq;Ljava/util/concurrent/Executor;)V

    move p2, v10

    :goto_1
    return p2
.end method

.method public final zzb()Z
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzd:Lcom/google/android/gms/internal/ads/zzfbn;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfee;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbw;->zzk(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdoq;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdoq;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzfbw;->zzk(Lcom/google/android/gms/internal/ads/zzezz;)Lcom/google/android/gms/internal/ads/zzdoq;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzf()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzd:Lcom/google/android/gms/internal/ads/zzfbn;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfab;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zze:Lcom/google/android/gms/internal/ads/zzfab;

    return-object v0
.end method

.method final synthetic zzi()Lcom/google/android/gms/internal/ads/zzfie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzg:Lcom/google/android/gms/internal/ads/zzfie;

    return-object v0
.end method

.method final zzj(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbw;->zzh:Lcom/google/android/gms/internal/ads/zzfdb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfdb;->zzj()Lcom/google/android/gms/internal/ads/zzfcp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfcp;->zza(I)Lcom/google/android/gms/internal/ads/zzfcp;

    return-void
.end method
