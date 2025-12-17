.class final synthetic Lcom/google/android/gms/ads/internal/overlay/zzx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/overlay/zzy;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Ljava/util/Map;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzy;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza:Lcom/google/android/gms/ads/internal/overlay/zzy;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzc:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zza:Lcom/google/android/gms/ads/internal/overlay/zzy;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/overlay/zzx;->zzc:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/overlay/zzy;->zzk(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
