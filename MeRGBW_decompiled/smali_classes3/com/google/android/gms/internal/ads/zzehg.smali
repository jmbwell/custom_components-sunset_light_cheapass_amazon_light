.class public final Lcom/google/android/gms/internal/ads/zzehg;
.super Lcom/google/android/gms/internal/ads/zzegz;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcgv;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcva;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzdbs;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzehk;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfcv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final zzf:Lcom/google/android/gms/internal/ads/zzeee;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcgv;Lcom/google/android/gms/internal/ads/zzcva;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzfcv;Lcom/google/android/gms/internal/ads/zzehk;Lcom/google/android/gms/internal/ads/zzeee;)V
    .locals 0
    .param p4    # Lcom/google/android/gms/internal/ads/zzfcv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzegz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzb:Lcom/google/android/gms/internal/ads/zzcva;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzc:Lcom/google/android/gms/internal/ads/zzdbs;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzehg;->zze:Lcom/google/android/gms/internal/ads/zzfcv;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzd:Lcom/google/android/gms/internal/ads/zzehk;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzf:Lcom/google/android/gms/internal/ads/zzeee;

    return-void
.end method


# virtual methods
.method protected final zzc(Lcom/google/android/gms/internal/ads/zzfdc;Landroid/os/Bundle;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzb:Lcom/google/android/gms/internal/ads/zzcva;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzb(Lcom/google/android/gms/internal/ads/zzfdc;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 2
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzcva;->zzc(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzcva;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcut;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzd:Lcom/google/android/gms/internal/ads/zzehk;

    invoke-direct {p1, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzcut;-><init>(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcj;Lcom/google/android/gms/internal/ads/zzehk;)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzd(Lcom/google/android/gms/internal/ads/zzcut;)Lcom/google/android/gms/internal/ads/zzcva;

    .line 4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdY:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->zze:Lcom/google/android/gms/internal/ads/zzfcv;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzf(Lcom/google/android/gms/internal/ads/zzfcv;)Lcom/google/android/gms/internal/ads/zzcva;

    :cond_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzdZ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 8
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzf:Lcom/google/android/gms/internal/ads/zzeee;

    .line 9
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcva;->zzg(Lcom/google/android/gms/internal/ads/zzeee;)Lcom/google/android/gms/internal/ads/zzcva;

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzehg;->zza:Lcom/google/android/gms/internal/ads/zzcgv;

    .line 10
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcgv;->zzn()Lcom/google/android/gms/internal/ads/zzdoq;

    move-result-object p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcva;->zze()Lcom/google/android/gms/internal/ads/zzcvb;

    move-result-object p2

    .line 11
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoq;->zzd(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzdoq;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzehg;->zzc:Lcom/google/android/gms/internal/ads/zzdbs;

    .line 12
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzdoq;->zze(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzdoq;

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdoq;->zza()Lcom/google/android/gms/internal/ads/zzdor;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdor;->zza()Lcom/google/android/gms/internal/ads/zzcrw;

    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcrw;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcrw;->zzc(Lcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
