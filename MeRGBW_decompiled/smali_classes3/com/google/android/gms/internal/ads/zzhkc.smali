.class final Lcom/google/android/gms/internal/ads/zzhkc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhkc;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhkl;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkc;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkc;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhjj;

    .line 2
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhjj;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:Lcom/google/android/gms/internal/ads/zzhkl;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhkc;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhkc;->zza:Lcom/google/android/gms/internal/ads/zzhkc;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;
    .locals 3

    .line 1
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhiu;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzc:Ljava/util/concurrent/ConcurrentMap;

    .line 2
    invoke-interface {v1, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhkk;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhkc;->zzb:Lcom/google/android/gms/internal/ads/zzhkl;

    .line 3
    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/zzhkl;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    .line 4
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhiu;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-interface {v1, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhkk;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v2
.end method
