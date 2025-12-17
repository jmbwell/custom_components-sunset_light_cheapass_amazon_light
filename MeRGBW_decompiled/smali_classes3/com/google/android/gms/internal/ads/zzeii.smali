.class final Lcom/google/android/gms/internal/ads/zzeii;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdgp;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzdpi;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfdc;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfcj;

.field private final zzf:Lcom/google/common/util/concurrent/ListenableFuture;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcek;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzbjo;

.field private final zzi:Z

.field private final zzj:Lcom/google/android/gms/internal/ads/zzecy;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdsg;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzdsm;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdpi;Lcom/google/android/gms/internal/ads/zzfdc;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzcek;Lcom/google/android/gms/internal/ads/zzbjo;ZLcom/google/android/gms/internal/ads/zzecy;Lcom/google/android/gms/internal/ads/zzdsg;Lcom/google/android/gms/internal/ads/zzdsm;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeii;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Lcom/google/android/gms/internal/ads/zzdpi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzc:Lcom/google/android/gms/internal/ads/zzfdc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeii;->zze:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzg:Lcom/google/android/gms/internal/ads/zzcek;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzh:Lcom/google/android/gms/internal/ads/zzbjo;

    iput-boolean p9, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzi:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzj:Lcom/google/android/gms/internal/ads/zzecy;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzk:Lcom/google/android/gms/internal/ads/zzdsg;

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzeii;->zzl:Lcom/google/android/gms/internal/ads/zzdsm;

    return-void
.end method


# virtual methods
.method public final zza(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcwf;)V
    .locals 22

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzf:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgot;->zzs(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdon;

    :try_start_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeii;->zze:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzg:Lcom/google/android/gms/internal/ads/zzcek;

    .line 2
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcek;->zzaB()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzbc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 3
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzb:Lcom/google/android/gms/internal/ads/zzdpi;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzc:Lcom/google/android/gms/internal/ads/zzfdc;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzfdc;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 5
    invoke-virtual {v3, v4, v6, v6}, Lcom/google/android/gms/internal/ads/zzdpi;->zza(Lcom/google/android/gms/ads/internal/client/zzr;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcm;)Lcom/google/android/gms/internal/ads/zzcek;

    move-result-object v3

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdon;->zzk()Lcom/google/android/gms/internal/ads/zzdei;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzbke;->zzb(Lcom/google/android/gms/internal/ads/zzcek;Lcom/google/android/gms/internal/ads/zzbkd;)V

    new-instance v4, Lcom/google/android/gms/internal/ads/zzdpm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzdpm;-><init>()V

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeii;->zza:Landroid/content/Context;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcek;->zzE()Landroid/view/View;

    move-result-object v8

    .line 7
    invoke-virtual {v4, v7, v8}, Lcom/google/android/gms/internal/ads/zzdpm;->zza(Landroid/content/Context;Landroid/view/View;)V

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdon;->zzl()Lcom/google/android/gms/internal/ads/zzdph;

    move-result-object v7

    iget-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzi:Z

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzh:Lcom/google/android/gms/internal/ads/zzbjo;

    goto :goto_0

    :cond_1
    move-object v8, v6

    :goto_0
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzk:Lcom/google/android/gms/internal/ads/zzdsg;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzdsg;->zze()Landroid/os/Bundle;

    move-result-object v9

    .line 10
    invoke-virtual {v7, v3, v5, v8, v9}, Lcom/google/android/gms/internal/ads/zzdph;->zzi(Lcom/google/android/gms/internal/ads/zzcek;ZLcom/google/android/gms/internal/ads/zzbjo;Landroid/os/Bundle;)V

    .line 11
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcek;->zzP()Lcom/google/android/gms/internal/ads/zzcgi;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzeih;

    invoke-direct {v8, v4, v3}, Lcom/google/android/gms/internal/ads/zzeih;-><init>(Lcom/google/android/gms/internal/ads/zzdpm;Lcom/google/android/gms/internal/ads/zzcek;)V

    .line 12
    invoke-interface {v7, v8}, Lcom/google/android/gms/internal/ads/zzcgi;->zzG(Lcom/google/android/gms/internal/ads/zzcgg;)V

    .line 13
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcek;->zzP()Lcom/google/android/gms/internal/ads/zzcgi;

    move-result-object v4

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzeig;

    invoke-direct {v7, v3}, Lcom/google/android/gms/internal/ads/zzeig;-><init>(Lcom/google/android/gms/internal/ads/zzcek;)V

    invoke-interface {v4, v7}, Lcom/google/android/gms/internal/ads/zzcgi;->zzH(Lcom/google/android/gms/internal/ads/zzcgh;)V

    .line 14
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzs:Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfco;->zzb:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzfco;->zza:Ljava/lang/String;

    invoke-interface {v3, v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzcek;->zzau(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcez; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    move-object v11, v3

    .line 17
    invoke-interface {v11, v5}, Lcom/google/android/gms/internal/ads/zzcek;->zzag(Z)V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzi:Z

    .line 18
    new-instance v3, Lcom/google/android/gms/ads/internal/zzl;

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzh:Lcom/google/android/gms/internal/ads/zzbjo;

    .line 19
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzbjo;->zzc(Z)Z

    move-result v7

    move v13, v7

    goto :goto_2

    :cond_3
    move v13, v4

    .line 20
    :goto_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeii;->zza:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/zzs;->zzM(Landroid/content/Context;)Z

    move-result v14

    if-eqz v2, :cond_4

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzh:Lcom/google/android/gms/internal/ads/zzbjo;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbjo;->zzd()Z

    move-result v7

    if-eqz v7, :cond_4

    move v15, v5

    goto :goto_3

    :cond_4
    move v15, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzh:Lcom/google/android/gms/internal/ads/zzbjo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbjo;->zze()F

    move-result v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x0

    :goto_4
    move/from16 v16, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzeii;->zze:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 21
    iget-boolean v4, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzO:Z

    iget-boolean v7, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzP:Z

    const/16 v17, -0x1

    move-object v12, v3

    move/from16 v18, p1

    move/from16 v19, v4

    move/from16 v20, v7

    invoke-direct/range {v12 .. v20}, Lcom/google/android/gms/ads/internal/zzl;-><init>(ZZZFIZZZ)V

    if-eqz p3, :cond_6

    .line 22
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzcwf;->zzb()V

    .line 23
    :cond_6
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzb()Lcom/google/android/gms/ads/internal/overlay/zzm;

    new-instance v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdon;->zzj()Lcom/google/android/gms/internal/ads/zzdge;

    move-result-object v9

    iget v12, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzQ:I

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    iget-object v14, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzB:Ljava/lang/String;

    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfcj;->zzs:Lcom/google/android/gms/internal/ads/zzfco;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzfco;->zzb:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfco;->zza:Ljava/lang/String;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzc:Lcom/google/android/gms/internal/ads/zzfdc;

    .line 25
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfcj;->zzb()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzj:Lcom/google/android/gms/internal/ads/zzecy;

    :cond_7
    move-object/from16 v20, v6

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfdc;->zzg:Ljava/lang/String;

    .line 26
    invoke-interface {v11}, Lcom/google/android/gms/internal/ads/zzcek;->zzn()Ljava/lang/String;

    move-result-object v21

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v7, v4

    move-object v6, v15

    move-object v15, v3

    move-object/from16 v16, v6

    move-object/from16 v17, v0

    move-object/from16 v18, v2

    move-object/from16 v19, p3

    invoke-direct/range {v7 .. v21}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/client/zza;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/ads/internal/overlay/zzac;Lcom/google/android/gms/internal/ads/zzcek;ILcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcwf;Lcom/google/android/gms/internal/ads/zzbsp;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeii;->zzl:Lcom/google/android/gms/internal/ads/zzdsm;

    move-object/from16 v2, p2

    .line 27
    invoke-static {v2, v4, v5, v0}, Lcom/google/android/gms/ads/internal/overlay/zzm;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;ZLcom/google/android/gms/internal/ads/zzdsm;)V

    return-void

    :catch_0
    move-exception v0

    .line 15
    sget v2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v2, ""

    .line 16
    invoke-static {v2, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzfcj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeii;->zze:Lcom/google/android/gms/internal/ads/zzfcj;

    return-object v0
.end method
