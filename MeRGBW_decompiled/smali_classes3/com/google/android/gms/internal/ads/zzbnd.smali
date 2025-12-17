.class final synthetic Lcom/google/android/gms/internal/ads/zzbnd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbmj;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzbnp;

.field private final synthetic zzb:Ljava/util/ArrayList;

.field private final synthetic zzc:J

.field private final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbno;

.field private final synthetic zze:Lcom/google/android/gms/internal/ads/zzbmk;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbnp;Ljava/util/ArrayList;JLcom/google/android/gms/internal/ads/zzbno;Lcom/google/android/gms/internal/ads/zzbmk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zza:Lcom/google/android/gms/internal/ads/zzbnp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzb:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzc:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzd:Lcom/google/android/gms/internal/ads/zzbno;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zze:Lcom/google/android/gms/internal/ads/zzbmk;

    return-void
.end method


# virtual methods
.method public final synthetic zza()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v7, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzc:J

    sub-long/2addr v0, v7

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzb:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 3
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x34

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoadNewJavascriptEngine(onEngLoaded) latency is "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ms."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfro;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbne;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zza:Lcom/google/android/gms/internal/ads/zzbnp;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zzd:Lcom/google/android/gms/internal/ads/zzbno;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzbnd;->zze:Lcom/google/android/gms/internal/ads/zzbmk;

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzbne;-><init>(Lcom/google/android/gms/internal/ads/zzbnp;Lcom/google/android/gms/internal/ads/zzbno;Lcom/google/android/gms/internal/ads/zzbmk;Ljava/util/ArrayList;J)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbci;->zzc:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v2

    .line 7
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfro;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
