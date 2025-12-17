.class final Lcom/google/android/gms/internal/ads/zzfla;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzflb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzflb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfla;->zza:Lcom/google/android/gms/internal/ads/zzflb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzA()Lcom/google/android/gms/internal/ads/zzfkk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzA()Lcom/google/android/gms/internal/ads/zzfkk;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzB()Lcom/google/android/gms/common/util/Clock;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzC()Lcom/google/android/gms/internal/ads/zzfkr;

    move-result-object v5

    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget v6, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzz()Ljava/lang/String;

    move-result-object v7

    .line 4
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzfkk;->zzj(JLcom/google/android/gms/internal/ads/zzfkr;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
