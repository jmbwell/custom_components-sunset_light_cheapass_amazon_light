.class final Lcom/google/android/gms/internal/ads/zzfkx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/ads/internal/client/zzea;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzflb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzflb;JLcom/google/android/gms/ads/internal/client/zzea;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzc:Lcom/google/android/gms/internal/ads/zzflb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzc:Lcom/google/android/gms/internal/ads/zzflb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzA()Lcom/google/android/gms/internal/ads/zzfkk;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzA()Lcom/google/android/gms/internal/ads/zzfkk;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zza:J

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfkx;->zzb:Lcom/google/android/gms/ads/internal/client/zzea;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzC()Lcom/google/android/gms/internal/ads/zzfkr;

    move-result-object v6

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzflb;->zzE(Lcom/google/android/gms/ads/internal/client/zzea;)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzflb;->zze:Lcom/google/android/gms/ads/internal/client/zzft;

    .line 2
    iget v7, v1, Lcom/google/android/gms/ads/internal/client/zzft;->zzd:I

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzn()I

    move-result v8

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzflb;->zzz()Ljava/lang/String;

    move-result-object v9

    .line 5
    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/ads/zzfkk;->zzi(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzfkr;IILjava/lang/String;)V

    :cond_0
    return-void
.end method
