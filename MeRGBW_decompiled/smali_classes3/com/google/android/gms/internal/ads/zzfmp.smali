.class public final Lcom/google/android/gms/internal/ads/zzfmp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfmi;


# static fields
.field private static zza:Lcom/google/android/gms/internal/ads/zzfmp;


# instance fields
.field private zzb:F

.field private zzc:Lcom/google/android/gms/internal/ads/zzfmd;

.field private zzd:Lcom/google/android/gms/internal/ads/zzfmh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfme;Lcom/google/android/gms/internal/ads/zzfma;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzb:F

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzfmp;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmp;->zza:Lcom/google/android/gms/internal/ads/zzfmp;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfma;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfma;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfme;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfme;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmp;

    invoke-direct {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzfmp;-><init>(Lcom/google/android/gms/internal/ads/zzfme;Lcom/google/android/gms/internal/ads/zzfma;)V

    sput-object v2, Lcom/google/android/gms/internal/ads/zzfmp;->zza:Lcom/google/android/gms/internal/ads/zzfmp;

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfmp;->zza:Lcom/google/android/gms/internal/ads/zzfmp;

    return-object v0
.end method


# virtual methods
.method public final zzb(Landroid/content/Context;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzflz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzflz;-><init>()V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfmd;

    .line 2
    invoke-direct {v2, v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzfmd;-><init>(Landroid/os/Handler;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzflz;Lcom/google/android/gms/internal/ads/zzfmp;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzc:Lcom/google/android/gms/internal/ads/zzfmd;

    return-void
.end method

.method public final zzc()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmg;->zza()Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzfmj;->zzg(Lcom/google/android/gms/internal/ads/zzfmi;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmg;->zza()Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmj;->zze()V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzc()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzc:Lcom/google/android/gms/internal/ads/zzfmd;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmd;->zza()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnr;->zzc()V

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnr;->zze()V

    return-void
.end method

.method public final zze()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzb()Lcom/google/android/gms/internal/ads/zzfnr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnr;->zzd()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmg;->zza()Lcom/google/android/gms/internal/ads/zzfmg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmj;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzc:Lcom/google/android/gms/internal/ads/zzfmd;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmd;->zzb()V

    return-void
.end method

.method public final zzf(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzb:F

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzd:Lcom/google/android/gms/internal/ads/zzfmh;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzd:Lcom/google/android/gms/internal/ads/zzfmh;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzd:Lcom/google/android/gms/internal/ads/zzfmh;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmh;->zzf()Ljava/util/Collection;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfln;

    .line 4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfln;->zzg()Lcom/google/android/gms/internal/ads/zzfmx;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzfmx;->zzo(F)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzg()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfmp;->zzb:F

    return v0
.end method
