.class public final Lcom/google/android/gms/ads/internal/client/zzbd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/ads/internal/client/zzbd;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbca;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbcb;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbcg;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbbr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzbd;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzbd;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbca;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbca;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbcb;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbcb;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbcg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbcg;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbbr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbbr;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb:Lcom/google/android/gms/internal/ads/zzbca;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc:Lcom/google/android/gms/internal/ads/zzbcb;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzbcg;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzbd;->zze:Lcom/google/android/gms/internal/ads/zzbbr;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbcb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc:Lcom/google/android/gms/internal/ads/zzbcb;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbca;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzb:Lcom/google/android/gms/internal/ads/zzbca;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbcg;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zzd:Lcom/google/android/gms/internal/ads/zzbcg;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbbr;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zza:Lcom/google/android/gms/ads/internal/client/zzbd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzbd;->zze:Lcom/google/android/gms/internal/ads/zzbbr;

    return-object v0
.end method
