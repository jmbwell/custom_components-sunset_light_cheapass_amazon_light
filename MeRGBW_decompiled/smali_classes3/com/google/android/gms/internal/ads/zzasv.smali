.class public final Lcom/google/android/gms/internal/ads/zzasv;
.super Lcom/google/android/gms/internal/ads/zzhih;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhjt;


# static fields
.field private static final zzl:Lcom/google/android/gms/internal/ads/zzasv;

.field private static volatile zzm:Lcom/google/android/gms/internal/ads/zzhka;


# instance fields
.field private zza:I

.field private zzb:J

.field private zzc:I

.field private zzd:Z

.field private zze:Lcom/google/android/gms/internal/ads/zzhip;

.field private zzf:J

.field private zzg:Z

.field private zzh:Lcom/google/android/gms/internal/ads/zzhit;

.field private zzi:I

.field private zzj:I

.field private zzk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzasv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasv;->zzl:Lcom/google/android/gms/internal/ads/zzasv;

    const-class v1, Lcom/google/android/gms/internal/ads/zzasv;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhih;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhih;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasv;->zzbC()Lcom/google/android/gms/internal/ads/zzhip;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zze:Lcom/google/android/gms/internal/ads/zzhip;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasv;->zzbM()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzasv;->zzh:Lcom/google/android/gms/internal/ads/zzhit;

    return-void
.end method

.method static synthetic zza()Lcom/google/android/gms/internal/ads/zzasv;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzasv;->zzl:Lcom/google/android/gms/internal/ads/zzasv;

    return-object v0
.end method


# virtual methods
.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhig;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhig;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzasv;->zzm:Lcom/google/android/gms/internal/ads/zzhka;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzasv;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasv;->zzm:Lcom/google/android/gms/internal/ads/zzhka;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhic;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzasv;->zzl:Lcom/google/android/gms/internal/ads/zzasv;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhic;-><init>(Lcom/google/android/gms/internal/ads/zzhih;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzasv;->zzm:Lcom/google/android/gms/internal/ads/zzhka;

    .line 4
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 8
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasv;->zzl:Lcom/google/android/gms/internal/ads/zzasv;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasu;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzasu;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasv;

    .line 7
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzasv;-><init>()V

    return-object p1

    .line 2
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzggg;->zza()Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlx;->zza()Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlv;->zza()Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v5

    const/16 v6, 0xf

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "zza"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const-string v7, "zzb"

    aput-object v7, v6, p2

    const-string p2, "zzc"

    aput-object p2, v6, v3

    const-string p2, "zzd"

    aput-object p2, v6, v2

    const-string p2, "zze"

    aput-object p2, v6, v1

    const-string p2, "zzf"

    aput-object p2, v6, v0

    const-string p2, "zzg"

    aput-object p2, v6, p3

    const-string p2, "zzh"

    const/4 p3, 0x7

    aput-object p2, v6, p3

    const-class p2, Lcom/google/android/gms/internal/ads/zzasz;

    const/16 p3, 0x8

    aput-object p2, v6, p3

    const-string p2, "zzi"

    const/16 p3, 0x9

    aput-object p2, v6, p3

    const/16 p2, 0xa

    aput-object p1, v6, p2

    const-string p1, "zzj"

    const/16 p2, 0xb

    aput-object p1, v6, p2

    const/16 p1, 0xc

    aput-object v4, v6, p1

    const-string p1, "zzk"

    const/16 p2, 0xd

    aput-object p1, v6, p2

    const/16 p1, 0xe

    aput-object v5, v6, p1

    sget-object p1, Lcom/google/android/gms/internal/ads/zzasv;->zzl:Lcom/google/android/gms/internal/ads/zzasv;

    const-string p2, "\u0001\n\u0000\u0001\u0001\n\n\u0000\u0002\u0000\u0001\u1002\u0000\u0002\u1004\u0001\u0003\u1007\u0002\u0004\u0016\u0005\u1003\u0003\u0006\u1007\u0004\u0007\u001b\u0008\u180c\u0005\t\u180c\u0006\n\u180c\u0007"

    .line 5
    invoke-static {p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzasv;->zzbv(Lcom/google/android/gms/internal/ads/zzhjs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
