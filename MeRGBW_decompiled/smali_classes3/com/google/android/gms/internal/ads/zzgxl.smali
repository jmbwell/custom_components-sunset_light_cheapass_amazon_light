.class final Lcom/google/android/gms/internal/ads/zzgxl;
.super Lcom/google/android/gms/internal/ads/zzgxn;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzgxm;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzhgg;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgxm;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzgxl;->zza:Lcom/google/android/gms/internal/ads/zzgxm;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzgxn;-><init>(Lcom/google/android/gms/internal/ads/zzhgg;Ljava/lang/Class;[B)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgzn;Lcom/google/android/gms/internal/ads/zzgqt;)Lcom/google/android/gms/internal/ads/zzgqd;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/ads/zzgqt;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgxl;->zza:Lcom/google/android/gms/internal/ads/zzgxm;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzgxm;->zza(Lcom/google/android/gms/internal/ads/zzgzn;Lcom/google/android/gms/internal/ads/zzgqt;)Lcom/google/android/gms/internal/ads/zzgqd;

    move-result-object p1

    return-object p1
.end method
