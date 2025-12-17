.class final synthetic Lcom/google/android/gms/internal/ads/zzny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdm;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzme;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzbu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzme;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:Lcom/google/android/gms/internal/ads/zzbu;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmg;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzme;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:Lcom/google/android/gms/internal/ads/zzbu;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzmg;->zzp(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzbu;)V

    .line 2
    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzb:I

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzc:I

    iget p1, v1, Lcom/google/android/gms/internal/ads/zzbu;->zzd:F

    return-void
.end method
