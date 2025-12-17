.class final Lcom/google/android/gms/internal/ads/zzaki;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzb:[I

.field private zzc:Z

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private zzi:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzef;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzef;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:[I

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcl;
    .locals 8

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zze()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zze()I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    mul-int/2addr v2, v3

    .line 2
    new-array v3, v2, [I

    move v4, v1

    :cond_1
    :goto_0
    if-ge v4, v2, :cond_5

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v6, v4, 0x1

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:[I

    aget v5, v7, v5

    .line 4
    aput v5, v3, v4

    :goto_1
    move v4, v6

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v5

    if-eqz v5, :cond_1

    and-int/lit8 v6, v5, 0x3f

    and-int/lit8 v7, v5, 0x40

    if-eqz v7, :cond_3

    shl-int/lit8 v6, v6, 0x8

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v7

    or-int/2addr v6, v7

    :cond_3
    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:[I

    aget v5, v5, v1

    goto :goto_2

    .line 8
    :cond_4
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:[I

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v7

    aget v5, v5, v7

    :goto_2
    add-int/2addr v6, v4

    .line 8
    invoke-static {v3, v4, v6, v5}, Ljava/util/Arrays;->fill([IIII)V

    goto :goto_1

    .line 7
    :cond_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-static {v3, v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzck;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzck;-><init>()V

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzck;->zzc(Landroid/graphics/Bitmap;)Lcom/google/android/gms/internal/ads/zzck;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 11
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzck;->zzi(F)Lcom/google/android/gms/internal/ads/zzck;

    .line 12
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzj(I)Lcom/google/android/gms/internal/ads/zzck;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:I

    int-to-float v0, v0

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    int-to-float v3, v3

    div-float/2addr v0, v3

    .line 13
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzf(FI)Lcom/google/android/gms/internal/ads/zzck;

    .line 14
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzck;->zzg(I)Lcom/google/android/gms/internal/ads/zzck;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 15
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzck;->zzm(F)Lcom/google/android/gms/internal/ads/zzck;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 16
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzck;->zzn(F)Lcom/google/android/gms/internal/ads/zzck;

    .line 17
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzck;->zzr()Lcom/google/android/gms/internal/ads/zzcl;

    move-result-object v0

    return-object v0

    :cond_6
    :goto_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzb()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzef;->zza(I)V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    return-void
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzef;I)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    rem-int/lit8 v1, p2, 0x5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    move-object/from16 v1, p1

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzaki;->zzb:[I

    const/4 v3, 0x0

    .line 2
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    div-int/lit8 v4, p2, 0x5

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v6

    .line 4
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v7

    .line 5
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v8

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v9

    .line 7
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v10

    int-to-double v11, v7

    add-int/lit8 v8, v8, -0x80

    add-int/lit8 v9, v9, -0x80

    shl-int/lit8 v7, v10, 0x18

    .line 8
    sget-object v10, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    int-to-double v13, v8

    const-wide v15, 0x3ff66e978d4fdf3bL    # 1.402

    mul-double/2addr v15, v13

    move/from16 p2, v4

    add-double v3, v11, v15

    double-to-int v3, v3

    const/16 v4, 0xff

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v8, 0x0

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    int-to-double v9, v9

    const-wide v15, 0x3fd60663c74fb54aL    # 0.34414

    mul-double/2addr v15, v9

    sub-double v15, v11, v15

    const-wide v17, 0x3fe6da3c21187e7cL    # 0.71414

    mul-double v13, v13, v17

    sub-double v13, v15, v13

    double-to-int v13, v13

    .line 10
    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v8, 0x0

    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    shl-int/lit8 v13, v13, 0x8

    const-wide v14, 0x3ffc5a1cac083127L    # 1.772

    mul-double/2addr v9, v14

    add-double/2addr v11, v9

    double-to-int v9, v11

    .line 11
    invoke-static {v9, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    or-int/2addr v3, v7

    or-int/2addr v3, v13

    or-int/2addr v3, v4

    aput v3, v2, v6

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, p2

    move v3, v8

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzaki;->zzc:Z

    return-void
.end method

.method final synthetic zzd(Lcom/google/android/gms/internal/ads/zzef;I)V
    .locals 3

    const/4 v0, 0x4

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    add-int/lit8 v2, p2, -0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    if-lt v2, v1, :cond_2

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzx()I

    move-result v1

    if-lt v1, v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzh:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzi:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzef;

    add-int/lit8 v1, v1, -0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zza(I)V

    add-int/lit8 v2, p2, -0xb

    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzef;->zze()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-lez v2, :cond_2

    sub-int/2addr v1, v0

    .line 7
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    add-int/2addr v0, v1

    .line 9
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method final synthetic zze(Lcom/google/android/gms/internal/ads/zzef;I)V
    .locals 1

    const/16 v0, 0x13

    if-ge p2, v0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzd:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zze:I

    const/16 p2, 0xb

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzf:I

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzaki;->zzg:I

    return-void
.end method
