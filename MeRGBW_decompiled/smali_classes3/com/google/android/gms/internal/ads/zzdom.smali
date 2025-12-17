.class public final Lcom/google/android/gms/internal/ads/zzdom;
.super Lcom/google/android/gms/internal/ads/zzcqs;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdgp;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzddd;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcwf;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcxm;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcrn;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbvx;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfor;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzm:Lcom/google/android/gms/internal/ads/zzdsm;

.field private zzn:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqr;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcek;Lcom/google/android/gms/internal/ads/zzdgp;Lcom/google/android/gms/internal/ads/zzddd;Lcom/google/android/gms/internal/ads/zzcwf;Lcom/google/android/gms/internal/ads/zzcxm;Lcom/google/android/gms/internal/ads/zzcrn;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfor;Lcom/google/android/gms/internal/ads/zzfcw;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqs;-><init>(Lcom/google/android/gms/internal/ads/zzcqr;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzn:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdom;->zze:Lcom/google/android/gms/internal/ads/zzdgp;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzf:Lcom/google/android/gms/internal/ads/zzddd;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzg:Lcom/google/android/gms/internal/ads/zzcwf;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzh:Lcom/google/android/gms/internal/ads/zzcxm;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzi:Lcom/google/android/gms/internal/ads/zzcrn;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzk:Lcom/google/android/gms/internal/ads/zzfor;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwr;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzfcj;->zzl:Lcom/google/android/gms/internal/ads/zzbvt;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbvt;->zza:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbvt;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 3
    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbwr;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzj:Lcom/google/android/gms/internal/ads/zzbvx;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzl:Lcom/google/android/gms/internal/ads/zzfcw;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzm:Lcom/google/android/gms/internal/ads/zzdsm;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcek;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzhe:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzn:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzh;->zzf:Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdol;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdol;-><init>(Lcom/google/android/gms/internal/ads/zzcek;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgpd;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcek;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public final zza(ZLandroid/app/Activity;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zze:Lcom/google/android/gms/internal/ads/zzdgp;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdgp;->zzb()Lcom/google/android/gms/internal/ads/zzfcj;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Lcom/google/android/gms/internal/ads/zzfcj;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzom:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzb:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzm:Lcom/google/android/gms/internal/ads/zzdsm;

    .line 6
    invoke-static {v1, v3, v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzR(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzdsm;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzaR:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzK(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 17
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzg:Lcom/google/android/gms/internal/ads/zzcwf;

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zze()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzaS:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzk:Lcom/google/android/gms/internal/ads/zzfor;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdom;->zza:Lcom/google/android/gms/internal/ads/zzfcu;

    .line 22
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/internal/ads/zzfct;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfct;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfcm;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfor;->zza(Ljava/lang/String;)V

    :cond_1
    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzn:Z

    if-eqz v1, :cond_3

    .line 9
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The rewarded ad have been showed."

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzi(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzg:Lcom/google/android/gms/internal/ads/zzcwf;

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 11
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfee;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 12
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcwf;->zzc(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v2

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzn:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzf:Lcom/google/android/gms/internal/ads/zzddd;

    .line 13
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzddd;->zza()V

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzc:Landroid/content/Context;

    :cond_4
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzg:Lcom/google/android/gms/internal/ads/zzcwf;

    .line 14
    invoke-interface {v0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzdgp;->zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwf;)V

    .line 15
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzddd;->zzb()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdgo; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzg:Lcom/google/android/gms/internal/ads/zzcwf;

    .line 16
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcwf;->zzd(Lcom/google/android/gms/internal/ads/zzdgo;)V

    return v2
.end method

.method public final zzb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzn:Z

    return v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbvx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzj:Lcom/google/android/gms/internal/ads/zzbvx;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzi:Lcom/google/android/gms/internal/ads/zzcrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrn;->zzl()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcek;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcek;->zzaB()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzg()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzh:Lcom/google/android/gms/internal/ads/zzcxm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcxm;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzfcw;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdom;->zzl:Lcom/google/android/gms/internal/ads/zzfcw;

    return-object v0
.end method
