.class public final Lcom/google/android/gms/internal/ads/zzadm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzef;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:Lcom/google/android/gms/internal/ads/zzef;

    return-void
.end method

.method private final zzb(Lcom/google/android/gms/internal/ads/zzacv;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :cond_0
    rem-int/lit8 v2, v1, 0xa

    const/16 v3, 0xa

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v5

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v4

    const/16 v6, 0x9

    invoke-static {v5, v3, v4, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    move v4, v0

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v3, v5

    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v7

    add-int/lit8 v2, v2, 0xa

    sub-int v8, v2, v3

    .line 2
    invoke-interface {p1, v7, v8, v3}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 4
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzf(I)V

    .line 5
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzef;->zzq()I

    move-result v2

    const v3, 0x494433

    if-ne v2, v3, :cond_4

    return v5

    .line 6
    :cond_4
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzef;->zzr()I

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadp;->zza(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    return v0

    :cond_5
    if-nez v1, :cond_6

    const/16 v2, 0x14

    .line 7
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzc(I)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    if-le v1, p2, :cond_0

    :catch_0
    return v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzagd;I)Lcom/google/android/gms/internal/ads/zzao;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    .line 1
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(Lcom/google/android/gms/internal/ads/zzacv;I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzadm;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v4

    const/4 v5, 0x6

    .line 2
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 3
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzG()I

    move-result v5

    add-int/lit8 v6, v5, 0xa

    if-nez v0, :cond_0

    new-array v0, v6, [B

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v3

    const/16 v7, 0xa

    .line 4
    invoke-static {v3, v4, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-interface {p1, v0, v7, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzi([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzafr;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzafr;-><init>()V

    .line 6
    invoke-static {v0, v6, p2, v3}, Lcom/google/android/gms/internal/ads/zzagg;->zza([BILcom/google/android/gms/internal/ads/zzagd;Lcom/google/android/gms/internal/ads/zzafr;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v0

    goto :goto_1

    .line 7
    :cond_0
    invoke-interface {p1, v5}, Lcom/google/android/gms/internal/ads/zzacv;->zzk(I)V

    :goto_1
    add-int/2addr v2, v6

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzl()V

    .line 9
    invoke-interface {p1, v2}, Lcom/google/android/gms/internal/ads/zzacv;->zzk(I)V

    return-object v0
.end method
