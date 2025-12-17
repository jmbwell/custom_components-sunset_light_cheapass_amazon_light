.class final synthetic Lcom/google/android/gms/internal/ads/zzgas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgob;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzgbc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgas;->zza:Lcom/google/android/gms/internal/ads/zzgbc;

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgas;->zza:Lcom/google/android/gms/internal/ads/zzgbc;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgbc;->zzc(Ljava/lang/Integer;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
