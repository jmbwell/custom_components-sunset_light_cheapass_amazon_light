.class public final Lcom/google/android/gms/internal/ads/zzfnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfms;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzfnr;

.field private static final zzb:Landroid/os/Handler;

.field private static zzc:Landroid/os/Handler;

.field private static final zzk:Ljava/lang/Runnable;

.field private static final zzl:Ljava/lang/Runnable;


# instance fields
.field private final zzd:Ljava/util/List;

.field private zze:I

.field private final zzf:Ljava/util/List;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzfmu;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzfnk;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfnl;

.field private zzj:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zza:Lcom/google/android/gms/internal/ads/zzfnr;

    new-instance v0, Landroid/os/Handler;

    .line 2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzb:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzk:Ljava/lang/Runnable;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfno;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfno;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzl:Ljava/lang/Runnable;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzd:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzf:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnk;

    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfnk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfmu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfmu;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzg:Lcom/google/android/gms/internal/ads/zzfmu;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfnl;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfnu;

    .line 4
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfnu;-><init>()V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzfnl;-><init>(Lcom/google/android/gms/internal/ads/zzfnu;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzi:Lcom/google/android/gms/internal/ads/zzfnl;

    return-void
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzfnr;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zza:Lcom/google/android/gms/internal/ads/zzfnr;

    return-object v0
.end method

.method static synthetic zzg()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic zzi()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzk:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic zzj()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzl:Ljava/lang/Runnable;

    return-object v0
.end method

.method private final zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmt;Lorg/json/JSONObject;IZ)V
    .locals 7

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p0

    move v6, p5

    .line 1
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfmt;->zzb(Landroid/view/View;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzfms;ZZ)V

    return-void
.end method

.method private static final zzl()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnr;->zzl:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmt;Lorg/json/JSONObject;Z)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfni;->zza(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzl(Landroid/view/View;)I

    move-result v5

    const/4 v1, 0x3

    if-ne v5, v1, :cond_0

    goto/16 :goto_8

    .line 3
    :cond_0
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzfmt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v4

    .line 4
    invoke-static {p3, v4}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 5
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzg(Landroid/view/View;)Ljava/lang/String;

    move-result-object p3

    const/4 v7, 0x1

    if-eqz p3, :cond_2

    .line 17
    invoke-static {v4, p3}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    .line 18
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzj(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :try_start_0
    const-string p2, "hasWindowFocus"

    .line 19
    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    const-string p2, "Error with setting has window focus"

    .line 20
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfne;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 19
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    .line 21
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/ads/zzfnk;->zzk(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p1, :cond_1

    :try_start_1
    const-string p1, "isPipActive"

    .line 23
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 20
    const-string p2, "Error with setting is picture-in-picture active"

    .line 24
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzfne;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 23
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzf()V

    goto/16 :goto_7

    .line 6
    :cond_2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfnk;->zzi(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzfnj;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfnj;->zzb()Lcom/google/android/gms/internal/ads/zzfmk;

    move-result-object v1

    .line 7
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfnj;->zzc()Ljava/util/ArrayList;

    move-result-object p3

    .line 8
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    move v6, v0

    :goto_2
    if-ge v6, v3, :cond_3

    invoke-interface {p3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 9
    check-cast v8, Ljava/lang/String;

    .line 10
    invoke-virtual {v2, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    const-string p3, "isFriendlyObstructionFor"

    .line 11
    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionClass"

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmk;->zzb()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionPurpose"

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmk;->zzc()Lcom/google/android/gms/internal/ads/zzflq;

    move-result-object v2

    invoke-virtual {v4, p3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "friendlyObstructionReason"

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmk;->zzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, p3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p3

    .line 24
    const-string v1, "Error with setting friendly obstruction"

    .line 15
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/zzfne;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_3
    move p3, v7

    goto :goto_4

    :cond_4
    move p3, v0

    :goto_4
    if-nez p4, :cond_6

    if-eqz p3, :cond_5

    goto :goto_5

    :cond_5
    move v6, v0

    goto :goto_6

    :cond_6
    :goto_5
    move v6, v7

    :goto_6
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 16
    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzfnr;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmt;Lorg/json/JSONObject;IZ)V

    .line 25
    :goto_7
    iget p1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zze:I

    add-int/2addr p1, v7

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zze:I

    :cond_7
    :goto_8
    return-void
.end method

.method public final zzc()V
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnr;->zzk:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzc:Landroid/os/Handler;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzfnr;->zzl:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    .line 3
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzd:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfnr;->zzb:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfnm;

    .line 3
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzfnm;-><init>(Lcom/google/android/gms/internal/ads/zzfnr;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zze()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfnr;->zzl()V

    return-void
.end method

.method final synthetic zzf()V
    .locals 12

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zze:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmh;->zza()Lcom/google/android/gms/internal/ads/zzfmh;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmh;->zzf()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfln;

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zzd()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzg:Lcom/google/android/gms/internal/ads/zzfmu;

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmu;->zza()Lcom/google/android/gms/internal/ads/zzfmt;

    move-result-object v6

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zzb()Ljava/util/HashSet;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zzb()Ljava/util/HashSet;

    move-result-object v4

    .line 8
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 9
    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzfmt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v8

    .line 10
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfnk;->zzh(Ljava/lang/String;)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfmu;->zzb()Lcom/google/android/gms/internal/ads/zzfmt;

    move-result-object v10

    .line 11
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzfnk;->zzc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 12
    invoke-interface {v10, v9}, Lcom/google/android/gms/internal/ads/zzfmt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v9

    .line 13
    invoke-static {v9, v7}, Lcom/google/android/gms/internal/ads/zzfnd;->zzd(Lorg/json/JSONObject;Ljava/lang/String;)V

    :try_start_0
    const-string v10, "notVisibleReason"

    .line 14
    invoke-virtual {v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v10

    .line 26
    const-string v11, "Error with setting not visible reason"

    .line 15
    invoke-static {v11, v10}, Lcom/google/android/gms/internal/ads/zzfne;->zza(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 16
    :goto_2
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzfnd;->zze(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 17
    :cond_1
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lorg/json/JSONObject;)V

    new-instance v9, Ljava/util/HashSet;

    .line 18
    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 19
    invoke-virtual {v9, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzi:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 20
    invoke-virtual {v7, v8, v9, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zzb(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzh:Lcom/google/android/gms/internal/ads/zzfnk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zza()Ljava/util/HashSet;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 22
    invoke-interface {v6, v5}, Lcom/google/android/gms/internal/ads/zzfmt;->zza(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v5, 0x0

    move-object v4, p0

    move-object v7, v1

    .line 23
    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzfnr;->zzk(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzfmt;Lorg/json/JSONObject;IZ)V

    .line 24
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfnd;->zzf(Lorg/json/JSONObject;)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzi:Lcom/google/android/gms/internal/ads/zzfnl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zza()Ljava/util/HashSet;

    move-result-object v5

    .line 25
    invoke-virtual {v4, v1, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzfnl;->zza(Lorg/json/JSONObject;Ljava/util/HashSet;J)V

    goto :goto_3

    .line 34
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzi:Lcom/google/android/gms/internal/ads/zzfnl;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfnl;->zzc()V

    .line 27
    :goto_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfnk;->zze()V

    .line 28
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzj:J

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzd:Ljava/util/List;

    .line 29
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 30
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfnq;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    invoke-virtual {v4, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfnq;->zzb()V

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzfnp;

    if-eqz v4, :cond_4

    .line 32
    check-cast v3, Lcom/google/android/gms/internal/ads/zzfnp;

    .line 33
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfnp;->zza()V

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfmr;->zza()Lcom/google/android/gms/internal/ads/zzfmr;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfmr;->zzc()V

    return-void
.end method

.method final synthetic zzh()Lcom/google/android/gms/internal/ads/zzfnl;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfnr;->zzi:Lcom/google/android/gms/internal/ads/zzfnl;

    return-object v0
.end method
