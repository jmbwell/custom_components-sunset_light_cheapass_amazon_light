.class final synthetic Lcom/google/android/gms/internal/ads/zzexo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzexp;

.field private final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zze;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzexp;Lcom/google/android/gms/ads/internal/client/zze;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzexo;->zza:Lcom/google/android/gms/internal/ads/zzexp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzexo;->zza:Lcom/google/android/gms/internal/ads/zzexp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzexp;->zze:Lcom/google/android/gms/internal/ads/zzext;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzext;->zzi()Lcom/google/android/gms/internal/ads/zzeyj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzexo;->zzb:Lcom/google/android/gms/ads/internal/client/zze;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzeyj;->zzdN(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void
.end method
