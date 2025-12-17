.class public final Lcom/google/android/gms/internal/ads/zzena;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeup;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzeup;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzfdc;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbyv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzepd;Lcom/google/android/gms/internal/ads/zzfdc;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzena;->zza:Lcom/google/android/gms/internal/ads/zzeup;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzena;->zzb:Lcom/google/android/gms/internal/ads/zzfdc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzena;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzena;->zzd:Lcom/google/android/gms/internal/ads/zzbyv;

    return-void
.end method

.method private final zzd(F)Landroidx/core/graphics/Insets;
    .locals 6

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 1
    sget-object p1, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    return-object p1

    .line 2
    :cond_0
    sget-object v0, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzena;->zzc:Landroid/content/Context;

    const-string v2, "window"

    .line 3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_2

    .line 4
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/view/WindowInsets;

    move-result-object v0

    .line 6
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$1()I

    move-result v1

    .line 7
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$7()I

    move-result v2

    or-int/2addr v1, v2

    .line 8
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$2()I

    move-result v2

    or-int/2addr v1, v2

    .line 9
    invoke-static {}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$3()I

    move-result v2

    or-int/2addr v1, v2

    .line 10
    invoke-static {v0, v1}, Landroidx/core/util/HalfKt$$ExternalSyntheticApiModelOutline0;->m$1(Landroid/view/WindowInsets;I)Landroid/graphics/Insets;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/core/graphics/Insets;->toCompatInsets(Landroid/graphics/Insets;)Landroidx/core/graphics/Insets;

    move-result-object v0

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzg()Lcom/google/android/gms/internal/ads/zzazd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzazd;->zzd()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 15
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->getRootWindowInsets(Landroid/view/View;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 16
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    .line 17
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    move-result v2

    or-int/2addr v0, v2

    .line 18
    invoke-virtual {v1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v0

    .line 19
    :cond_2
    :goto_0
    iget v1, v0, Landroidx/core/graphics/Insets;->left:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-double v1, v1

    .line 20
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroidx/core/graphics/Insets;->top:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-double v2, v2

    .line 21
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroidx/core/graphics/Insets;->right:I

    int-to-float v3, v3

    div-float/2addr v3, p1

    float-to-double v3, v3

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-double v4, v0

    .line 23
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int p1, v4

    .line 19
    invoke-static {v1, v2, v3, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzena;->zza:Lcom/google/android/gms/internal/ads/zzeup;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzeup;->zza()Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzemz;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzemz;-><init>(Lcom/google/android/gms/internal/ads/zzena;)V

    .line 2
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbzh;->zzg:Lcom/google/android/gms/internal/ads/zzgpd;

    .line 3
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzgot;->zzk(Lcom/google/common/util/concurrent/ListenableFuture;Lcom/google/android/gms/internal/ads/zzggr;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method final synthetic zzc(Lcom/google/android/gms/internal/ads/zzeuy;)Lcom/google/android/gms/internal/ads/zzenb;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzena;->zzb:Lcom/google/android/gms/internal/ads/zzfdc;

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzfdc;->zzf:Lcom/google/android/gms/ads/internal/client/zzr;

    iget-object v2, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzg:[Lcom/google/android/gms/ads/internal/client/zzr;

    if-nez v2, :cond_0

    .line 5
    iget-object v7, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    .line 6
    iget-boolean v8, v3, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    move-object v10, v7

    move v11, v8

    goto :goto_2

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 25
    :goto_0
    array-length v12, v2

    if-ge v7, v12, :cond_5

    .line 2
    aget-object v12, v2, v7

    .line 3
    iget-boolean v13, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-nez v13, :cond_1

    if-nez v8, :cond_1

    .line 4
    iget-object v10, v12, Lcom/google/android/gms/ads/internal/client/zzr;->zza:Ljava/lang/String;

    const/4 v8, 0x1

    :cond_1
    if-eqz v13, :cond_3

    if-nez v9, :cond_2

    const/4 v9, 0x1

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :cond_3
    :goto_1
    if-eqz v8, :cond_4

    if-nez v9, :cond_5

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 6
    :cond_5
    :goto_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzena;->zzc:Landroid/content/Context;

    .line 7
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    if-eqz v8, :cond_6

    .line 8
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzena;->zzd:Lcom/google/android/gms/internal/ads/zzbyv;

    .line 9
    iget v13, v8, Landroid/util/DisplayMetrics;->density:F

    .line 10
    iget v14, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 11
    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzbyv;->zzo()Lcom/google/android/gms/ads/internal/util/zzg;

    move-result-object v12

    invoke-interface {v12}, Lcom/google/android/gms/ads/internal/util/zzg;->zzu()Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    :cond_6
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    .line 13
    :goto_3
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbci;->zzoe:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 14
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v4

    .line 13
    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x23

    if-lt v4, v15, :cond_7

    .line 15
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzena;->zzd(F)Landroidx/core/graphics/Insets;

    move-result-object v4

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    :goto_4
    sget-object v15, Lcom/google/android/gms/internal/ads/zzbci;->zzof:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v5

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v5

    .line 17
    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x22

    if-gt v5, v15, :cond_9

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v15, 0x1c

    if-lt v5, v15, :cond_9

    const-string v5, "window"

    .line 18
    invoke-virtual {v7, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    if-eqz v5, :cond_9

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt v4, v7, :cond_8

    .line 19
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowManager;)Landroid/view/WindowMetrics;

    move-result-object v4

    .line 20
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 21
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/view/WindowMetrics;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    goto :goto_5

    .line 42
    :cond_8
    new-instance v4, Landroid/graphics/Point;

    .line 22
    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 23
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 24
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 25
    iget v4, v4, Landroid/graphics/Point;->y:I

    .line 26
    :goto_5
    invoke-direct {v0, v13}, Lcom/google/android/gms/internal/ads/zzena;->zzd(F)Landroidx/core/graphics/Insets;

    move-result-object v7

    move v14, v4

    move v8, v5

    move-object v15, v7

    goto :goto_6

    :cond_9
    move-object v15, v4

    move/from16 v17, v14

    move v14, v8

    move/from16 v8, v17

    :goto_6
    new-instance v4, Ljava/lang/StringBuilder;

    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v2, :cond_12

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_7
    array-length v6, v2

    const-string v9, "|"

    if-ge v5, v6, :cond_10

    .line 28
    aget-object v6, v2, v5

    .line 29
    iget-boolean v0, v6, Lcom/google/android/gms/ads/internal/client/zzr;->zzi:Z

    if-eqz v0, :cond_a

    const/4 v7, 0x1

    const/16 v16, 0x0

    goto :goto_a

    .line 30
    :cond_a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_b

    .line 31
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    :cond_b
    iget v0, v6, Lcom/google/android/gms/ads/internal/client/zzr;->zze:I

    const/4 v9, -0x1

    if-ne v0, v9, :cond_d

    const/16 v16, 0x0

    cmpl-float v0, v13, v16

    if-eqz v0, :cond_c

    .line 33
    iget v0, v6, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    int-to-float v0, v0

    div-float/2addr v0, v13

    float-to-int v0, v0

    goto :goto_8

    :cond_c
    move v0, v9

    .line 34
    :cond_d
    :goto_8
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    .line 35
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget v0, v6, Lcom/google/android/gms/ads/internal/client/zzr;->zzb:I

    const/4 v9, -0x2

    const/16 v16, 0x0

    if-ne v0, v9, :cond_f

    cmpl-float v0, v13, v16

    if-eqz v0, :cond_e

    .line 37
    iget v0, v6, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    int-to-float v0, v0

    div-float/2addr v0, v13

    float-to-int v0, v0

    goto :goto_9

    :cond_e
    move v0, v9

    .line 38
    :cond_f
    :goto_9
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto :goto_7

    :cond_10
    if-eqz v7, :cond_12

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    .line 40
    invoke-virtual {v4, v0, v9}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    :goto_b
    const-string v2, "320x50"

    .line 41
    invoke-virtual {v4, v0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzfdc;->zzr:Z

    new-instance v1, Lcom/google/android/gms/internal/ads/zzenb;

    move-object v2, v1

    move-object v4, v10

    move v5, v11

    move v7, v13

    move v9, v14

    move-object v10, v12

    move v11, v0

    move-object v12, v15

    .line 42
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/ads/zzenb;-><init>(Lcom/google/android/gms/ads/internal/client/zzr;Ljava/lang/String;ZLjava/lang/String;FIILjava/lang/String;ZLandroidx/core/graphics/Insets;)V

    return-object v1
.end method
