.class final Lcom/google/android/gms/internal/ads/zzbmu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjl;


# instance fields
.field final synthetic zza:J

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbno;

.field final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbmk;

.field final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbnp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbnp;JLcom/google/android/gms/internal/ads/zzbno;Lcom/google/android/gms/internal/ads/zzbmk;)V
    .locals 0

    .line 1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zza:J

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzb:Lcom/google/android/gms/internal/ads/zzbno;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzc:Lcom/google/android/gms/internal/ads/zzbmk;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzd:Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbnq;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzk()Lcom/google/android/gms/common/util/Clock;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zza:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x2a

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "onGmsg /jsLoaded. JsLoaded latency is "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " ms."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Trying to acquire lock"

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzd:Lcom/google/android/gms/internal/ads/zzbnp;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnp;->zzf()Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    const-string v0, "loadJavascriptEngine > /jsLoaded handler: Lock acquired"

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzb:Lcom/google/android/gms/internal/ads/zzbno;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzt;->zzi()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzt;->zzi()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbnp;->zzk(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbmu;->zzc:Lcom/google/android/gms/internal/ads/zzbmk;

    const-string v2, "/log"

    .line 11
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbmk;

    .line 12
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjk;->zzg:Lcom/google/android/gms/internal/ads/zzbjl;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbmk;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjl;)V

    const-string v2, "/result"

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbjk;->zzo:Lcom/google/android/gms/internal/ads/zzbkc;

    .line 13
    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbmk;->zzm(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjl;)V

    .line 14
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbzt;->zzf(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbnp;->zzi(Lcom/google/android/gms/internal/ads/zzbno;)V

    const-string p1, "Successfully loaded JS Engine."

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 17
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released"

    .line 18
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_1
    :goto_0
    :try_start_1
    const-string p1, "loadJavascriptEngine > /jsLoaded handler: Lock released, the promise is already settled"

    .line 8
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 9
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
