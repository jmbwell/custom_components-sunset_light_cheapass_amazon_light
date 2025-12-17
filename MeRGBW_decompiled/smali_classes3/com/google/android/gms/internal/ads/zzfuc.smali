.class public final Lcom/google/android/gms/internal/ads/zzfuc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzfvx;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfwv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzgcx;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzgea;

.field private final zze:J

.field private final zzf:Lcom/google/android/gms/internal/ads/zzhpr;

.field private final zzg:J

.field private final zzh:J

.field private final zzi:Z

.field private final zzj:J


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzfvx;Lcom/google/android/gms/internal/ads/zzfwv;Lcom/google/android/gms/internal/ads/zzgcx;Lcom/google/android/gms/internal/ads/zzgea;Lcom/google/android/gms/internal/ads/zzhpr;Lcom/google/android/gms/internal/ads/zzfui;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfvx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfwv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Lcom/google/android/gms/internal/ads/zzgcx;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzh()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:J

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Lcom/google/android/gms/internal/ads/zzhpr;

    .line 2
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzg()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzh:J

    .line 4
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzq()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzi:Z

    .line 5
    invoke-virtual {p6}, Lcom/google/android/gms/internal/ads/zzfui;->zzp()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzj:J

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfvx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzi:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzh:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzj:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    const/4 v3, 0x3

    .line 2
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzgea;->zza(I)Lcom/google/android/gms/internal/ads/zzgdy;

    move-result-object v0

    .line 3
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zza()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfvx;

    .line 4
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzfvx;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    new-instance v5, Lcom/google/android/gms/internal/ads/zzftz;

    invoke-direct {v5, p0, p1}, Lcom/google/android/gms/internal/ads/zzftz;-><init>(Lcom/google/android/gms/internal/ads/zzfuc;Landroid/content/Context;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 5
    invoke-static {v4, v5, p1}, Lcom/google/android/gms/internal/ads/zzgot;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgob;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzg:J

    goto :goto_0

    .line 18
    :cond_1
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:J

    .line 5
    :goto_0
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    invoke-interface {p1, v4, v5, v6}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    .line 8
    throw p1

    :catch_0
    move-exception p1

    .line 9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const-string p1, ""

    goto :goto_1

    :catch_1
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object p1, v1

    .line 12
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    if-eqz v2, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzf:Lcom/google/android/gms/internal/ads/zzhpr;

    .line 15
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhpr;->zzb()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfzx;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzh:J

    .line 16
    invoke-virtual {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfzx;->zza(ZJ)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const/16 p1, 0x11

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 18
    :goto_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    .line 19
    throw p1
.end method

.method public final zzc(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzgea;->zza(I)Lcom/google/android/gms/internal/ads/zzgdy;

    move-result-object p2

    .line 2
    :try_start_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgdy;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfvx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfua;

    const/4 v4, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfua;-><init>(Lcom/google/android/gms/internal/ads/zzfuc;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-static {v0, v7, p1}, Lcom/google/android/gms/internal/ads/zzgot;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgob;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-wide p3, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface {p1, p3, p4, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    .line 7
    throw p1

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 9
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const-string p1, ""

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p3

    if-eqz p3, :cond_0

    move-object p1, p3

    .line 11
    :cond_0
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const/16 p1, 0x11

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    .line 16
    throw p1
.end method

.method public final zzd(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;
    .locals 8

    .line 1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzd:Lcom/google/android/gms/internal/ads/zzgea;

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Lcom/google/android/gms/internal/ads/zzgea;->zza(I)Lcom/google/android/gms/internal/ads/zzgdy;

    move-result-object p4

    .line 2
    :try_start_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgdy;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zza:Lcom/google/android/gms/internal/ads/zzfvx;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfvx;->zzb()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v7, Lcom/google/android/gms/internal/ads/zzfub;

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfub;-><init>(Lcom/google/android/gms/internal/ads/zzfuc;Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgpk;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    .line 4
    invoke-static {v0, v7, p1}, Lcom/google/android/gms/internal/ads/zzgot;->zzj(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzgob;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    iget-wide p2, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zze:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-interface {p1, p2, p3, v0}, Lcom/google/common/util/concurrent/ListenableFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    :try_start_1
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    .line 7
    throw p1

    :catch_0
    move-exception p1

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 9
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const-string p1, ""

    goto :goto_0

    :catch_1
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_0

    move-object p1, p2

    .line 11
    :cond_0
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const/4 p1, 0x3

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 13
    invoke-virtual {p4, p1}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/lang/Throwable;)V

    const/16 p1, 0x11

    .line 14
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 15
    :goto_0
    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    return-object p1

    :catchall_1
    move-exception p1

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzgdy;->zzc()V

    .line 16
    throw p1
.end method

.method public final zze(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzc:Lcom/google/android/gms/internal/ads/zzgcx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgcx;->zza(Ljava/util/List;)V

    return-void
.end method

.method public final zzf(Landroid/view/InputEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfwv;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwv;->zze(Landroid/view/InputEvent;)V

    return-void
.end method

.method final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfwv;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfwv;

    return-object v0
.end method

.method public final zzh()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfuc;->zzb:Lcom/google/android/gms/internal/ads/zzfwv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwv;->zzh()I

    move-result v0

    return v0
.end method
