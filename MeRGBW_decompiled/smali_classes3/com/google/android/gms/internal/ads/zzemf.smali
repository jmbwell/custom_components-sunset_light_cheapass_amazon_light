.class public final Lcom/google/android/gms/internal/ads/zzemf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzely;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfdb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzelv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfie;

.field private zzf:Lcom/google/android/gms/internal/ads/zzcrh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzelv;Lcom/google/android/gms/internal/ads/zzfdb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzfdb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzv()Lcom/google/android/gms/internal/ads/zzfie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zze:Lcom/google/android/gms/internal/ads/zzfie;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object p1

    .line 2
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zzt(Lcom/google/android/gms/internal/ads/zzeli;)Lcom/google/android/gms/internal/ads/zzfdb;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzc:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzs;->zzL(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Failed to load the ad because app ID is missing."

    .line 42
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 43
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeme;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzeme;-><init>(Lcom/google/android/gms/internal/ads/zzemf;)V

    .line 44
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 2
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzemd;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzemd;-><init>(Lcom/google/android/gms/internal/ads/zzemf;)V

    .line 5
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v2

    .line 6
    :cond_2
    iget-boolean p2, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/zzfdz;->zzb(Landroid/content/Context;Z)V

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzjI:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 9
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcgv;->zzu()Lcom/google/android/gms/internal/ads/zzdvs;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzdvs;->zzc(Z)V

    .line 10
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzelz;

    iget p2, p3, Lcom/google/android/gms/internal/ads/zzelz;->zza:I

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p3

    invoke-interface {p3}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v4

    new-instance p3, Landroid/util/Pair;

    .line 12
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdru;->zza:Lcom/google/android/gms/internal/ads/zzdru;

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {p3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v5, Lcom/google/android/gms/internal/ads/zzdru;->zzb:Lcom/google/android/gms/internal/ads/zzdru;

    .line 14
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    aput-object p3, v4, v2

    aput-object v1, v4, v3

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdrw;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zza:Lcom/google/android/gms/internal/ads/zzfdb;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 17
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfdb;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 18
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfdb;->zzl(I)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zzz()Lcom/google/android/gms/internal/ads/zzfdc;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzfia;->zzg(Lcom/google/android/gms/internal/ads/zzfdc;)I

    move-result p3

    const/16 v1, 0x8

    .line 20
    invoke-static {v0, p3, v1, p1}, Lcom/google/android/gms/internal/ads/zzfhr$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhr;

    move-result-object v8

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzfdc;->zzo:Lcom/google/android/gms/ads/internal/client/zzco;

    if-eqz p3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzeli;->zzn(Lcom/google/android/gms/ads/internal/client/zzco;)V

    :cond_4
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 22
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzm()Lcom/google/android/gms/internal/ads/zzdhc;

    move-result-object v2

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcva;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    .line 23
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzcva;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 24
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcva;->zze()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p2

    .line 25
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdhc;->zzf(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzdhc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzc()Lcom/google/android/gms/internal/ads/zzeli;

    move-result-object v4

    .line 26
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzb()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzdbr;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbr;->zzn()Lcom/google/android/gms/internal/ads/zzdbs;

    move-result-object p2

    .line 27
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdhc;->zzg(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzdhc;

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zzb()Lcom/google/android/gms/internal/ads/zzdgy;

    move-result-object p2

    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdhc;->zze(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzdhc;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcoh;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzcoh;-><init>(Landroid/view/ViewGroup;)V

    .line 29
    invoke-interface {v2, p2}, Lcom/google/android/gms/internal/ads/zzdhc;->zzd(Lcom/google/android/gms/internal/ads/zzcoh;)Lcom/google/android/gms/internal/ads/zzdhc;

    .line 30
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdhc;->zza()Lcom/google/android/gms/internal/ads/zzdhd;

    move-result-object v9

    .line 31
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 32
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdhd;->zzc()Lcom/google/android/gms/internal/ads/zzfib;

    move-result-object p2

    .line 33
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfib;->zzi(I)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 34
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfib;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 35
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfib;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfib;

    move-object v7, p2

    goto :goto_1

    :cond_5
    move-object v7, v0

    .line 36
    :goto_1
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzt()Lcom/google/android/gms/internal/ads/zzfeb;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzfeb;->zza(I)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcrh;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfgc;->zzc()Lcom/google/android/gms/internal/ads/zzgpd;

    move-result-object p2

    .line 38
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzc()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdhd;->zza()Lcom/google/android/gms/internal/ads/zzcrw;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrw;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcrw;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-direct {p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzcrh;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/util/concurrent/ListenableFuture;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzf:Lcom/google/android/gms/internal/ads/zzcrh;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzemc;

    move-object v4, p2

    move-object v5, p0

    move-object v6, p4

    .line 40
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzemc;-><init>(Lcom/google/android/gms/internal/ads/zzemf;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzfib;Lcom/google/android/gms/internal/ads/zzfhr;Lcom/google/android/gms/internal/ads/zzdhd;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrh;->zza(Lcom/google/android/gms/internal/ads/zzgoq;)V

    return v3
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzf:Lcom/google/android/gms/internal/ads/zzcrh;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrh;->zzb()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zze()Lcom/google/android/gms/internal/ads/zzcvv;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfee;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzelv;->zze()Lcom/google/android/gms/internal/ads/zzcvv;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfee;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcvv;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zze()Lcom/google/android/gms/internal/ads/zzcgv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzb:Lcom/google/android/gms/internal/ads/zzcgv;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzelv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zzd:Lcom/google/android/gms/internal/ads/zzelv;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzemf;->zze:Lcom/google/android/gms/internal/ads/zzfie;

    return-object v0
.end method
