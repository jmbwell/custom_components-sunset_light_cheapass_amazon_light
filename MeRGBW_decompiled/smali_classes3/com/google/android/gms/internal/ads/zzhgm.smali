.class public abstract Lcom/google/android/gms/internal/ads/zzhgm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzhhr;->zzb:I

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzhgo;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhhr;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    const/16 v0, 0x1000

    .line 1
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzF(Ljava/io/InputStream;I)Lcom/google/android/gms/internal/ads/zzhhg;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhgm;->zzb(Lcom/google/android/gms/internal/ads/zzhhg;Lcom/google/android/gms/internal/ads/zzhhr;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhjs;

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzb(I)V

    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhjs;->zzbi()Z

    move-result p1

    if-nez p1, :cond_2

    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhgk;

    if-nez p1, :cond_1

    .line 4
    instance-of p1, p2, Lcom/google/android/gms/internal/ads/zzhgl;

    if-eqz p1, :cond_0

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhgl;

    const/4 p1, 0x0

    .line 8
    throw p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhku;

    .line 9
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhku;-><init>(Lcom/google/android/gms/internal/ads/zzhjs;)V

    goto :goto_0

    .line 6
    :cond_1
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhgk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaU()Lcom/google/android/gms/internal/ads/zzhku;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhku;->zza()Lcom/google/android/gms/internal/ads/zzhiw;

    move-result-object p1

    .line 11
    throw p1

    :cond_2
    return-object p2
.end method
