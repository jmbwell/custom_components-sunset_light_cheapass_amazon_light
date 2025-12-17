.class public final Lcom/google/android/gms/internal/ads/zzftd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfrw;


# instance fields
.field private final zza:Lkotlinx/coroutines/CoroutineScope;

.field private final zzb:Lkotlinx/coroutines/sync/Mutex;

.field private final zzc:Lkotlinx/coroutines/sync/Mutex;

.field private final zzd:Lkotlinx/coroutines/sync/Mutex;

.field private zze:Z

.field private zzf:Lcom/google/android/gms/internal/ads/zzfru;

.field private zzg:Z

.field private final zzh:Landroidx/datastore/core/DataStore;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdpw;


# direct methods
.method public constructor <init>(Landroidx/datastore/core/DataStore;Lcom/google/android/gms/internal/ads/zzftf;Lcom/google/android/gms/internal/ads/zzdpw;Lcom/google/android/gms/internal/ads/zzfsf;)V
    .locals 1

    const-string v0, "adQualityDataStore"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineScopeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataPinger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzi:Lcom/google/android/gms/internal/ads/zzdpw;

    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzftf;->zza()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x0

    const/4 p3, 0x1

    const/4 p4, 0x0

    .line 2
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 3
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzc:Lkotlinx/coroutines/sync/Mutex;

    .line 4
    invoke-static {p2, p3, p4}, Lkotlinx/coroutines/sync/MutexKt;->Mutex$default(ZILjava/lang/Object;)Lkotlinx/coroutines/sync/Mutex;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzh:Landroidx/datastore/core/DataStore;

    return-void
.end method

.method public static final synthetic zzo(Lcom/google/android/gms/internal/ads/zzftd;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzftd;->zzs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzp(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftd;->zzt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzq(Lcom/google/android/gms/internal/ads/zzftd;JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    const-wide/16 p1, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzftd;->zzu(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic zzr(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzftd;->zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final zzs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzfsi;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsi;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsi;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzfsi;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zze:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 5
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Ljava/lang/Object;

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zzb:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p2, p1

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Ljava/lang/Object;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zzb:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zze:I

    .line 2
    invoke-interface {p2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_4

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzh:Landroidx/datastore/core/DataStore;

    .line 3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfsj;

    invoke-direct {v4, p1, v5}, Lcom/google/android/gms/internal/ads/zzfsj;-><init>(Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zza:Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zzb:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsi;->zze:I

    invoke-interface {v2, v4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq p1, v1, :cond_4

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    :goto_2
    :try_start_2
    check-cast p2, Lcom/google/android/gms/internal/ads/zzfrz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v6, p2

    move-object p2, p1

    move-object p1, v6

    .line 4
    :goto_3
    invoke-interface {p1, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_4
    return-object v1
.end method

.method private final zzt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsl;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsl;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzb:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Ljava/lang/Object;

    .line 1
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object p1, v2

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:I

    .line 2
    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_4

    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzh:Landroidx/datastore/core/DataStore;

    .line 3
    new-instance v4, Lcom/google/android/gms/internal/ads/zzfsm;

    invoke-direct {v4, v5}, Lcom/google/android/gms/internal/ads/zzfsm;-><init>(Lkotlin/coroutines/Continuation;)V

    check-cast v4, Lkotlin/jvm/functions/Function2;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsl;->zzd:I

    invoke-interface {v2, v4, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v1, :cond_4

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    :try_start_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrz;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception v0

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    .line 4
    :goto_3
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-object v1
.end method

.method private final zzu(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lcom/google/android/gms/internal/ads/zzfsk;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsk;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsk;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/internal/ads/zzfsk;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p3, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zze:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 7
    iget-wide p1, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zza:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zzb:Ljava/lang/Object;

    .line 1
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p3}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    iput-object p3, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zzb:Ljava/lang/Object;

    iput-wide p1, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zza:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsk;->zze:I

    .line 2
    invoke-interface {p3, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_6

    move-object v0, p3

    :goto_1
    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "adQualityDataBuilder"

    if-nez p3, :cond_3

    .line 3
    :try_start_1
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p3, v4

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v2, :cond_4

    .line 4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_4
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzi()J

    move-result-wide v2

    sub-long/2addr p1, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v2, :cond_5

    .line 5
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v4

    :cond_5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzg()J

    move-result-wide v1

    sub-long/2addr p1, v1

    .line 3
    invoke-virtual {p3, p1, p2}, Lcom/google/android/gms/internal/ads/zzfru;->zzb(J)Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 7
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_6
    return-object v1
.end method

.method private final zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsp;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsp;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsp;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 8
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    .line 1
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zzb:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    .line 2
    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_6

    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_5

    const-string p1, "adQualityDataBuilder"

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v6

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrv;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 4
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zzb:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    .line 5
    invoke-interface {v2, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v1, :cond_6

    move-object v4, p1

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzh:Landroidx/datastore/core/DataStore;

    .line 6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzfsq;

    invoke-direct {v5, v4, v6}, Lcom/google/android/gms/internal/ads/zzfsq;-><init>(Lcom/google/android/gms/internal/ads/zzfrv;Lkotlin/coroutines/Continuation;)V

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zza:Ljava/lang/Object;

    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zzb:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsp;->zze:I

    invoke-interface {p1, v5, v0}, Landroidx/datastore/core/DataStore;->updateData(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eq p1, v1, :cond_6

    move-object v0, v2

    .line 1
    :goto_3
    :try_start_3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrz;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_1
    move-exception p1

    move-object v0, v2

    .line 7
    :goto_4
    invoke-interface {v0, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_2
    move-exception p1

    .line 4
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_6
    return-object v1
.end method

.method private static final zzw(Lcom/google/android/gms/internal/ads/zzfrv;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrv;->zzk()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrv;->zzl()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrv;->zzm()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrv;->zzd()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    if-eqz v0, :cond_2

    .line 3
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfrv;->zzi()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v5, 0x1388

    cmp-long p0, v7, v5

    if-lez p0, :cond_2

    move p0, v3

    goto :goto_2

    :cond_2
    move p0, v4

    :goto_2
    if-nez v1, :cond_4

    if-eqz p0, :cond_3

    goto :goto_3

    :cond_3
    return v4

    :cond_4
    :goto_3
    return v3
.end method


# virtual methods
.method public final zza()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfsy;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzb(Ljava/lang/String;)V
    .locals 8

    const-string v0, "gwsQueryId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfss;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzfss;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzc()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfso;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfso;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzd()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftc;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzftc;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zze()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsw;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfsw;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzf()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfta;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzg()V
    .locals 8

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfsu;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    move-object v5, v0

    check-cast v5, Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zza:Lkotlinx/coroutines/CoroutineScope;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final zzh(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsx;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsx;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsx;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzb:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto/16 :goto_6

    :cond_3
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzd:Lkotlinx/coroutines/sync/Mutex;

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Ljava/lang/Object;

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    .line 2
    invoke-interface {p1, v6, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_a

    move-object v2, p1

    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzh:Landroidx/datastore/core/DataStore;

    .line 3
    invoke-interface {p1}, Landroidx/datastore/core/DataStore;->getData()Lkotlinx/coroutines/flow/Flow;

    move-result-object p1

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    invoke-static {p1, v0}, Lkotlinx/coroutines/flow/FlowKt;->firstOrNull(Lkotlinx/coroutines/flow/Flow;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_a

    :goto_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrz;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    if-eqz p1, :cond_9

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrz;->zza()I

    move-result v2

    if-nez v2, :cond_5

    goto :goto_5

    .line 7
    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfrz;->zzb()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 8
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhih;->zzbp()Lcom/google/android/gms/internal/ads/zzhib;

    move-result-object v4

    const-string v7, "toBuilder(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfru;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    const-string v7, "<get-value>(...)"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzftd;->zzw(Lcom/google/android/gms/internal/ads/zzfrv;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzfru;->zzf(Z)Lcom/google/android/gms/internal/ads/zzfru;

    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzi:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 11
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v4

    const-string v7, "build(...)"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzdpw;->zza(Lcom/google/android/gms/internal/ads/zzfrv;)Z

    goto :goto_3

    :cond_7
    iput-object v6, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsx;->zzd:I

    .line 12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzt(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_7

    .line 13
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 6
    :cond_9
    :goto_5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 4
    :goto_6
    invoke-interface {v2, v6}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_a
    :goto_7
    return-object v1
.end method

.method public final zzi(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzfsr;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsr;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsr;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzfsr;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zze:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 8
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zzb:J

    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zza:Ljava/lang/Object;

    .line 1
    check-cast p1, Lkotlinx/coroutines/sync/Mutex;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zzf:Ljava/lang/String;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zzf:Ljava/lang/String;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zza:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zzb:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsr;->zze:I

    .line 3
    invoke-interface {p2, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_5

    move-object v0, p1

    move-object p1, p2

    move-wide v1, v5

    :goto_1
    :try_start_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    if-eqz p2, :cond_3

    .line 4
    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p2

    :cond_3
    :try_start_1
    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfrv;->zzp()Lcom/google/android/gms/internal/ads/zzfrv;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhih;->zzbp()Lcom/google/android/gms/internal/ads/zzhib;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzfru;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p2, :cond_4

    const-string p2, "adQualityDataBuilder"

    .line 7
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v4

    :cond_4
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfru;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfru;

    invoke-virtual {p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzj(J)Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 8
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p2

    .line 5
    invoke-interface {p1, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p2

    :cond_5
    return-object v1
.end method

.method public final zzj(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsn;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsn;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsn;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsn;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    .line 1
    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzc:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    .line 2
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzg:Z

    if-eqz p1, :cond_6

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    :try_start_1
    iput-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzg:Z

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zzb:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    .line 7
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    move-wide v5, v8

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_7

    const-string p1, "adQualityDataBuilder"

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_7
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzfru;->zzo(J)Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    .line 10
    invoke-direct {p0, v5, v6, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzu(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_9

    :goto_3
    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsn;->zze:I

    .line 11
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_8

    goto :goto_5

    .line 12
    :cond_8
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 9
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_9
    :goto_5
    return-object v1
.end method

.method public final zzk(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzftb;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzftb;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzftb;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzftb;->zze:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzftb;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzftb;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    .line 1
    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzftb;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzftb;->zze:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    .line 17
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzftb;->zzb:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzftb;->zza:Ljava/lang/Object;

    .line 1
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    .line 16
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzftb;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzc:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzftb;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzftb;->zze:I

    .line 2
    invoke-interface {v2, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_f

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzg:Z

    if-nez p1, :cond_4

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_4
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzg:Z

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzftb;->zza:Ljava/lang/Object;

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzftb;->zzb:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzftb;->zze:I

    .line 7
    invoke-interface {p1, v5, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_f

    move-object v0, p1

    move-wide v1, v6

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v3, "adQualityDataBuilder"

    if-nez p1, :cond_5

    .line 8
    :try_start_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzr()I

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v6, "last(...)"

    if-lez p1, :cond_9

    :try_start_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_6

    .line 9
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzq()Ljava/util/List;

    move-result-object p1

    const-string v7, "getAdClickTimestampsMsList(...)"

    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    sub-long v7, v1, v7

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_7

    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzt()Lcom/google/android/gms/internal/ads/zzfru;

    const-wide/16 v9, 0x1388

    cmp-long p1, v7, v9

    if-gez p1, :cond_9

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_8

    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzc()I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {p1, v7}, Lcom/google/android/gms/internal/ads/zzfru;->zzd(I)Lcom/google/android/gms/internal/ads/zzfru;

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_a

    .line 12
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzn()I

    move-result p1

    if-lez p1, :cond_d

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_b

    .line 13
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzm()Ljava/util/List;

    move-result-object p1

    const-string v4, "getAppBackgroundTimestampsMsList(...)"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    sub-long v6, v1, v6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_c

    .line 14
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfru;->zzg()J

    move-result-wide v8

    add-long/2addr v8, v6

    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/internal/ads/zzfru;->zzh(J)Lcom/google/android/gms/internal/ads/zzfru;

    :cond_d
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_e

    .line 15
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v5

    :cond_e
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzp(J)Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 16
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 17
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    invoke-interface {v0, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4
    invoke-interface {v2, v5}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_f
    return-object v1
.end method

.method public final zzl(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 13

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsv;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsv;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsv;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsv;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    .line 1
    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    .line 2
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_d

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    if-nez p1, :cond_6

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zzb:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    .line 7
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_d

    move-wide v5, v8

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v8, "adQualityDataBuilder"

    if-nez p1, :cond_7

    .line 8
    :try_start_3
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_7
    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v9, :cond_8

    .line 9
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v9, v7

    :cond_8
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzfru;->zzi()J

    move-result-wide v9

    sub-long v9, v5, v9

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v11, :cond_9

    .line 10
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v7

    :cond_9
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzfru;->zzg()J

    move-result-wide v11

    sub-long/2addr v9, v11

    .line 8
    invoke-virtual {p1, v9, v10}, Lcom/google/android/gms/internal/ads/zzfru;->zzb(J)Lcom/google/android/gms/internal/ads/zzfru;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_a

    .line 11
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_a
    invoke-virtual {p1, v5, v6}, Lcom/google/android/gms/internal/ads/zzfru;->zzl(J)Lcom/google/android/gms/internal/ads/zzfru;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_b

    .line 12
    invoke-static {v8}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_b
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 15
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    .line 16
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_d

    move-object v2, p1

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzi:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 17
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdpw;->zza(Lcom/google/android/gms/internal/ads/zzfrv;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 18
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfrv;->zza()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getGwsQueryId(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsv;->zze:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_c

    goto :goto_5

    .line 19
    :cond_c
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 14
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_d
    :goto_5
    return-object v1
.end method

.method public final zzm(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 14

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfsz;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfsz;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfsz;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    .line 1
    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_5

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_3
    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:J

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    .line 2
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_e

    :goto_1
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    if-nez p1, :cond_6

    .line 3
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    return-object p1

    :cond_6
    const/4 p1, 0x0

    :try_start_1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zze:Z

    .line 5
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    iput-wide v8, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:J

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    .line 7
    invoke-interface {v2, v7, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_e

    :goto_2
    :try_start_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, "adQualityDataBuilder"

    if-nez p1, :cond_7

    .line 8
    :try_start_3
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_7
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v10, :cond_8

    .line 9
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v10, v7

    :cond_8
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzfru;->zzi()J

    move-result-wide v10

    sub-long v10, v8, v10

    iget-object v12, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez v12, :cond_9

    .line 10
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v12, v7

    :cond_9
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzfru;->zzg()J

    move-result-wide v12

    sub-long/2addr v10, v12

    .line 8
    invoke-virtual {p1, v10, v11}, Lcom/google/android/gms/internal/ads/zzfru;->zzb(J)Lcom/google/android/gms/internal/ads/zzfru;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_a

    .line 11
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_a
    invoke-virtual {p1, v8, v9}, Lcom/google/android/gms/internal/ads/zzfru;->zzk(J)Lcom/google/android/gms/internal/ads/zzfru;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_b

    .line 12
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_b
    invoke-virtual {p1, v6}, Lcom/google/android/gms/internal/ads/zzfru;->zze(Z)Lcom/google/android/gms/internal/ads/zzfru;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_c

    .line 13
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v7

    :cond_c
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrv;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    .line 17
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzv(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v2

    if-eq v2, v1, :cond_e

    move-object v2, p1

    :goto_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzi:Lcom/google/android/gms/internal/ads/zzdpw;

    .line 18
    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzdpw;->zza(Lcom/google/android/gms/internal/ads/zzfrv;)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 19
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfrv;->zza()Ljava/lang/String;

    move-result-object p1

    const-string v2, "getGwsQueryId(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Ljava/lang/Object;

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfsz;->zze:I

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzftd;->zzs(Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_d

    goto :goto_5

    .line 20
    :cond_d
    :goto_4
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :catchall_1
    move-exception p1

    .line 4
    invoke-interface {v2, v7}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_e
    :goto_5
    return-object v1
.end method

.method public final zzn(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzfst;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfst;

    .line 1
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfst;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzfst;-><init>(Lcom/google/android/gms/internal/ads/zzftd;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zzc:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    .line 6
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:J

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Ljava/lang/Object;

    .line 1
    check-cast v0, Lkotlinx/coroutines/sync/Mutex;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 1
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzb:Lkotlinx/coroutines/sync/Mutex;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfst;->zzb:Ljava/lang/Object;

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzfst;->zza:J

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzfst;->zze:I

    .line 3
    invoke-interface {p1, v4, v0}, Lkotlinx/coroutines/sync/Mutex;->lock(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-eq v0, v1, :cond_4

    move-object v0, p1

    move-wide v1, v5

    :goto_1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzftd;->zzf:Lcom/google/android/gms/internal/ads/zzfru;

    if-nez p1, :cond_3

    const-string p1, "adQualityDataBuilder"

    .line 4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v4

    :cond_3
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzfru;->zzs(J)Lcom/google/android/gms/internal/ads/zzfru;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-interface {v0, v4}, Lkotlinx/coroutines/sync/Mutex;->unlock(Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-object v1
.end method
