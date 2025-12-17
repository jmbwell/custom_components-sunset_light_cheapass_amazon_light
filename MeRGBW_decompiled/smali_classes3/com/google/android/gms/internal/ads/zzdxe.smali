.class final synthetic Lcom/google/android/gms/internal/ads/zzdxe;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgob;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzdxh;

.field private final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbuv;

.field private final synthetic zzc:I


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdxh;Lcom/google/android/gms/internal/ads/zzbuv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzb:Lcom/google/android/gms/internal/ads/zzbuv;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzc:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zza:Lcom/google/android/gms/internal/ads/zzdxh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzb:Lcom/google/android/gms/internal/ads/zzbuv;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzdxe;->zzc:I

    check-cast p1, Lcom/google/android/gms/internal/ads/zzdzk;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzdxh;->zzc(Lcom/google/android/gms/internal/ads/zzbuv;ILcom/google/android/gms/internal/ads/zzdzk;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method
