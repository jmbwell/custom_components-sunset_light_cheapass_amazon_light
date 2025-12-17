.class public final Lcom/google/android/gms/internal/ads/zzqi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Landroid/content/Context;

.field private zzb:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzqi;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zza:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzc;)Lcom/google/android/gms/internal/ads/zzpg;
    .locals 7

    .line 30
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzu;->zzH:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zza:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzb:Ljava/lang/Boolean;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 2
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_2

    :cond_1
    if-eqz v1, :cond_3

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzca;->zza(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    const-string v2, "offloadVariableRateSupported"

    .line 4
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "offloadVariableRateSupported=1"

    .line 5
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    .line 6
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzb:Ljava/lang/Boolean;

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzb:Ljava/lang/Boolean;

    .line 6
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqi;->zzb:Ljava/lang/Boolean;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2
    :goto_2
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    iget-object v5, p1, Lcom/google/android/gms/internal/ads/zzu;->zzk:Ljava/lang/String;

    .line 9
    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/google/android/gms/internal/ads/zzar;->zzh(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_a

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 10
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzD(I)I

    move-result v6

    if-ge v5, v6, :cond_4

    goto :goto_4

    .line 11
    :cond_4
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzu;->zzG:I

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeo;->zzB(I)I

    move-result p1

    if-eqz p1, :cond_9

    .line 12
    :try_start_0
    invoke-static {v0, p1, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzC(III)Landroid/media/AudioFormat;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_7

    .line 14
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzc;->zza()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 15
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result p1

    if-nez p1, :cond_5

    .line 16
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    goto :goto_3

    :cond_5
    new-instance p2, Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzpf;-><init>()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-le v0, v2, :cond_6

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    move v4, v3

    .line 17
    :cond_6
    invoke-virtual {p2, v3}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Z)Lcom/google/android/gms/internal/ads/zzpf;

    .line 18
    invoke-virtual {p2, v4}, Lcom/google/android/gms/internal/ads/zzpf;->zzb(Z)Lcom/google/android/gms/internal/ads/zzpf;

    .line 19
    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpf;

    .line 20
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzpf;->zzd()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object p1

    goto :goto_3

    .line 21
    :cond_7
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzc;->zza()Landroid/media/AudioAttributes;

    move-result-object p2

    .line 22
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzed$$ExternalSyntheticApiModelOutline1;->m$1(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 23
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    goto :goto_3

    :cond_8
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpf;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzpf;-><init>()V

    .line 24
    invoke-virtual {p1, v3}, Lcom/google/android/gms/internal/ads/zzpf;->zza(Z)Lcom/google/android/gms/internal/ads/zzpf;

    .line 25
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzpf;->zzc(Z)Lcom/google/android/gms/internal/ads/zzpf;

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzpf;->zzd()Lcom/google/android/gms/internal/ads/zzpg;

    move-result-object p1

    :goto_3
    return-object p1

    .line 13
    :catch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    return-object p1

    .line 27
    :cond_9
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    return-object p1

    .line 11
    :cond_a
    :goto_4
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    return-object p1

    .line 1
    :cond_b
    :goto_5
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpg;->zza:Lcom/google/android/gms/internal/ads/zzpg;

    return-object p1
.end method
