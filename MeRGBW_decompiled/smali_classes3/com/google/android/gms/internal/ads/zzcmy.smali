.class final synthetic Lcom/google/android/gms/internal/ads/zzcmy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcmz;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcmz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lcom/google/android/gms/internal/ads/zzcmz;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcmy;->zza:Lcom/google/android/gms/internal/ads/zzcmz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzcmz;->zza:Lcom/google/android/gms/internal/ads/zzcna;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcna;->zzg()Lcom/google/android/gms/internal/ads/zzcnf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcnf;->zzm()V

    return-void
.end method
