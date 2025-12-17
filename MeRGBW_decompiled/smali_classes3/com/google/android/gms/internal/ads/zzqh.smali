.class public final Lcom/google/android/gms/internal/ads/zzqh;
.super Lcom/google/android/gms/internal/ads/zzcg;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private zzd:[I

.field private zze:[I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcg;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzd(Ljava/nio/ByteBuffer;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:[I

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    check-cast v0, [I

    .line 2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int v3, v2, v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Lcom/google/android/gms/internal/ads/zzcc;

    .line 4
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcc;->zze:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzc:Lcom/google/android/gms/internal/ads/zzcc;

    .line 5
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcc;->zze:I

    mul-int/2addr v3, v4

    .line 6
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzcg;->zzk(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    :goto_0
    if-ge v1, v2, :cond_e

    array-length v4, v0

    const/4 v5, 0x0

    move v6, v5

    :goto_1
    if-ge v6, v4, :cond_d

    .line 7
    aget v7, v0, v6

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Lcom/google/android/gms/internal/ads/zzcc;

    .line 8
    iget v8, v8, Lcom/google/android/gms/internal/ads/zzcc;->zzd:I

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzeo;->zzE(I)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Lcom/google/android/gms/internal/ads/zzcc;

    .line 9
    iget v7, v7, Lcom/google/android/gms/internal/ads/zzcc;->zzd:I

    const/4 v9, 0x2

    if-eq v7, v9, :cond_c

    const/4 v9, 0x3

    if-eq v7, v9, :cond_b

    const/4 v10, 0x4

    if-eq v7, v10, :cond_a

    const/16 v10, 0x15

    if-eq v7, v10, :cond_2

    const/16 v11, 0x16

    if-eq v7, v11, :cond_1

    const/high16 v11, 0x10000000

    if-eq v7, v11, :cond_c

    const/high16 v11, 0x50000000

    if-eq v7, v11, :cond_2

    const/high16 v9, 0x60000000

    if-ne v7, v9, :cond_0

    goto :goto_2

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr v0, v10

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unexpected encoding: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 19
    :cond_1
    :goto_2
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_9

    .line 10
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v7

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v10, :cond_3

    move v7, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v7, v8, 0x2

    :goto_3
    invoke-virtual {p1, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    add-int/lit8 v10, v8, 0x1

    .line 11
    invoke-virtual {p1, v10}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v10

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_4

    add-int/lit8 v8, v8, 0x2

    :cond_4
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v8

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v10, v10, 0x10

    shl-int/lit8 v8, v8, 0x8

    const/high16 v11, -0x1000000

    and-int/2addr v7, v11

    const/high16 v12, 0xff0000

    and-int/2addr v10, v12

    or-int/2addr v7, v10

    const v10, 0xff00

    and-int/2addr v8, v10

    or-int/2addr v7, v8

    shr-int/lit8 v8, v7, 0x8

    and-int v10, v8, v11

    const/4 v11, 0x1

    if-eqz v10, :cond_6

    const/high16 v10, -0x800000    # Float.NEGATIVE_INFINITY

    and-int v12, v8, v10

    if-ne v12, v10, :cond_5

    goto :goto_4

    :cond_5
    move v10, v5

    goto :goto_5

    :cond_6
    :goto_4
    move v10, v11

    .line 13
    :goto_5
    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "Value out of range of 24-bit integer: %s"

    .line 14
    invoke-static {v10, v13, v12}, Lcom/google/android/gms/internal/ads/zzghc;->zzf(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v10

    if-lt v10, v9, :cond_7

    goto :goto_6

    :cond_7
    move v11, v5

    :goto_6
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzghc;->zza(Z)V

    .line 16
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v9, v10, :cond_8

    shr-int/lit8 v9, v7, 0x18

    and-int/lit16 v9, v9, 0xff

    goto :goto_7

    :cond_8
    and-int/lit16 v9, v8, 0xff

    :goto_7
    int-to-byte v9, v9

    shr-int/lit8 v10, v7, 0x10

    and-int/lit16 v10, v10, 0xff

    .line 17
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v11

    sget-object v12, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v11, v12, :cond_9

    and-int/lit16 v7, v8, 0xff

    goto :goto_8

    :cond_9
    shr-int/lit8 v7, v7, 0x18

    and-int/lit16 v7, v7, 0xff

    :goto_8
    int-to-byte v7, v7

    int-to-byte v8, v10

    .line 18
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 20
    :cond_a
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 21
    :cond_b
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_9

    .line 22
    :cond_c
    invoke-virtual {p1, v8}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    :goto_9
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_d
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzb:Lcom/google/android/gms/internal/ads/zzcc;

    .line 23
    iget v4, v4, Lcom/google/android/gms/internal/ads/zzcc;->zze:I

    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 25
    :cond_e
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 26
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzcc;)Lcom/google/android/gms/internal/ads/zzcc;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzce;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:[I

    if-nez v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcc;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    return-object p1

    .line 2
    :cond_0
    iget v1, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzd:I

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzeo;->zzA(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 5
    iget v2, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzc:I

    array-length v3, v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    move v6, v5

    :goto_1
    array-length v7, v0

    if-ge v6, v7, :cond_4

    .line 6
    aget v7, v0, v6

    if-ge v7, v2, :cond_3

    if-eq v7, v6, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    or-int/2addr v3, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzce;

    .line 7
    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3b

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Channel map ("

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") trying to access non-existent input channel."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzce;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcc;)V

    throw v1

    :cond_4
    if-eqz v3, :cond_5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcc;

    .line 8
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzcc;->zzb:I

    invoke-direct {v0, p1, v7, v1}, Lcom/google/android/gms/internal/ads/zzcc;-><init>(III)V

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzcc;->zza:Lcom/google/android/gms/internal/ads/zzcc;

    :goto_3
    return-object v0

    .line 2
    :cond_6
    new-instance v0, Lcom/google/android/gms/internal/ads/zzce;

    const-string v1, "Unhandled input format:"

    .line 3
    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzce;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcc;)V

    .line 4
    throw v0
.end method

.method protected final zzo()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:[I

    return-void
.end method

.method protected final zzp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zze:[I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:[I

    return-void
.end method

.method public final zzq([I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqh;->zzd:[I

    return-void
.end method
