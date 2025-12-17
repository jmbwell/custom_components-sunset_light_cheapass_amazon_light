.class final Lcom/google/android/gms/internal/ads/zzcrc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgoq;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgoq;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcrh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcrh;Lcom/google/android/gms/internal/ads/zzgoq;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zza:Lcom/google/android/gms/internal/ads/zzgoq;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zzb:Lcom/google/android/gms/internal/ads/zzcrh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zzb:Lcom/google/android/gms/internal/ads/zzcrh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrh;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zza:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgoq;->zza(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zzb:Lcom/google/android/gms/internal/ads/zzcrh;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcqs;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrh;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcrc;->zza:Lcom/google/android/gms/internal/ads/zzgoq;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgoq;->zzb(Ljava/lang/Object;)V

    return-void
.end method
