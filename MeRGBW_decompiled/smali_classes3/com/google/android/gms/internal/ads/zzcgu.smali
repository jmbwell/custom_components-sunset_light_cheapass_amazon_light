.class public final Lcom/google/android/gms/internal/ads/zzcgu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaup;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfue;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zza:Landroid/content/Context;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzdc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 3
    :cond_2
    :goto_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfux;->zze()Lcom/google/android/gms/internal/ads/zzfuw;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbci;->zzdj:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v3

    .line 5
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfuw;->zza(F)Lcom/google/android/gms/internal/ads/zzfuw;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfux;

    .line 7
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfuz;->zzg()Lcom/google/android/gms/internal/ads/zzfuy;

    move-result-object v3

    sget-object v4, Lcom/google/android/gms/internal/ads/zzbci;->zzdk:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 9
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzfuy;->zza(Z)Lcom/google/android/gms/internal/ads/zzfuy;

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfuz;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfui;->zzs()Lcom/google/android/gms/internal/ads/zzfuh;

    move-result-object v4

    .line 12
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfuh;->zzi(I)Lcom/google/android/gms/internal/ads/zzfuh;

    iget-object p2, p2, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 13
    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzfuh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfuh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzcG:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 15
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {v4, p2}, Lcom/google/android/gms/internal/ads/zzfuh;->zza(Z)Lcom/google/android/gms/internal/ads/zzfuh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzcZ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 17
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 18
    :goto_2
    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzfuh;->zzh(Z)Lcom/google/android/gms/internal/ads/zzfuh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzdb:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 20
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuh;->zzg(J)Lcom/google/android/gms/internal/ads/zzfuh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzdl:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 22
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuh;->zze(J)Lcom/google/android/gms/internal/ads/zzfuh;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzda:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v1, p2

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzfuh;->zzd(J)Lcom/google/android/gms/internal/ads/zzfuh;

    .line 25
    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzfuh;->zzc(Lcom/google/android/gms/internal/ads/zzfux;)Lcom/google/android/gms/internal/ads/zzfuh;

    .line 26
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzfuh;->zzf(Lcom/google/android/gms/internal/ads/zzfuz;)Lcom/google/android/gms/internal/ads/zzfuh;

    .line 27
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfui;

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbzh;->zza:Lcom/google/android/gms/internal/ads/zzgpd;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzfue;->zza(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/google/android/gms/internal/ads/zzfui;)Lcom/google/android/gms/internal/ads/zzfue;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    .line 29
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfue;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfue;->zzh()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "uns"

    goto :goto_0

    :cond_0
    const-string v0, "2.0"

    goto :goto_0

    :cond_1
    const-string v0, "1.0"

    :goto_0
    return-object v0
.end method

.method public final zzd(Landroid/view/MotionEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zzg(Landroid/view/InputEvent;)V

    return-void
.end method

.method public final zze(III)V
    .locals 20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcgu;->zza:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v4

    int-to-float v10, v4

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v4

    int-to-float v11, v4

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    move/from16 v5, p3

    int-to-long v14, v5

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v5, 0x0

    move-wide v7, v14

    .line 3
    invoke-static/range {v5 .. v12}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 4
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfue;->zzg(Landroid/view/InputEvent;)V

    .line 5
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v5

    int-to-float v5, v5

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v6

    int-to-float v6, v6

    const/16 v19, 0x0

    const-wide/16 v12, 0x0

    const/16 v16, 0x2

    move/from16 v17, v5

    move/from16 v18, v6

    .line 8
    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v5

    .line 9
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfue;->zzg(Landroid/view/InputEvent;)V

    .line 10
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v1}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v1

    int-to-float v1, v1

    .line 12
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zza()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v3, v2}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzC(Landroid/content/Context;I)I

    move-result v2

    int-to-float v2, v2

    const/16 v16, 0x1

    move/from16 v17, v1

    move/from16 v18, v2

    .line 13
    invoke-static/range {v12 .. v19}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 14
    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzfue;->zzg(Landroid/view/InputEvent;)V

    .line 15
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public final zzf(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    const/4 v0, 0x0

    invoke-virtual {p4, p1, p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzfue;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzg(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ads/zzfue;->zze(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzh(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zzi([Ljava/lang/StackTraceElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zzf(Ljava/util/List;)V

    return-void
.end method

.method public final zzj(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzfue;->zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzk(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final zzl(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgu;->zzb:Lcom/google/android/gms/internal/ads/zzfue;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfue;->zzc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
