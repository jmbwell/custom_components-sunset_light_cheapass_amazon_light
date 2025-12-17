.class final Lcom/google/android/gms/internal/ads/zzfyx;
.super Lcom/google/android/gms/internal/ads/zzfzq;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Ljava/util/Map;

.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfvd;

.field private final zzd:J

.field private final zze:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/internal/ads/zzfym;Ljava/util/Map;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfvd;Lcom/google/android/gms/internal/ads/zzfui;Lcom/google/android/gms/internal/ads/zzgea;)V
    .locals 7

    const/16 v0, 0x71

    .line 1
    invoke-virtual {p7, v0}, Lcom/google/android/gms/internal/ads/zzgea;->zza(I)Lcom/google/android/gms/internal/ads/zzgdy;

    move-result-object v6

    const-string v2, "mLLgbGPnthnmbtiY4qwSRZlP76fxHEn5RINQ3z6Wy79B89SpuoxQV8DFaf5u5bey"

    const-string v3, "s6mOQtxGebk+yjD4WdDHHvKqxnbPaF0rtJwo8mM3ABY="

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfzq;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarw;Lcom/google/android/gms/internal/ads/zzfym;Lcom/google/android/gms/internal/ads/zzgdy;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Ljava/util/Map;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzc:Lcom/google/android/gms/internal/ads/zzfvd;

    .line 3
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzj()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzd:J

    .line 4
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzk()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zze:J

    return-void
.end method


# virtual methods
.method protected final zza(Ljava/lang/reflect/Method;Lcom/google/android/gms/internal/ads/zzarw;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzb:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzc:Lcom/google/android/gms/internal/ads/zzfvd;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfvd;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const-string v1, ""

    invoke-virtual {p1, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast p1, [Ljava/lang/Object;

    const-string v1, "E"

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Ljava/util/Map;

    const-string v5, "gs"

    .line 2
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v3, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v5, v6, :cond_0

    .line 3
    invoke-interface {v3}, Lcom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zzd:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-interface {v3, v5, v6, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzast;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzast;->zzb()Ljava/lang/String;

    move-result-object v5

    .line 5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v0, :cond_1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzast;->zzb()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const-string v3, "E"

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zza:Ljava/util/Map;

    const-string v5, "ai"

    .line 7
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/common/util/concurrent/ListenableFuture;

    if-eqz v3, :cond_2

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzfyx;->zze:J

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 8
    invoke-interface {v3, v5, v6, v7}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzghs;->zzc(Ljava/lang/String;)Z

    move-result v5
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v5, :cond_2

    move-object v1, v3

    :catch_1
    :cond_2
    const/4 v3, 0x5

    .line 10
    aget-object v3, p1, v3

    check-cast v3, Ljava/lang/Boolean;

    .line 11
    monitor-enter p2

    .line 12
    :try_start_2
    aget-object v5, p1, v4

    check-cast v5, Ljava/lang/Long;

    .line 13
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p2, v5, v6}, Lcom/google/android/gms/internal/ads/zzarw;->zzu(J)Lcom/google/android/gms/internal/ads/zzarw;

    aget-object v5, p1, v0

    check-cast v5, Ljava/lang/String;

    .line 14
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzarw;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarw;

    aget-object v5, p1, v2

    check-cast v5, Ljava/lang/String;

    .line 15
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzarw;->zzD(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarw;

    const/4 v5, 0x3

    aget-object v5, p1, v5

    check-cast v5, Ljava/lang/String;

    .line 16
    invoke-virtual {p2, v5}, Lcom/google/android/gms/internal/ads/zzarw;->zzE(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarw;

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgmk;->zzn()Lcom/google/android/gms/internal/ads/zzgmk;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgmk;->zzi()Lcom/google/android/gms/internal/ads/zzgmk;

    move-result-object v5

    const/4 v6, 0x4

    aget-object p1, p1, v6

    check-cast p1, [B

    .line 18
    array-length v6, p1

    invoke-virtual {v5, p1, v4, v6}, Lcom/google/android/gms/internal/ads/zzgmk;->zzj([BII)Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzarw;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarw;

    .line 20
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzarw;->zzo(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarw;

    if-eqz v3, :cond_4

    .line 21
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eq v0, p1, :cond_3

    move v2, v0

    .line 22
    :cond_3
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzarw;->zzai(I)Lcom/google/android/gms/internal/ads/zzarw;

    .line 23
    :cond_4
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
