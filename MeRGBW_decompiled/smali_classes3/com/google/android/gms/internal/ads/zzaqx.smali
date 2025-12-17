.class public final Lcom/google/android/gms/internal/ads/zzaqx;
.super Lcom/google/android/gms/internal/ads/zzhib;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjt;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzaqy;->zzi()Lcom/google/android/gms/internal/ads/zzaqy;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhib;-><init>(Lcom/google/android/gms/internal/ads/zzhih;)V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzaqx;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zza:Lcom/google/android/gms/internal/ads/zzhih;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;->zzg(Ljava/lang/String;)V

    return-object p0
.end method

.method public final zzb(Z)Lcom/google/android/gms/internal/ads/zzaqx;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaqx;->zza:Lcom/google/android/gms/internal/ads/zzhih;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzaqy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzaqy;->zzh(Z)V

    return-object p0
.end method
