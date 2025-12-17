.class public final Lcom/google/android/gms/internal/ads/zzgdh;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgcz;


# instance fields
.field private final zza:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgea;Lcom/google/android/gms/internal/ads/zzgpd;Lcom/google/android/gms/internal/ads/zzfui;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzfui;->zzc()Z

    move-result p4

    if-eqz p4, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzgdg;

    invoke-direct {p4, p0, p1}, Lcom/google/android/gms/internal/ads/zzgdg;-><init>(Lcom/google/android/gms/internal/ads/zzgdh;Landroid/content/Context;)V

    .line 2
    invoke-interface {p3, p4}, Lcom/google/android/gms/internal/ads/zzgpd;->zzc(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    const/16 p3, 0x35

    .line 3
    invoke-virtual {p2, p3, p1}, Lcom/google/android/gms/internal/ads/zzgea;->zze(ILcom/google/common/util/concurrent/ListenableFuture;)Lcom/google/common/util/concurrent/ListenableFuture;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgot;->zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/util/Map;Landroid/content/Context;Landroid/view/View;)V
    .locals 0

    .line 1
    const-string p2, "gs"

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzd(Ljava/util/Map;)V
    .locals 2

    .line 1
    const-string v0, "gs"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgdh;->zza:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
