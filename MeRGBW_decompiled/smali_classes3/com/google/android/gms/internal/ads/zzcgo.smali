.class final synthetic Lcom/google/android/gms/internal/ads/zzcgo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcgr;

.field private final synthetic zzb:J

.field private final synthetic zzc:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcgr;JLjava/util/concurrent/ThreadPoolExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zza:Lcom/google/android/gms/internal/ads/zzcgr;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzb:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzc:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public final synthetic onSuccess(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zza:Lcom/google/android/gms/internal/ads/zzcgr;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzb:J

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgo;->zzc:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzcgr;->zzb(JLjava/util/concurrent/ThreadPoolExecutor;Landroidx/webkit/WebViewStartUpResult;)V

    return-void
.end method
