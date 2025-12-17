.class final Lcom/google/android/gms/internal/ads/zzfsq;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field synthetic zza:Ljava/lang/Object;

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzfrv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfrv;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zzb:Lcom/google/android/gms/internal/ads/zzfrv;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zzb:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-direct {v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzfsq;-><init>(Lcom/google/android/gms/internal/ads/zzfrv;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzfsq;->zza:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/Continuation;

    return-object v0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrz;

    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzfsq;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfsq;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfsq;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zza:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrz;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbp()Lcom/google/android/gms/internal/ads/zzhib;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfrx;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfsa;->zza(Lcom/google/android/gms/internal/ads/zzfrx;)Lcom/google/android/gms/internal/ads/zzfsb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsb;->zzb()Lcom/google/android/gms/internal/ads/zzhll;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsq;->zzb:Lcom/google/android/gms/internal/ads/zzfrv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfrv;->zza()Ljava/lang/String;

    move-result-object v2

    const-string v3, "getGwsQueryId(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfsb;->zzc(Lcom/google/android/gms/internal/ads/zzhll;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfrv;)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfsb;->zza()Lcom/google/android/gms/internal/ads/zzfrz;

    move-result-object p1

    return-object p1
.end method
