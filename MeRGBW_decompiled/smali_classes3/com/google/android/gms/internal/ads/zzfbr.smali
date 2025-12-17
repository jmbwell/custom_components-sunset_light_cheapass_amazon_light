.class final synthetic Lcom/google/android/gms/internal/ads/zzfbr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfbs;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfbs;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfbr;->zza:Lcom/google/android/gms/internal/ads/zzfbs;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfbr;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfbr;->zza:Lcom/google/android/gms/internal/ads/zzfbs;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbs;->zze:Lcom/google/android/gms/internal/ads/zzfbw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfbw;->zzg()Lcom/google/android/gms/internal/ads/zzfbn;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfbr;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfbn;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
