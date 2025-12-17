.class final Lcom/google/android/gms/internal/ads/zzdnq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgoq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzfcj;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfcm;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcmi;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzdnx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdnx;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcm;Lcom/google/android/gms/internal/ads/zzcmi;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zza:Lcom/google/android/gms/internal/ads/zzfcj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzc:Lcom/google/android/gms/internal/ads/zzcmi;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzd:Lcom/google/android/gms/internal/ads/zzdnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcek;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zza:Lcom/google/android/gms/internal/ads/zzfcj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzb:Lcom/google/android/gms/internal/ads/zzfcm;

    .line 2
    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzcek;->zzaD(Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcm;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcek;->zzP()Lcom/google/android/gms/internal/ads/zzcgi;

    move-result-object p1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzc:Lcom/google/android/gms/internal/ads/zzcmi;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdnq;->zzd:Lcom/google/android/gms/internal/ads/zzdnx;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdnx;->zzm()Lcom/google/android/gms/internal/ads/zzecn;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdnx;->zzn()Lcom/google/android/gms/internal/ads/zzfjv;

    move-result-object v4

    .line 6
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcgi;->zzd(Lcom/google/android/gms/internal/ads/zzcmi;Lcom/google/android/gms/internal/ads/zzecn;Lcom/google/android/gms/internal/ads/zzfjv;)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdnx;->zzm()Lcom/google/android/gms/internal/ads/zzecn;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdnx;->zzl()Lcom/google/android/gms/internal/ads/zzdsm;

    move-result-object v2

    .line 7
    invoke-interface {p1, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzcgi;->zze(Lcom/google/android/gms/internal/ads/zzcmi;Lcom/google/android/gms/internal/ads/zzecn;Lcom/google/android/gms/internal/ads/zzdsm;)V

    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zznQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 10
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgi;->zzb(Lcom/google/android/gms/internal/ads/zzfcj;)V

    :cond_1
    return-void
.end method
