.class final Lcom/google/android/gms/internal/ads/zzcji;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzb:Lcom/google/android/gms/internal/ads/zzcvb;

.field private zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzac;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzb:Lcom/google/android/gms/internal/ads/zzcvb;

    const-class v1, Lcom/google/android/gms/internal/ads/zzcvb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    const-class v1, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcjj;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzcry;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzcry;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/zzctz;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzctz;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzdtb;-><init>()V

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzb:Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcji;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, v0

    .line 3
    invoke-direct/range {v2 .. v10}, Lcom/google/android/gms/internal/ads/zzcjj;-><init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;Lcom/google/android/gms/internal/ads/zzcry;Lcom/google/android/gms/internal/ads/zzctz;Lcom/google/android/gms/internal/ads/zzdtb;Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzezj;)V

    return-object v0
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzc:Lcom/google/android/gms/ads/nonagon/signalgeneration/zzay;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/ads/nonagon/signalgeneration/zzab;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcji;->zzb:Lcom/google/android/gms/internal/ads/zzcvb;

    return-object p0
.end method
