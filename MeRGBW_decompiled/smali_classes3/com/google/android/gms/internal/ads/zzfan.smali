.class public final Lcom/google/android/gms/internal/ads/zzfan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzely;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Ljava/util/concurrent/Executor;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzeli;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfbn;

.field private zzf:Lcom/google/android/gms/internal/ads/zzbdd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfie;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfdb;

.field private zzi:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzeli;Lcom/google/android/gms/internal/ads/zzfbn;Lcom/google/android/gms/internal/ads/zzfdb;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzd:Lcom/google/android/gms/internal/ads/zzeli;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzh:Lcom/google/android/gms/internal/ads/zzfdb;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfan;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzv()Lcom/google/android/gms/internal/ads/zzfie;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzg:Lcom/google/android/gms/internal/ads/zzfie;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/internal/client/zzm;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzelw;Lcom/google/android/gms/internal/ads/zzelx;)Z
    .locals 9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Ad unit ID should not be null for interstitial ad."

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzf(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfam;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzfam;-><init>(Lcom/google/android/gms/internal/ads/zzfan;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfan;->zzb()Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzjI:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzf:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzu()Lcom/google/android/gms/internal/ads/zzdvs;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdvs;->zzc(Z)V

    .line 8
    :cond_2
    check-cast p3, Lcom/google/android/gms/internal/ads/zzfag;

    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzfag;->zza:Lcom/google/android/gms/ads/internal/client/zzr;

    new-instance v1, Landroid/util/Pair;

    .line 9
    sget-object v3, Lcom/google/android/gms/internal/ads/zzdru;->zza:Lcom/google/android/gms/internal/ads/zzdru;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v3

    iget-wide v4, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzz:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    sget-object v4, Lcom/google/android/gms/internal/ads/zzdru;->zzb:Lcom/google/android/gms/internal/ads/zzdru;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzdru;->zza()Ljava/lang/String;

    move-result-object v4

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v5

    invoke-interface {v5}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/util/Pair;

    aput-object v1, v4, v0

    aput-object v3, v4, v2

    .line 13
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdrw;->zza([Landroid/util/Pair;)Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzh:Lcom/google/android/gms/internal/ads/zzfdb;

    .line 14
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzfdb;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 15
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzfdb;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 16
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfdb;->zza(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfdb;

    .line 17
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfdb;->zzv(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfdb;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfan;->zza:Landroid/content/Context;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfdb;->zzz()Lcom/google/android/gms/internal/ads/zzfdc;

    move-result-object p3

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzfia;->zzg(Lcom/google/android/gms/internal/ads/zzfdc;)I

    move-result v0

    const/4 v1, 0x4

    .line 19
    invoke-static {p2, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfhr$-CC;->zzo(Landroid/content/Context;IILcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfhr;

    move-result-object v7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zziV:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 22
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgv;->zzk()Lcom/google/android/gms/internal/ads/zzdgg;

    move-result-object v0

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcva;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    .line 23
    invoke-virtual {v3, p2}, Lcom/google/android/gms/internal/ads/zzcva;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 24
    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcva;->zze()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p2

    .line 25
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zze(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzdgg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzd:Lcom/google/android/gms/internal/ads/zzeli;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    .line 26
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzm(Lcom/google/android/gms/internal/ads/zzcyy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 27
    invoke-virtual {p2, p3, v3}, Lcom/google/android/gms/internal/ads/zzdbr;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdbr;->zzn()Lcom/google/android/gms/internal/ads/zzdbs;

    move-result-object p2

    .line 28
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zzf(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzdgg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzejp;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzf:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzejp;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    .line 29
    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zzd(Lcom/google/android/gms/internal/ads/zzejp;)Lcom/google/android/gms/internal/ads/zzdgg;

    .line 30
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgg;->zza()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p2

    :goto_0
    move-object v8, p2

    goto :goto_1

    .line 58
    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdbr;

    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzdbr;-><init>()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbr;->zza(Lcom/google/android/gms/internal/ads/zzcvs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 33
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbr;->zzb(Lcom/google/android/gms/internal/ads/zzcxg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 34
    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzdbr;->zzc(Lcom/google/android/gms/internal/ads/zzcvv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    :cond_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzc:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzcgv;->zzk()Lcom/google/android/gms/internal/ads/zzdgg;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/zzcva;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzcva;-><init>()V

    .line 36
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzcva;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 37
    invoke-virtual {v4, p3}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcva;->zze()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p2

    .line 38
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zze(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzdgg;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzd:Lcom/google/android/gms/internal/ads/zzeli;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    .line 39
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzm(Lcom/google/android/gms/internal/ads/zzcyy;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 40
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zza(Lcom/google/android/gms/internal/ads/zzcvs;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 41
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzb(Lcom/google/android/gms/internal/ads/zzcxg;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 42
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzc(Lcom/google/android/gms/internal/ads/zzcvv;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 43
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzf(Lcom/google/android/gms/ads/internal/client/zza;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 44
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzg(Lcom/google/android/gms/internal/ads/zzddz;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 45
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zze(Lcom/google/android/gms/ads/admanager/AppEventListener;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 46
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzk(Lcom/google/android/gms/internal/ads/zzcyj;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    .line 47
    invoke-virtual {v0, p2, p3}, Lcom/google/android/gms/internal/ads/zzdbr;->zzd(Lcom/google/android/gms/internal/ads/zzcwi;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/zzdbr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdbr;->zzn()Lcom/google/android/gms/internal/ads/zzdbs;

    move-result-object p2

    .line 48
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zzf(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzdgg;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzejp;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzf:Lcom/google/android/gms/internal/ads/zzbdd;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzejp;-><init>(Lcom/google/android/gms/internal/ads/zzbdd;)V

    .line 49
    invoke-interface {v3, p2}, Lcom/google/android/gms/internal/ads/zzdgg;->zzd(Lcom/google/android/gms/internal/ads/zzejp;)Lcom/google/android/gms/internal/ads/zzdgg;

    .line 50
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdgg;->zza()Lcom/google/android/gms/internal/ads/zzdgh;

    move-result-object p2

    goto :goto_0

    .line 51
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbeb;->zzc:Lcom/google/android/gms/internal/ads/zzbds;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbds;->zze()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 52
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgh;->zzc()Lcom/google/android/gms/internal/ads/zzfib;

    move-result-object p2

    .line 53
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzfib;->zzi(I)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object p3, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzp:Ljava/lang/String;

    .line 54
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzfib;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfib;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/client/zzm;->zzm:Landroid/os/Bundle;

    .line 55
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfib;->zzd(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfib;

    move-object v6, p2

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    move-object v6, p1

    .line 56
    :goto_2
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzdgh;->zzb()Lcom/google/android/gms/internal/ads/zzcrw;

    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrw;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrw;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfal;

    move-object v3, p2

    move-object v4, p0

    move-object v5, p4

    .line 58
    invoke-direct/range {v3 .. v8}, Lcom/google/android/gms/internal/ads/zzfal;-><init>(Lcom/google/android/gms/internal/ads/zzfan;Lcom/google/android/gms/internal/ads/zzelx;Lcom/google/android/gms/internal/ads/zzfib;Lcom/google/android/gms/internal/ads/zzfhr;Lcom/google/android/gms/internal/ads/zzdgh;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgot;->zzq(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgoq;Ljava/util/concurrent/Executor;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzbdd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzf:Lcom/google/android/gms/internal/ads/zzbdd;

    return-void
.end method

.method final synthetic zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzd:Lcom/google/android/gms/internal/ads/zzeli;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/google/android/gms/internal/ads/zzfee;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeli;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method

.method final synthetic zze()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzb:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method final synthetic zzf()Lcom/google/android/gms/internal/ads/zzeli;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzd:Lcom/google/android/gms/internal/ads/zzeli;

    return-object v0
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfbn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zze:Lcom/google/android/gms/internal/ads/zzfbn;

    return-object v0
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfie;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzg:Lcom/google/android/gms/internal/ads/zzfie;

    return-object v0
.end method

.method final synthetic zzi(Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfan;->zzi:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method
