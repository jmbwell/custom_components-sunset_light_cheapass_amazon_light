.class final Lcom/google/android/gms/internal/ads/zzhjv;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhkk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzhkk<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final zza:[I

.field private static final zzb:Lsun/misc/Unsafe;


# instance fields
.field private final zzc:[I

.field private final zzd:[Ljava/lang/Object;

.field private final zze:I

.field private final zzf:I

.field private final zzg:Lcom/google/android/gms/internal/ads/zzhjs;

.field private final zzh:Z

.field private final zzi:Z

.field private final zzj:[I

.field private final zzk:I

.field private final zzl:I

.field private final zzm:Lcom/google/android/gms/internal/ads/zzhkv;

.field private final zzn:Lcom/google/android/gms/internal/ads/zzhhs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhjv;->zza:[I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhlc;->zzt()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    return-void
.end method

.method private constructor <init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzhjs;Z[IIILcom/google/android/gms/internal/ads/zzhjy;Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhkv;Lcom/google/android/gms/internal/ads/zzhhs;Lcom/google/android/gms/internal/ads/zzhjn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzd:[Ljava/lang/Object;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zze:I

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzf:I

    instance-of p1, p5, Lcom/google/android/gms/internal/ads/zzhih;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzi:Z

    const/4 p1, 0x0

    if-eqz p13, :cond_0

    instance-of p2, p5, Lcom/google/android/gms/internal/ads/zzhid;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    iput p8, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    iput p9, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzn:Lcom/google/android/gms/internal/ads/zzhhs;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzg:Lcom/google/android/gms/internal/ads/zzhjs;

    return-void
.end method

.method private final zzA(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    add-int/lit8 p1, p1, 0x1

    aget p1, v0, p1

    return p1
.end method

.method private final zzB(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    add-int/lit8 p1, p1, 0x2

    aget p1, v0, p1

    return p1
.end method

.method private static zzC(I)I
    .locals 0

    ushr-int/lit8 p0, p0, 0x14

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private static zzD(I)Z
    .locals 1

    const/high16 v0, 0x20000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static zzE(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1
    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhih;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhih;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzaX()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private static zzF(Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Mutating immutable message: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static zzG(Ljava/lang/Object;J)D
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method private static zzH(Ljava/lang/Object;J)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static zzI(Ljava/lang/Object;J)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private static zzJ(Ljava/lang/Object;J)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method

.method private static zzK(Ljava/lang/Object;J)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzM(Ljava/lang/Object;IIII)Z
    .locals 1

    const v0, 0xfffff

    if-ne p3, v0, :cond_0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result p1

    return p1

    :cond_0
    and-int p1, p4, p5

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final zzN(Ljava/lang/Object;I)Z
    .locals 7

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzB(I)I

    move-result v0

    const v1, 0xfffff

    and-int v2, v0, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xfffff

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_14

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result p2

    and-int v0, p2, v1

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result p2

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    packed-switch p2, :pswitch_data_0

    .line 16
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 25
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 3
    :pswitch_0
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return v6

    :cond_0
    return v5

    .line 4
    :pswitch_1
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_1

    return v6

    :cond_1
    return v5

    .line 5
    :pswitch_2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_2

    return v6

    :cond_2
    return v5

    .line 6
    :pswitch_3
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_3

    return v6

    :cond_3
    return v5

    .line 7
    :pswitch_4
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_4

    return v6

    :cond_4
    return v5

    .line 8
    :pswitch_5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_5

    return v6

    :cond_5
    return v5

    .line 9
    :pswitch_6
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_6

    return v6

    :cond_6
    return v5

    .line 10
    :pswitch_7
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhhb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v6

    :cond_7
    return v5

    .line 11
    :pswitch_8
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_8

    return v6

    :cond_8
    return v5

    .line 12
    :pswitch_9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 13
    instance-of p2, p1, Ljava/lang/String;

    if-eqz p2, :cond_a

    .line 14
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9

    return v6

    :cond_9
    return v5

    :cond_a
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz p2, :cond_c

    .line 15
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzhhb;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return v6

    :cond_b
    return v5

    .line 26
    :cond_c
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 17
    :pswitch_a
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result p1

    return p1

    .line 18
    :pswitch_b
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_d

    return v6

    :cond_d
    return v5

    .line 19
    :pswitch_c
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_e

    return v6

    :cond_e
    return v5

    .line 20
    :pswitch_d
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-eqz p1, :cond_f

    return v6

    :cond_f
    return v5

    .line 21
    :pswitch_e
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_10

    return v6

    :cond_10
    return v5

    .line 22
    :pswitch_f
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_11

    return v6

    :cond_11
    return v5

    .line 23
    :pswitch_10
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    if-eqz p1, :cond_12

    return v6

    :cond_12
    return v5

    .line 24
    :pswitch_11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    cmp-long p1, p1, v2

    if-eqz p1, :cond_13

    return v6

    :cond_13
    return v5

    :cond_14
    ushr-int/lit8 p2, v0, 0x14

    shl-int p2, v6, p2

    .line 26
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_15

    return v6

    :cond_15
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final zzO(Ljava/lang/Object;I)V
    .locals 4

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzB(I)I

    move-result p2

    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    const-wide/32 v2, 0xfffff

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    ushr-int/lit8 p2, p2, 0x14

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    const/4 v3, 0x1

    shl-int p2, v3, p2

    or-int/2addr p2, v2

    .line 3
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzP(Ljava/lang/Object;II)Z
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result p1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final zzQ(Ljava/lang/Object;II)V
    .locals 2

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzB(I)I

    move-result p3

    const v0, 0xfffff

    and-int/2addr p3, v0

    int-to-long v0, p3

    .line 2
    invoke-static {p1, v0, v1, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    return-void
.end method

.method private final zzR(I)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zze:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzf:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzS(II)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private final zzS(II)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    array-length v1, v0

    div-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    add-int/2addr v1, v2

    :goto_0
    if-gt p2, v1, :cond_2

    add-int v3, v1, p2

    ushr-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v3, 0x3

    aget v5, v0, v4

    if-ne p1, v5, :cond_0

    return v4

    :cond_0
    if-ge p1, v5, :cond_1

    add-int/lit8 v1, v3, -0x1

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static final zzT([BIILcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhgp;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhli;->zza:Lcom/google/android/gms/internal/ads/zzhli;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzhli;->ordinal()I

    move-result p3

    packed-switch p3, :pswitch_data_0

    .line 21
    :pswitch_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "unsupported field type."

    .line 22
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_1
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 4
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    .line 5
    :pswitch_2
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto/16 :goto_2

    .line 19
    :pswitch_3
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzg([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    goto/16 :goto_2

    .line 7
    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object p3

    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/ads/zzhkc;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object p3

    .line 8
    invoke-static {p3, p0, p1, p2, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzh(Lcom/google/android/gms/internal/ads/zzhkk;[BIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    goto/16 :goto_2

    .line 2
    :pswitch_5
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzf([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    goto/16 :goto_2

    .line 20
    :pswitch_6
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_7
    add-int/lit8 p2, p1, 0x4

    .line 16
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_8
    add-int/lit8 p2, p1, 0x8

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_1

    .line 11
    :pswitch_9
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    iget p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 12
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_2

    .line 9
    :pswitch_a
    invoke-static {p0, p1, p5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result p0

    iget-wide p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 10
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_2

    :pswitch_b
    add-int/lit8 p2, p1, 0x4

    .line 13
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 14
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_1

    :pswitch_c
    add-int/lit8 p2, p1, 0x8

    .line 17
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide p0

    .line 18
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    iput-object p0, p5, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    :goto_1
    move p0, p2

    :goto_2
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_9
        :pswitch_7
        :pswitch_8
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhlk;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Ljava/lang/String;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzm(ILjava/lang/String;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-interface {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzn(ILcom/google/android/gms/internal/ads/zzhhb;)V

    return-void
.end method

.method static zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkw;
    .locals 2

    .line 1
    check-cast p0, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkw;->zza()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkw;->zzb()Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    :cond_0
    return-object v0
.end method

.method static zzm(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhjp;Lcom/google/android/gms/internal/ads/zzhjy;Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhkv;Lcom/google/android/gms/internal/ads/zzhhs;Lcom/google/android/gms/internal/ads/zzhjn;)Lcom/google/android/gms/internal/ads/zzhjv;
    .locals 34

    move-object/from16 v0, p1

    .line 1
    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzhke;

    if-eqz v1, :cond_37

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhke;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhke;->zzd()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const v5, 0xd800

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    :goto_0
    add-int/lit8 v7, v4, 0x1

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_1

    move v4, v7

    goto :goto_0

    :cond_0
    const/4 v7, 0x1

    :cond_1
    add-int/lit8 v4, v7, 0x1

    .line 6
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_3

    and-int/lit16 v7, v7, 0x1fff

    const/16 v9, 0xd

    :goto_1
    add-int/lit8 v10, v4, 0x1

    .line 7
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_2

    and-int/lit16 v4, v4, 0x1fff

    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    add-int/lit8 v9, v9, 0xd

    move v4, v10

    goto :goto_1

    :cond_2
    shl-int/2addr v4, v9

    or-int/2addr v7, v4

    move v4, v10

    :cond_3
    if-nez v7, :cond_4

    sget-object v7, Lcom/google/android/gms/internal/ads/zzhjv;->zza:[I

    move v9, v3

    move v11, v9

    move v12, v11

    move v13, v12

    move v14, v13

    move/from16 v17, v14

    move-object/from16 v16, v7

    move/from16 v7, v17

    goto/16 :goto_a

    :cond_4
    add-int/lit8 v7, v4, 0x1

    .line 8
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_6

    and-int/lit16 v4, v4, 0x1fff

    const/16 v9, 0xd

    :goto_2
    add-int/lit8 v10, v7, 0x1

    .line 9
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_5

    and-int/lit16 v7, v7, 0x1fff

    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    add-int/lit8 v9, v9, 0xd

    move v7, v10

    goto :goto_2

    :cond_5
    shl-int/2addr v7, v9

    or-int/2addr v4, v7

    move v7, v10

    :cond_6
    add-int/lit8 v9, v7, 0x1

    .line 10
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-lt v7, v5, :cond_8

    and-int/lit16 v7, v7, 0x1fff

    const/16 v10, 0xd

    :goto_3
    add-int/lit8 v11, v9, 0x1

    .line 11
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_7

    and-int/lit16 v9, v9, 0x1fff

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    add-int/lit8 v10, v10, 0xd

    move v9, v11

    goto :goto_3

    :cond_7
    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    move v9, v11

    :cond_8
    add-int/lit8 v10, v9, 0x1

    .line 12
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v5, :cond_a

    and-int/lit16 v9, v9, 0x1fff

    const/16 v11, 0xd

    :goto_4
    add-int/lit8 v12, v10, 0x1

    .line 13
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_9

    and-int/lit16 v10, v10, 0x1fff

    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    add-int/lit8 v11, v11, 0xd

    move v10, v12

    goto :goto_4

    :cond_9
    shl-int/2addr v10, v11

    or-int/2addr v9, v10

    move v10, v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    .line 14
    invoke-virtual {v1, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v5, :cond_c

    and-int/lit16 v10, v10, 0x1fff

    const/16 v12, 0xd

    :goto_5
    add-int/lit8 v13, v11, 0x1

    .line 15
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_b

    and-int/lit16 v11, v11, 0x1fff

    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    add-int/lit8 v12, v12, 0xd

    move v11, v13

    goto :goto_5

    :cond_b
    shl-int/2addr v11, v12

    or-int/2addr v10, v11

    move v11, v13

    :cond_c
    add-int/lit8 v12, v11, 0x1

    .line 16
    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-lt v11, v5, :cond_e

    and-int/lit16 v11, v11, 0x1fff

    const/16 v13, 0xd

    :goto_6
    add-int/lit8 v14, v12, 0x1

    .line 17
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_d

    and-int/lit16 v12, v12, 0x1fff

    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    add-int/lit8 v13, v13, 0xd

    move v12, v14

    goto :goto_6

    :cond_d
    shl-int/2addr v12, v13

    or-int/2addr v11, v12

    move v12, v14

    :cond_e
    add-int/lit8 v13, v12, 0x1

    .line 18
    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-lt v12, v5, :cond_10

    and-int/lit16 v12, v12, 0x1fff

    const/16 v14, 0xd

    :goto_7
    add-int/lit8 v15, v13, 0x1

    .line 19
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_f

    and-int/lit16 v13, v13, 0x1fff

    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    add-int/lit8 v14, v14, 0xd

    move v13, v15

    goto :goto_7

    :cond_f
    shl-int/2addr v13, v14

    or-int/2addr v12, v13

    move v13, v15

    :cond_10
    add-int/lit8 v14, v13, 0x1

    .line 20
    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    if-lt v13, v5, :cond_12

    and-int/lit16 v13, v13, 0x1fff

    const/16 v15, 0xd

    :goto_8
    add-int/lit8 v16, v14, 0x1

    .line 21
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_11

    and-int/lit16 v14, v14, 0x1fff

    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    add-int/lit8 v15, v15, 0xd

    move/from16 v14, v16

    goto :goto_8

    :cond_11
    shl-int/2addr v14, v15

    or-int/2addr v13, v14

    move/from16 v14, v16

    :cond_12
    add-int/lit8 v15, v14, 0x1

    .line 22
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-lt v14, v5, :cond_14

    and-int/lit16 v14, v14, 0x1fff

    const/16 v16, 0xd

    :goto_9
    add-int/lit8 v17, v15, 0x1

    .line 23
    invoke-virtual {v1, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    if-lt v15, v5, :cond_13

    and-int/lit16 v15, v15, 0x1fff

    shl-int v15, v15, v16

    or-int/2addr v14, v15

    add-int/lit8 v16, v16, 0xd

    move/from16 v15, v17

    goto :goto_9

    :cond_13
    shl-int v15, v15, v16

    or-int/2addr v14, v15

    move/from16 v15, v17

    :cond_14
    add-int v16, v14, v12

    add-int v13, v16, v13

    add-int v16, v4, v4

    add-int v16, v16, v7

    .line 24
    new-array v7, v13, [I

    move v13, v9

    move/from16 v17, v14

    move/from16 v9, v16

    move-object/from16 v16, v7

    move v14, v10

    move v7, v4

    move v4, v15

    .line 7
    :goto_a
    sget-object v10, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    .line 25
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhke;->zze()[Ljava/lang/Object;

    move-result-object v15

    .line 26
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhke;->zzb()Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    add-int v18, v17, v12

    add-int v12, v11, v11

    mul-int/lit8 v11, v11, 0x3

    .line 27
    new-array v11, v11, [I

    .line 28
    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v21, v17

    move/from16 v22, v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    :goto_b
    if-ge v4, v2, :cond_36

    add-int/lit8 v23, v4, 0x1

    .line 29
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v5, :cond_16

    and-int/lit16 v4, v4, 0x1fff

    move/from16 v8, v23

    const/16 v23, 0xd

    :goto_c
    add-int/lit8 v24, v8, 0x1

    .line 30
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_15

    and-int/lit16 v8, v8, 0x1fff

    shl-int v8, v8, v23

    or-int/2addr v4, v8

    add-int/lit8 v23, v23, 0xd

    move/from16 v8, v24

    goto :goto_c

    :cond_15
    shl-int v8, v8, v23

    or-int/2addr v4, v8

    move/from16 v8, v24

    goto :goto_d

    :cond_16
    move/from16 v8, v23

    :goto_d
    add-int/lit8 v23, v8, 0x1

    .line 31
    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-lt v8, v5, :cond_18

    and-int/lit16 v8, v8, 0x1fff

    move/from16 v6, v23

    const/16 v23, 0xd

    :goto_e
    add-int/lit8 v25, v6, 0x1

    .line 32
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-lt v6, v5, :cond_17

    and-int/lit16 v6, v6, 0x1fff

    shl-int v6, v6, v23

    or-int/2addr v8, v6

    add-int/lit8 v23, v23, 0xd

    move/from16 v6, v25

    goto :goto_e

    :cond_17
    shl-int v6, v6, v23

    or-int/2addr v8, v6

    move/from16 v6, v25

    goto :goto_f

    :cond_18
    move/from16 v6, v23

    :goto_f
    and-int/lit16 v5, v8, 0x400

    if-eqz v5, :cond_19

    add-int/lit8 v5, v19, 0x1

    .line 33
    aput v20, v16, v19

    move/from16 v19, v5

    :cond_19
    and-int/lit16 v5, v8, 0xff

    move/from16 v25, v2

    and-int/lit16 v2, v8, 0x800

    move/from16 v26, v14

    const/16 v14, 0x33

    if-lt v5, v14, :cond_23

    add-int/lit8 v14, v6, 0x1

    .line 34
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move/from16 v27, v14

    const v14, 0xd800

    if-lt v6, v14, :cond_1b

    and-int/lit16 v6, v6, 0x1fff

    move/from16 v14, v27

    const/16 v27, 0xd

    :goto_10
    add-int/lit8 v31, v14, 0x1

    .line 35
    invoke-virtual {v1, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v32, v13

    const v13, 0xd800

    if-lt v14, v13, :cond_1a

    and-int/lit16 v13, v14, 0x1fff

    shl-int v13, v13, v27

    or-int/2addr v6, v13

    add-int/lit8 v27, v27, 0xd

    move/from16 v14, v31

    move/from16 v13, v32

    goto :goto_10

    :cond_1a
    shl-int v13, v14, v27

    or-int/2addr v6, v13

    move/from16 v14, v31

    goto :goto_11

    :cond_1b
    move/from16 v32, v13

    move/from16 v14, v27

    :goto_11
    add-int/lit8 v13, v5, -0x33

    move/from16 v27, v14

    const/16 v14, 0x9

    if-eq v13, v14, :cond_1f

    const/16 v14, 0x11

    if-ne v13, v14, :cond_1c

    goto :goto_13

    :cond_1c
    const/16 v14, 0xc

    if-ne v13, v14, :cond_20

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhke;->zzc()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_1e

    if-eqz v2, :cond_1d

    goto :goto_12

    :cond_1d
    const/4 v2, 0x0

    goto :goto_15

    :cond_1e
    :goto_12
    add-int/lit8 v13, v9, 0x1

    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v24, v24, 0x1

    .line 38
    aget-object v9, v15, v9

    aput-object v9, v12, v24

    goto :goto_14

    :cond_1f
    :goto_13
    const/4 v14, 0x1

    add-int/lit8 v13, v9, 0x1

    .line 35
    div-int/lit8 v24, v20, 0x3

    add-int v24, v24, v24

    add-int/lit8 v28, v24, 0x1

    .line 36
    aget-object v9, v15, v9

    aput-object v9, v12, v28

    :goto_14
    move v9, v13

    :cond_20
    :goto_15
    add-int/2addr v6, v6

    .line 39
    aget-object v13, v15, v6

    .line 40
    instance-of v14, v13, Ljava/lang/reflect/Field;

    if-eqz v14, :cond_21

    .line 41
    check-cast v13, Ljava/lang/reflect/Field;

    goto :goto_16

    .line 42
    :cond_21
    check-cast v13, Ljava/lang/String;

    invoke-static {v3, v13}, Lcom/google/android/gms/internal/ads/zzhjv;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 43
    aput-object v13, v15, v6

    .line 44
    :goto_16
    invoke-virtual {v10, v13}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v13, v13

    add-int/lit8 v6, v6, 0x1

    .line 45
    aget-object v14, v15, v6

    move/from16 v28, v2

    .line 46
    instance-of v2, v14, Ljava/lang/reflect/Field;

    if-eqz v2, :cond_22

    .line 47
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_17

    .line 48
    :cond_22
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzhjv;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 49
    aput-object v14, v15, v6

    :goto_17
    move v2, v13

    .line 50
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v13

    long-to-int v6, v13

    move v13, v9

    move/from16 v29, v27

    move/from16 v27, v4

    move v9, v6

    const/4 v6, 0x0

    move-object v4, v1

    move/from16 v33, v28

    move-object/from16 v28, v0

    move v0, v2

    move/from16 v2, v33

    goto/16 :goto_22

    :cond_23
    move/from16 v32, v13

    add-int/lit8 v13, v9, 0x1

    .line 51
    aget-object v14, v15, v9

    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzhjv;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move/from16 v27, v4

    const/16 v4, 0x9

    if-eq v5, v4, :cond_2d

    const/16 v4, 0x11

    if-ne v5, v4, :cond_24

    goto/16 :goto_1c

    :cond_24
    const/16 v4, 0x1b

    if-eq v5, v4, :cond_2c

    const/16 v4, 0x31

    if-ne v5, v4, :cond_25

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1a

    :cond_25
    const/16 v4, 0xc

    if-eq v5, v4, :cond_29

    const/16 v4, 0x1e

    if-eq v5, v4, :cond_29

    const/16 v4, 0x2c

    if-ne v5, v4, :cond_26

    goto :goto_18

    :cond_26
    const/16 v4, 0x32

    if-ne v5, v4, :cond_28

    add-int/lit8 v4, v9, 0x2

    add-int/lit8 v28, v21, 0x1

    .line 56
    aput v20, v16, v21

    div-int/lit8 v21, v20, 0x3

    .line 57
    aget-object v13, v15, v13

    add-int v21, v21, v21

    aput-object v13, v12, v21

    if-eqz v2, :cond_27

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v13, v9, 0x3

    .line 58
    aget-object v4, v15, v4

    aput-object v4, v12, v21

    move-object v4, v1

    move/from16 v21, v28

    move-object/from16 v28, v0

    goto :goto_1e

    :cond_27
    move v13, v4

    move/from16 v21, v28

    const/4 v2, 0x0

    move-object/from16 v28, v0

    goto :goto_1d

    :cond_28
    move-object/from16 v28, v0

    const/4 v0, 0x1

    goto :goto_1d

    .line 54
    :cond_29
    :goto_18
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhke;->zzc()I

    move-result v4

    move-object/from16 v28, v0

    const/4 v0, 0x1

    if-eq v4, v0, :cond_2b

    if-eqz v2, :cond_2a

    goto :goto_19

    :cond_2a
    move-object v4, v1

    const/4 v2, 0x0

    goto :goto_1e

    :cond_2b
    :goto_19
    add-int/lit8 v9, v9, 0x2

    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 55
    aget-object v13, v15, v13

    aput-object v13, v12, v4

    goto :goto_1b

    :cond_2c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    add-int/lit8 v9, v9, 0x2

    .line 66
    :goto_1a
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 53
    aget-object v13, v15, v13

    aput-object v13, v12, v4

    :goto_1b
    move-object v4, v1

    move v13, v9

    goto :goto_1e

    :cond_2d
    :goto_1c
    move-object/from16 v28, v0

    const/4 v0, 0x1

    .line 51
    div-int/lit8 v4, v20, 0x3

    add-int/2addr v4, v4

    add-int/2addr v4, v0

    .line 52
    invoke-virtual {v14}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    aput-object v9, v12, v4

    :goto_1d
    move-object v4, v1

    .line 59
    :goto_1e
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    long-to-int v0, v0

    and-int/lit16 v1, v8, 0x1000

    const v9, 0xfffff

    if-eqz v1, :cond_31

    const/16 v1, 0x11

    if-gt v5, v1, :cond_31

    add-int/lit8 v1, v6, 0x1

    .line 60
    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const v14, 0xd800

    if-lt v6, v14, :cond_2f

    and-int/lit16 v6, v6, 0x1fff

    const/16 v9, 0xd

    :goto_1f
    add-int/lit8 v23, v1, 0x1

    .line 61
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v14, :cond_2e

    and-int/lit16 v1, v1, 0x1fff

    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    add-int/lit8 v9, v9, 0xd

    move/from16 v1, v23

    goto :goto_1f

    :cond_2e
    shl-int/2addr v1, v9

    or-int/2addr v6, v1

    move/from16 v1, v23

    :cond_2f
    add-int v9, v7, v7

    div-int/lit8 v23, v6, 0x20

    add-int v9, v9, v23

    .line 62
    aget-object v14, v15, v9

    move/from16 v29, v1

    .line 63
    instance-of v1, v14, Ljava/lang/reflect/Field;

    if-eqz v1, :cond_30

    .line 64
    check-cast v14, Ljava/lang/reflect/Field;

    goto :goto_20

    .line 65
    :cond_30
    check-cast v14, Ljava/lang/String;

    invoke-static {v3, v14}, Lcom/google/android/gms/internal/ads/zzhjv;->zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    .line 66
    aput-object v14, v15, v9

    :goto_20
    move/from16 v30, v2

    .line 67
    invoke-virtual {v10, v14}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    long-to-int v1, v1

    rem-int/lit8 v6, v6, 0x20

    move v9, v1

    goto :goto_21

    :cond_31
    move/from16 v30, v2

    move/from16 v29, v6

    const/4 v6, 0x0

    :goto_21
    const/16 v1, 0x12

    if-lt v5, v1, :cond_32

    const/16 v1, 0x31

    if-gt v5, v1, :cond_32

    add-int/lit8 v1, v22, 0x1

    .line 68
    aput v0, v16, v22

    move/from16 v22, v1

    :cond_32
    move/from16 v2, v30

    :goto_22
    add-int/lit8 v1, v20, 0x1

    .line 69
    aput v27, v11, v20

    add-int/lit8 v14, v20, 0x2

    move-object/from16 v27, v3

    and-int/lit16 v3, v8, 0x200

    if-eqz v3, :cond_33

    const/high16 v3, 0x20000000

    goto :goto_23

    :cond_33
    const/4 v3, 0x0

    :goto_23
    and-int/lit16 v8, v8, 0x100

    if-eqz v8, :cond_34

    const/high16 v8, 0x10000000

    goto :goto_24

    :cond_34
    const/4 v8, 0x0

    :goto_24
    if-eqz v2, :cond_35

    const/high16 v2, -0x80000000

    goto :goto_25

    :cond_35
    const/4 v2, 0x0

    :goto_25
    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v3, v8

    or-int/2addr v2, v3

    or-int/2addr v2, v5

    or-int/2addr v0, v2

    .line 70
    aput v0, v11, v1

    add-int/lit8 v20, v20, 0x3

    shl-int/lit8 v0, v6, 0x14

    or-int/2addr v0, v9

    .line 71
    aput v0, v11, v14

    move-object v1, v4

    move v9, v13

    move/from16 v2, v25

    move/from16 v14, v26

    move-object/from16 v3, v27

    move-object/from16 v0, v28

    move/from16 v4, v29

    move/from16 v13, v32

    const v5, 0xd800

    goto/16 :goto_b

    :cond_36
    move-object/from16 v28, v0

    move/from16 v32, v13

    move/from16 v26, v14

    .line 58
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhjv;

    .line 72
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/gms/internal/ads/zzhke;->zzb()Lcom/google/android/gms/internal/ads/zzhjs;

    move-result-object v14

    const/4 v15, 0x0

    move-object v9, v0

    move-object v10, v11

    move-object v11, v12

    move/from16 v12, v32

    move/from16 v13, v26

    move-object/from16 v19, p2

    move-object/from16 v20, p3

    move-object/from16 v21, p4

    move-object/from16 v22, p5

    move-object/from16 v23, p6

    invoke-direct/range {v9 .. v23}, Lcom/google/android/gms/internal/ads/zzhjv;-><init>([I[Ljava/lang/Object;IILcom/google/android/gms/internal/ads/zzhjs;Z[IIILcom/google/android/gms/internal/ads/zzhjy;Lcom/google/android/gms/internal/ads/zzhje;Lcom/google/android/gms/internal/ads/zzhkv;Lcom/google/android/gms/internal/ads/zzhhs;Lcom/google/android/gms/internal/ads/zzhjn;)V

    return-object v0

    .line 73
    :cond_37
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhks;

    const/4 v0, 0x0

    .line 74
    throw v0
.end method

.method private static zzn(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 6

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 3
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 4
    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 6
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v3, v3, 0xb

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1d

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    add-int/2addr v3, v4

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Field "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " not found. Known fields are "

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final zzo(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 5

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v0

    const v1, 0xfffff

    and-int/2addr v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    int-to-long v2, v0

    .line 3
    invoke-virtual {v1, p2, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 6
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object p2

    .line 7
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 9
    invoke-virtual {v1, p1, v2, v3, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-interface {p2, v4, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 13
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    return-void

    .line 14
    :cond_2
    invoke-virtual {v1, p1, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 15
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 16
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object v4

    .line 17
    invoke-interface {p2, v4, p3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    invoke-virtual {v1, p1, v2, v3, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v4

    .line 19
    :cond_3
    invoke-interface {p2, p3, v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 4
    aget p1, p1, p3

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr p3, v1

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Source subfield "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is present but null: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final zzp(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    aget v1, v0, p3

    .line 2
    invoke-direct {p0, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    int-to-long v4, v2

    .line 4
    invoke-virtual {v3, p2, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 7
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object p2

    .line 8
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v3, p1, v4, v5, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 14
    :goto_0
    invoke-direct {p0, p1, v1, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    return-void

    .line 15
    :cond_2
    invoke-virtual {v3, p1, v4, v5}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p3

    .line 16
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v3, p1, v4, v5, v0}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object p3, v0

    .line 20
    :cond_3
    invoke-interface {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 4
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 5
    aget p3, v0, p3

    .line 6
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x26

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    add-int/2addr v0, v1

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Source subfield "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is present but null: "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzd:[Ljava/lang/Object;

    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    aget-object v1, v0, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhkk;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v1, p1, 0x1

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v2

    aget-object v1, v0, v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzhkc;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 3
    aput-object v1, v0, p1

    return-object v1
.end method

.method private final zzr(I)Ljava/lang/Object;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzd:[Ljava/lang/Object;

    add-int/2addr p1, p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private final zzs(I)Lcom/google/android/gms/internal/ads/zzhin;
    .locals 1

    .line 1
    div-int/lit8 p1, p1, 0x3

    add-int/2addr p1, p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzd:[Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    aget-object p1, v0, p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhin;

    return-object p1
.end method

.method private final zzt(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    int-to-long v1, v1

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 7
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 8
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzu(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p3}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    return-void
.end method

.method private final zzv(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    .line 4
    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result p3

    const v1, 0xfffff

    and-int/2addr p3, v1

    int-to-long v1, p3

    invoke-virtual {p2, p1, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhkk;->zza()Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhkk;->zzd(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-object p2
.end method

.method private final zzw(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    invoke-virtual {v0, p1, v1, v2, p4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    return-void
.end method

.method private final zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    aget v0, v0, p2

    .line 2
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v1

    const v2, 0xfffff

    and-int/2addr v1, v2

    int-to-long v1, v1

    .line 3
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-object p3

    .line 4
    :cond_0
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v1

    if-nez v1, :cond_1

    return-object p3

    .line 5
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 6
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object p2

    .line 7
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhjl;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhjl;->zze()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object p2

    .line 8
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez p3, :cond_3

    .line 11
    invoke-virtual {p4, p5}, Lcom/google/android/gms/internal/ads/zzhkv;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 12
    :cond_3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhjl;->zzc(Lcom/google/android/gms/internal/ads/zzhjk;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 13
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhhb;

    .line 14
    new-array v4, v3, [B

    .line 15
    sget v5, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    .line 16
    new-instance v5, Lcom/google/android/gms/internal/ads/zzhhj;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzhhj;-><init>([BII)V

    .line 17
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v5, p2, v3, v2}, Lcom/google/android/gms/internal/ads/zzhjl;->zzb(Lcom/google/android/gms/internal/ads/zzhhm;Lcom/google/android/gms/internal/ads/zzhjk;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-static {v5, v4}, Lcom/google/android/gms/internal/ads/zzhgx;->zza(Lcom/google/android/gms/internal/ads/zzhhm;[B)Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object v2

    invoke-virtual {p4, p3, v0, v2}, Lcom/google/android/gms/internal/ads/zzhkv;->zzd(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhhb;)V

    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    .line 20
    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    return-object p3
.end method

.method private static zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkk;)Z
    .locals 2

    const v0, 0xfffff

    and-int/2addr p1, v0

    int-to-long v0, p1

    .line 1
    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    .line 2
    invoke-interface {p2, p0}, Lcom/google/android/gms/internal/ads/zzhkk;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private final zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkf;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzD(I)Z

    move-result v0

    const v1, 0xfffff

    and-int/2addr p2, v1

    int-to-long v1, p2

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzn()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzi:Z

    if-eqz p2, :cond_1

    .line 3
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzm()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void

    .line 2
    :cond_1
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzq()Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object p2

    invoke-static {p1, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzg:Lcom/google/android/gms/internal/ads/zzhjs;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhih;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbg()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v0

    return-object v0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int v4, v2, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v2

    int-to-long v4, v4

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 2
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzB(I)I

    move-result v2

    and-int/2addr v2, v3

    int-to-long v2, v2

    .line 3
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v6

    .line 4
    invoke-static {p2, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    if-ne v6, v2, :cond_0

    .line 5
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 6
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 7
    :pswitch_1
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    .line 9
    :pswitch_2
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto/16 :goto_2

    .line 11
    :pswitch_3
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 13
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 14
    :pswitch_4
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 16
    :pswitch_5
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 18
    :pswitch_6
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 20
    :pswitch_7
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 22
    :pswitch_8
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 23
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 24
    :pswitch_9
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 26
    :pswitch_a
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 27
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 28
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 29
    :pswitch_b
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 31
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 32
    :pswitch_c
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 34
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkm;->zzG(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_3

    .line 35
    :pswitch_d
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 37
    :pswitch_e
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto/16 :goto_3

    .line 39
    :pswitch_f
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 41
    :pswitch_10
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 43
    :pswitch_11
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 45
    :pswitch_12
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    .line 47
    :pswitch_13
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    .line 49
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v2, v3, :cond_0

    goto :goto_3

    .line 50
    :pswitch_14
    invoke-direct {p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzL(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 52
    invoke-static {p2, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    :goto_2
    return v0

    :cond_1
    :goto_3
    add-int/lit8 v1, v1, 0x3

    goto/16 :goto_0

    .line 53
    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 54
    move-object v2, p2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_4

    .line 56
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    .line 57
    check-cast p2, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    .line 58
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhhw;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final zzc(Ljava/lang/Object;)I
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    array-length v3, v2

    if-ge v0, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v3

    const v4, 0xfffff

    and-int/2addr v4, v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v3

    .line 2
    aget v2, v2, v0

    int-to-long v4, v4

    const/16 v6, 0x25

    const/16 v7, 0x20

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 3
    :pswitch_0
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 4
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 6
    :pswitch_1
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 7
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    .line 8
    :pswitch_2
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 9
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 10
    :pswitch_3
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 11
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    .line 12
    :pswitch_4
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 13
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 14
    :pswitch_5
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 15
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 16
    :pswitch_6
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 17
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 18
    :pswitch_7
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 19
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 20
    :pswitch_8
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 21
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 23
    :pswitch_9
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 24
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto/16 :goto_3

    .line 25
    :pswitch_a
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 26
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzK(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Z)I

    move-result v2

    goto/16 :goto_3

    .line 27
    :pswitch_b
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 28
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 29
    :pswitch_c
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 30
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    .line 31
    :pswitch_d
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 32
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    .line 33
    :pswitch_e
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 34
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    .line 35
    :pswitch_f
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 36
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    .line 37
    :pswitch_10
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 38
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzH(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto/16 :goto_3

    .line 39
    :pswitch_11
    invoke-direct {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x35

    .line 40
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzG(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    :pswitch_12
    mul-int/lit8 v1, v1, 0x35

    .line 41
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_13
    mul-int/lit8 v1, v1, 0x35

    .line 42
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_14
    mul-int/lit8 v1, v1, 0x35

    .line 43
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    goto :goto_1

    :pswitch_15
    mul-int/lit8 v1, v1, 0x35

    .line 45
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    :pswitch_16
    mul-int/lit8 v1, v1, 0x35

    .line 46
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_17
    mul-int/lit8 v1, v1, 0x35

    .line 47
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto/16 :goto_2

    :pswitch_18
    mul-int/lit8 v1, v1, 0x35

    .line 48
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_19
    mul-int/lit8 v1, v1, 0x35

    .line 49
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1a
    mul-int/lit8 v1, v1, 0x35

    .line 50
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto/16 :goto_3

    :pswitch_1b
    mul-int/lit8 v1, v1, 0x35

    .line 51
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto/16 :goto_3

    :pswitch_1c
    mul-int/lit8 v1, v1, 0x35

    .line 52
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    :cond_0
    :goto_1
    add-int/2addr v1, v6

    goto :goto_4

    :pswitch_1d
    mul-int/lit8 v1, v1, 0x35

    .line 54
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :pswitch_1e
    mul-int/lit8 v1, v1, 0x35

    .line 55
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhiu;->zzb(Z)I

    move-result v2

    goto :goto_3

    :pswitch_1f
    mul-int/lit8 v1, v1, 0x35

    .line 56
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_20
    mul-int/lit8 v1, v1, 0x35

    .line 57
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto :goto_2

    :pswitch_21
    mul-int/lit8 v1, v1, 0x35

    .line 58
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_3

    :pswitch_22
    mul-int/lit8 v1, v1, 0x35

    .line 59
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto :goto_2

    :pswitch_23
    mul-int/lit8 v1, v1, 0x35

    .line 60
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v2

    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    goto :goto_2

    :pswitch_24
    mul-int/lit8 v1, v1, 0x35

    .line 61
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    goto :goto_3

    :pswitch_25
    mul-int/lit8 v1, v1, 0x35

    .line 62
    invoke-static {p1, v4, v5}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 63
    sget-object v4, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    :goto_2
    ushr-long v4, v2, v7

    xor-long/2addr v2, v4

    long-to-int v2, v2

    :goto_3
    add-int/2addr v1, v2

    :cond_1
    :goto_4
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_2
    mul-int/lit8 v1, v1, 0x35

    .line 64
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_3

    mul-int/lit8 v1, v1, 0x35

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    .line 67
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhkr;->hashCode()I

    move-result p1

    add-int/2addr v1, p1

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzd(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzF(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v2

    .line 3
    aget v1, v1, v0

    int-to-long v3, v3

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 12
    :pswitch_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 13
    :pswitch_1
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 16
    :pswitch_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzp(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 17
    :pswitch_3
    invoke-direct {p0, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 19
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_2

    .line 20
    :pswitch_4
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 21
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 22
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhjn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 23
    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 4
    :pswitch_5
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhit;

    .line 5
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhit;

    .line 6
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v5

    .line 7
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v6

    if-lez v5, :cond_1

    if-lez v6, :cond_1

    .line 8
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhit;->zza()Z

    move-result v7

    if-nez v7, :cond_0

    add-int/2addr v6, v5

    .line 9
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzhit;->zzh(I)Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v1

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-gtz v5, :cond_2

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 11
    :goto_1
    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_2

    .line 24
    :pswitch_6
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 25
    :pswitch_7
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 27
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 28
    :pswitch_8
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 30
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 31
    :pswitch_9
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 32
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 34
    :pswitch_a
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 37
    :pswitch_b
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 40
    :pswitch_c
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 41
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 43
    :pswitch_d
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 44
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 46
    :pswitch_e
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzo(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 47
    :pswitch_f
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 48
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 50
    :pswitch_10
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 51
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzi(Ljava/lang/Object;JZ)V

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 53
    :pswitch_11
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 55
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 56
    :pswitch_12
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 57
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 59
    :pswitch_13
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzd(Ljava/lang/Object;J)I

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 61
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 62
    :pswitch_14
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 63
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 64
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 65
    :pswitch_15
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 66
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzf(Ljava/lang/Object;J)J

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 67
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 68
    :pswitch_16
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 69
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result v1

    invoke-static {p1, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzk(Ljava/lang/Object;JF)V

    .line 70
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto :goto_2

    .line 71
    :pswitch_17
    invoke-direct {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    invoke-static {p2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide v1

    invoke-static {p1, v3, v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzm(Ljava/lang/Object;JD)V

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    .line 74
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhkm;->zzI(Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzn:Lcom/google/android/gms/internal/ads/zzhhs;

    .line 75
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhkm;->zzH(Lcom/google/android/gms/internal/ads/zzhhs;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zze(Ljava/lang/Object;)I
    .locals 19

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 1
    sget-object v8, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    const/4 v9, 0x0

    const v10, 0xfffff

    move v1, v9

    move v11, v1

    move v12, v11

    move v0, v10

    :goto_0
    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    array-length v3, v2

    if-ge v11, v3, :cond_1c

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v4

    .line 2
    aget v13, v2, v11

    add-int/lit8 v5, v11, 0x2

    .line 3
    aget v2, v2, v5

    and-int v5, v2, v10

    const/16 v14, 0x11

    const/4 v15, 0x1

    if-gt v4, v14, :cond_2

    if-eq v5, v0, :cond_1

    if-ne v5, v10, :cond_0

    move v0, v9

    goto :goto_1

    :cond_0
    int-to-long v0, v5

    .line 4
    invoke-virtual {v8, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    :goto_1
    move v1, v0

    move v0, v5

    :cond_1
    ushr-int/lit8 v2, v2, 0x14

    shl-int v2, v15, v2

    move v14, v0

    move/from16 v16, v1

    move v5, v2

    goto :goto_2

    :cond_2
    move v14, v0

    move/from16 v16, v1

    move v5, v9

    :goto_2
    and-int v0, v3, v10

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhx;->zzJ:Lcom/google/android/gms/internal/ads/zzhhx;

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhx;->zza()I

    move-result v1

    if-lt v4, v1, :cond_3

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhx;->zzW:Lcom/google/android/gms/internal/ads/zzhhx;

    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhx;->zza()I

    :cond_3
    int-to-long v2, v0

    const/16 v17, 0x3f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1a

    .line 7
    :pswitch_0
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 8
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 10
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkm;->zzE(ILcom/google/android/gms/internal/ads/zzhjs;Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v0

    goto/16 :goto_14

    .line 11
    :pswitch_1
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 12
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 13
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 14
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    .line 15
    :pswitch_2
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 16
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    goto/16 :goto_17

    .line 19
    :pswitch_3
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    .line 21
    :pswitch_4
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 22
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    .line 23
    :pswitch_5
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 24
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 25
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 26
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    .line 27
    :pswitch_6
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 28
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v1

    .line 29
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 30
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    goto/16 :goto_17

    .line 31
    :pswitch_7
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 33
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 34
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v1

    .line 35
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_15

    .line 36
    :pswitch_8
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 37
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkm;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v0

    goto/16 :goto_14

    .line 39
    :pswitch_9
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 40
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz v2, :cond_4

    .line 41
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 42
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 43
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v1

    .line 44
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_15

    .line 45
    :cond_4
    check-cast v1, Ljava/lang/String;

    .line 46
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 47
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzC(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    .line 48
    :pswitch_a
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_16

    .line 50
    :pswitch_b
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 51
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    .line 52
    :pswitch_c
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 53
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    .line 54
    :pswitch_d
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 55
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 56
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 57
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    .line 58
    :pswitch_e
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 59
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 61
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    .line 62
    :pswitch_f
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 63
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 65
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    .line 66
    :pswitch_10
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 67
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    .line 68
    :pswitch_11
    invoke-direct {v6, v7, v13, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 69
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    .line 70
    :pswitch_12
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    .line 71
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 72
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjl;

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjm;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_12

    .line 74
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjm;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v9

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v13, v4, v3}, Lcom/google/android/gms/internal/ads/zzhjl;->zzd(ILjava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_3

    .line 76
    :pswitch_13
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 77
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 78
    sget v2, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_6

    move v4, v9

    goto :goto_5

    :cond_6
    move v3, v9

    move v4, v3

    :goto_4
    if-ge v3, v2, :cond_7

    .line 80
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhjs;

    invoke-static {v13, v5, v1}, Lcom/google/android/gms/internal/ads/zzhkm;->zzE(ILcom/google/android/gms/internal/ads/zzhjs;Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    add-int/2addr v12, v4

    goto/16 :goto_1a

    .line 81
    :pswitch_14
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 82
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzu(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 83
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 84
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 85
    :pswitch_15
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 86
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzy(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 87
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 88
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 89
    :pswitch_16
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 90
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 91
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 92
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 93
    :pswitch_17
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 94
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 95
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 96
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 97
    :pswitch_18
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzv(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 99
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 100
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 101
    :pswitch_19
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 102
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzx(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 103
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 104
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 105
    :pswitch_1a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 106
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 108
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 109
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 110
    :pswitch_1b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 111
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 112
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 113
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 114
    :pswitch_1c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 115
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 116
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 117
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_6

    .line 118
    :pswitch_1d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 119
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzw(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 120
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_6

    .line 122
    :pswitch_1e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 123
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzt(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 124
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 125
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_6

    .line 126
    :pswitch_1f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 127
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzs(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 128
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 129
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_6

    .line 130
    :pswitch_20
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 131
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzz(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 132
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 133
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_6

    .line 134
    :pswitch_21
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzB(Ljava/util/List;)I

    move-result v0

    if-lez v0, :cond_1b

    shl-int/lit8 v1, v13, 0x3

    .line 136
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    .line 137
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    :goto_6
    add-int/2addr v1, v2

    add-int/2addr v1, v0

    :cond_8
    :goto_7
    add-int/2addr v12, v1

    goto/16 :goto_1a

    .line 138
    :pswitch_22
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 139
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    :goto_8
    move v0, v9

    goto/16 :goto_14

    :cond_9
    shl-int/lit8 v2, v13, 0x3

    .line 141
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzu(Ljava/util/List;)I

    move-result v0

    .line 142
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    :goto_9
    mul-int/2addr v1, v2

    goto/16 :goto_17

    .line 143
    :pswitch_23
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 144
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 145
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_8

    :cond_a
    shl-int/lit8 v2, v13, 0x3

    .line 146
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzy(Ljava/util/List;)I

    move-result v0

    .line 147
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_9

    .line 148
    :pswitch_24
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 149
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzC(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 150
    :pswitch_25
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 151
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 152
    :pswitch_26
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 153
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    goto :goto_8

    :cond_b
    shl-int/lit8 v2, v13, 0x3

    .line 155
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzv(Ljava/util/List;)I

    move-result v0

    .line 156
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_9

    .line 157
    :pswitch_27
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 158
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 159
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_c

    goto :goto_8

    :cond_c
    shl-int/lit8 v2, v13, 0x3

    .line 160
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzx(Ljava/util/List;)I

    move-result v0

    .line 161
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_9

    .line 162
    :pswitch_28
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 163
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 164
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_d

    move v1, v9

    goto/16 :goto_7

    :cond_d
    shl-int/lit8 v2, v13, 0x3

    .line 165
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    mul-int/2addr v1, v2

    move v2, v9

    .line 166
    :goto_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_8

    .line 167
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 168
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v3

    .line 169
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 170
    :pswitch_29
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 171
    sget v2, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_e

    move v3, v9

    goto :goto_d

    :cond_e
    shl-int/lit8 v3, v13, 0x3

    .line 173
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v9

    :goto_b
    if-ge v4, v2, :cond_10

    .line 174
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v13, v5, Lcom/google/android/gms/internal/ads/zzhjc;

    if-eqz v13, :cond_f

    .line 175
    check-cast v5, Lcom/google/android/gms/internal/ads/zzhjc;

    .line 176
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb()I

    move-result v5

    .line 177
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v13

    goto :goto_c

    .line 178
    :cond_f
    check-cast v5, Lcom/google/android/gms/internal/ads/zzhgk;

    .line 179
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaT(Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v5

    .line 180
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v13

    :goto_c
    add-int/2addr v13, v5

    add-int/2addr v3, v13

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_10
    :goto_d
    add-int/2addr v12, v3

    goto/16 :goto_1a

    .line 181
    :pswitch_2a
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 182
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_11

    goto/16 :goto_12

    :cond_11
    shl-int/lit8 v2, v13, 0x3

    .line 183
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    mul-int/2addr v2, v1

    instance-of v3, v0, Lcom/google/android/gms/internal/ads/zzhjd;

    if-eqz v3, :cond_13

    .line 189
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjd;

    move v3, v9

    :goto_e
    if-ge v3, v1, :cond_19

    .line 190
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhjd;->zzc()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz v5, :cond_12

    .line 191
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 192
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v4

    .line 193
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_f

    .line 194
    :cond_12
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzC(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_13
    move v3, v9

    :goto_10
    if-ge v3, v1, :cond_19

    .line 184
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz v5, :cond_14

    .line 185
    check-cast v4, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 186
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v4

    .line 187
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v5

    add-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_11

    .line 188
    :cond_14
    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzC(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v2, v4

    :goto_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 195
    :pswitch_2b
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 197
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_8

    :cond_15
    shl-int/lit8 v1, v13, 0x3

    .line 198
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    add-int/2addr v1, v15

    mul-int/2addr v0, v1

    goto/16 :goto_14

    .line 199
    :pswitch_2c
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 200
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 201
    :pswitch_2d
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 202
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzC(ILjava/util/List;Z)I

    move-result v0

    goto/16 :goto_14

    .line 203
    :pswitch_2e
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 204
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_16

    goto/16 :goto_8

    :cond_16
    shl-int/lit8 v2, v13, 0x3

    .line 206
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzw(Ljava/util/List;)I

    move-result v0

    .line 207
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_9

    .line 208
    :pswitch_2f
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 209
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_17

    goto/16 :goto_8

    :cond_17
    shl-int/lit8 v2, v13, 0x3

    .line 211
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzt(Ljava/util/List;)I

    move-result v0

    .line 212
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto/16 :goto_9

    .line 213
    :pswitch_30
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 214
    sget v1, Lcom/google/android/gms/internal/ads/zzhkm;->zza:I

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_18

    :goto_12
    move v2, v9

    goto :goto_13

    :cond_18
    shl-int/lit8 v1, v13, 0x3

    .line 216
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhkm;->zzs(Ljava/util/List;)I

    move-result v2

    .line 217
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 218
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/2addr v2, v0

    :cond_19
    :goto_13
    add-int/2addr v12, v2

    goto/16 :goto_1a

    .line 219
    :pswitch_31
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 220
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzA(ILjava/util/List;Z)I

    move-result v0

    goto :goto_14

    .line 221
    :pswitch_32
    invoke-virtual {v8, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 222
    invoke-static {v13, v0, v9}, Lcom/google/android/gms/internal/ads/zzhkm;->zzC(ILjava/util/List;Z)I

    move-result v0

    :goto_14
    add-int/2addr v12, v0

    goto/16 :goto_1a

    :pswitch_33
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v3, v2

    move v2, v11

    move-wide v9, v3

    move v3, v14

    move/from16 v4, v16

    .line 223
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 224
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 225
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 226
    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkm;->zzE(ILcom/google/android/gms/internal/ads/zzhjs;Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v0

    goto :goto_14

    :pswitch_34
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 227
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 228
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    add-long v3, v1, v1

    shr-long v1, v1, v17

    .line 229
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    xor-long/2addr v1, v3

    .line 230
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_35
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 231
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 232
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    add-int v2, v1, v1

    shr-int/lit8 v1, v1, 0x1f

    .line 233
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    xor-int/2addr v1, v2

    .line 234
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_36
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 235
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 236
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_37
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 237
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 238
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_38
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 239
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 240
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 241
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 242
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto/16 :goto_17

    :pswitch_39
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 243
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 244
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    .line 245
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 246
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3a
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 247
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 248
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 249
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 250
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v1

    .line 251
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    :goto_15
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto/16 :goto_14

    :pswitch_3b
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 252
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 253
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 254
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    invoke-static {v13, v0, v1}, Lcom/google/android/gms/internal/ads/zzhkm;->zzD(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)I

    move-result v0

    goto/16 :goto_14

    :pswitch_3c
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 255
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 256
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz v2, :cond_1a

    .line 257
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhb;

    .line 258
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 259
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result v1

    .line 260
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    goto :goto_15

    .line 261
    :cond_1a
    check-cast v1, Ljava/lang/String;

    .line 262
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 263
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzC(Ljava/lang/String;)I

    move-result v1

    goto/16 :goto_17

    :pswitch_3d
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 264
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 265
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    :goto_16
    add-int/2addr v0, v15

    goto/16 :goto_14

    :pswitch_3e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 266
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 267
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_18

    :pswitch_3f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 268
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 269
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    goto/16 :goto_19

    :pswitch_40
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 270
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 271
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    int-to-long v1, v1

    .line 272
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 273
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto :goto_17

    :pswitch_41
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 274
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 275
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 276
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 277
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    goto :goto_17

    :pswitch_42
    move-wide v9, v2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 278
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 279
    invoke-virtual {v8, v7, v9, v10}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v1

    .line 280
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    .line 281
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result v1

    :goto_17
    add-int/2addr v0, v1

    goto/16 :goto_14

    :pswitch_43
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 282
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 283
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    :goto_18
    add-int/lit8 v0, v0, 0x4

    goto/16 :goto_14

    :pswitch_44
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v14

    move/from16 v4, v16

    .line 284
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_1b

    shl-int/lit8 v0, v13, 0x3

    .line 285
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    :goto_19
    add-int/lit8 v0, v0, 0x8

    goto/16 :goto_14

    :cond_1b
    :goto_1a
    add-int/lit8 v11, v11, 0x3

    move v0, v14

    move/from16 v1, v16

    const/4 v9, 0x0

    const v10, 0xfffff

    goto/16 :goto_0

    .line 286
    :cond_1c
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 287
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhkw;

    .line 288
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkw;->zzi()I

    move-result v0

    add-int/2addr v12, v0

    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_1f

    .line 289
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc()I

    move-result v1

    const/4 v9, 0x0

    const/16 v18, 0x0

    :goto_1b
    if-ge v9, v1, :cond_1d

    .line 290
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzhkr;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhko;

    .line 291
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhko;->zza()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzhhw;->zzj(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)I

    move-result v2

    add-int v18, v18, v2

    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 292
    :cond_1d
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 293
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzhhw;->zzj(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)I

    move-result v1

    add-int v18, v18, v1

    goto :goto_1c

    :cond_1e
    add-int v12, v12, v18

    :cond_1f
    return v12

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhlk;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    .line 1
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_0

    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkr;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhhw;->zzc()Ljava/util/Iterator;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    move-object v10, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v10, 0x0

    :goto_0
    iget-object v11, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    sget-object v12, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    const v13, 0xfffff

    move v0, v13

    const/4 v2, 0x0

    const/4 v15, 0x0

    :goto_1
    array-length v3, v11

    if-ge v15, v3, :cond_8

    .line 5
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v4

    .line 6
    aget v5, v11, v15

    const/16 v9, 0x11

    if-gt v4, v9, :cond_3

    add-int/lit8 v9, v15, 0x2

    .line 7
    aget v9, v11, v9

    and-int v14, v9, v13

    if-eq v14, v0, :cond_2

    if-ne v14, v13, :cond_1

    move-object/from16 v17, v1

    const/4 v2, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v17, v1

    int-to-long v0, v14

    .line 8
    invoke-virtual {v12, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    move v2, v0

    :goto_2
    move v0, v14

    goto :goto_3

    :cond_2
    move-object/from16 v17, v1

    :goto_3
    ushr-int/lit8 v1, v9, 0x14

    const/4 v9, 0x1

    shl-int v1, v9, v1

    move v9, v0

    move/from16 v18, v1

    move-object/from16 v14, v17

    goto :goto_4

    :cond_3
    move-object/from16 v17, v1

    move v9, v0

    move-object/from16 v14, v17

    const/16 v18, 0x0

    :goto_4
    move/from16 v17, v2

    :goto_5
    if-eqz v14, :cond_5

    .line 7
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzn:Lcom/google/android/gms/internal/ads/zzhhs;

    .line 9
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhie;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzhie;->zza:I

    if-gt v1, v5, :cond_5

    .line 10
    invoke-virtual {v0, v8, v14}, Lcom/google/android/gms/internal/ads/zzhhs;->zzb(Lcom/google/android/gms/internal/ads/zzhlk;Ljava/util/Map$Entry;)V

    .line 11
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/util/Map$Entry;

    goto :goto_5

    :cond_4
    const/4 v14, 0x0

    goto :goto_5

    :cond_5
    and-int v0, v3, v13

    int-to-long v2, v0

    packed-switch v4, :pswitch_data_0

    :cond_6
    :goto_6
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    goto/16 :goto_8

    .line 110
    :pswitch_0
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 111
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 112
    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto :goto_6

    .line 113
    :pswitch_1
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 114
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzq(IJ)V

    goto :goto_6

    .line 115
    :pswitch_2
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 116
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzp(II)V

    goto :goto_6

    .line 117
    :pswitch_3
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzd(IJ)V

    goto :goto_6

    .line 119
    :pswitch_4
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 120
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzb(II)V

    goto :goto_6

    .line 121
    :pswitch_5
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzg(II)V

    goto :goto_6

    .line 123
    :pswitch_6
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 124
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzo(II)V

    goto :goto_6

    .line 125
    :pswitch_7
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 126
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzn(ILcom/google/android/gms/internal/ads/zzhhb;)V

    goto :goto_6

    .line 127
    :pswitch_8
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 129
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto/16 :goto_6

    .line 130
    :pswitch_9
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 131
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, v8}, Lcom/google/android/gms/internal/ads/zzhjv;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhlk;)V

    goto/16 :goto_6

    .line 132
    :pswitch_a
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 133
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzK(Ljava/lang/Object;J)Z

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzl(IZ)V

    goto/16 :goto_6

    .line 134
    :pswitch_b
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzk(II)V

    goto/16 :goto_6

    .line 136
    :pswitch_c
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 137
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzj(IJ)V

    goto/16 :goto_6

    .line 138
    :pswitch_d
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzI(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzi(II)V

    goto/16 :goto_6

    .line 140
    :pswitch_e
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzh(IJ)V

    goto/16 :goto_6

    .line 142
    :pswitch_f
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 143
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzJ(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzc(IJ)V

    goto/16 :goto_6

    .line 144
    :pswitch_10
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 145
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzH(Ljava/lang/Object;J)F

    move-result v0

    invoke-interface {v8, v5, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zze(IF)V

    goto/16 :goto_6

    .line 146
    :pswitch_11
    invoke-direct {v6, v7, v5, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 147
    invoke-static {v7, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzG(Ljava/lang/Object;J)D

    move-result-wide v0

    invoke-interface {v8, v5, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzf(ID)V

    goto/16 :goto_6

    .line 148
    :pswitch_12
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 149
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    .line 150
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object v1

    .line 151
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 152
    invoke-interface {v8, v5, v1, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzM(ILcom/google/android/gms/internal/ads/zzhjk;Ljava/util/Map;)V

    goto/16 :goto_6

    .line 106
    :pswitch_13
    aget v0, v11, v15

    .line 107
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 108
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    .line 109
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzhkm;->zzr(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto/16 :goto_6

    .line 103
    :pswitch_14
    aget v0, v11, v15

    .line 104
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x1

    .line 105
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_15
    const/4 v4, 0x1

    .line 100
    aget v0, v11, v15

    .line 101
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 102
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_16
    const/4 v4, 0x1

    .line 97
    aget v0, v11, v15

    .line 98
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 99
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_17
    const/4 v4, 0x1

    .line 94
    aget v0, v11, v15

    .line 95
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 96
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_18
    const/4 v4, 0x1

    .line 91
    aget v0, v11, v15

    .line 92
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 93
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_19
    const/4 v4, 0x1

    .line 88
    aget v0, v11, v15

    .line 89
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 90
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1a
    const/4 v4, 0x1

    .line 85
    aget v0, v11, v15

    .line 86
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 87
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1b
    const/4 v4, 0x1

    .line 82
    aget v0, v11, v15

    .line 83
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 84
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1c
    const/4 v4, 0x1

    .line 79
    aget v0, v11, v15

    .line 80
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 81
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1d
    const/4 v4, 0x1

    .line 76
    aget v0, v11, v15

    .line 77
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 78
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1e
    const/4 v4, 0x1

    .line 73
    aget v0, v11, v15

    .line 74
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 75
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_1f
    const/4 v4, 0x1

    .line 70
    aget v0, v11, v15

    .line 71
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 72
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_20
    const/4 v4, 0x1

    .line 67
    aget v0, v11, v15

    .line 68
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 69
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    :pswitch_21
    const/4 v4, 0x1

    .line 64
    aget v0, v11, v15

    .line 65
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 66
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_6

    .line 61
    :pswitch_22
    aget v0, v11, v15

    .line 62
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 63
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zze(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    :pswitch_23
    const/4 v4, 0x0

    .line 58
    aget v0, v11, v15

    .line 59
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 60
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzj(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    :pswitch_24
    const/4 v4, 0x0

    .line 55
    aget v0, v11, v15

    .line 56
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 57
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzg(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    :pswitch_25
    const/4 v4, 0x0

    .line 52
    aget v0, v11, v15

    .line 53
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 54
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzl(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    :pswitch_26
    const/4 v4, 0x0

    .line 49
    aget v0, v11, v15

    .line 50
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 51
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzm(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    :pswitch_27
    const/4 v4, 0x0

    .line 46
    aget v0, v11, v15

    .line 47
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 48
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzi(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto/16 :goto_7

    .line 43
    :pswitch_28
    aget v0, v11, v15

    .line 44
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 45
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzhkm;->zzp(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;)V

    goto/16 :goto_6

    .line 39
    :pswitch_29
    aget v0, v11, v15

    .line 40
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 41
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    .line 42
    invoke-static {v0, v1, v8, v2}, Lcom/google/android/gms/internal/ads/zzhkm;->zzq(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto/16 :goto_6

    .line 36
    :pswitch_2a
    aget v0, v11, v15

    .line 37
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 38
    invoke-static {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzhkm;->zzo(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;)V

    goto/16 :goto_6

    .line 33
    :pswitch_2b
    aget v0, v11, v15

    .line 34
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v4, 0x0

    .line 35
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzn(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_2c
    const/4 v4, 0x0

    .line 30
    aget v0, v11, v15

    .line 31
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 32
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzk(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_2d
    const/4 v4, 0x0

    .line 27
    aget v0, v11, v15

    .line 28
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 29
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzf(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_2e
    const/4 v4, 0x0

    .line 24
    aget v0, v11, v15

    .line 25
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 26
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzh(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_2f
    const/4 v4, 0x0

    .line 21
    aget v0, v11, v15

    .line 22
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 23
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzd(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_30
    const/4 v4, 0x0

    .line 18
    aget v0, v11, v15

    .line 19
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 20
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzc(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_31
    const/4 v4, 0x0

    .line 15
    aget v0, v11, v15

    .line 16
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 17
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zzb(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    goto :goto_7

    :pswitch_32
    const/4 v4, 0x0

    .line 12
    aget v0, v11, v15

    .line 13
    invoke-virtual {v12, v7, v2, v3}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 14
    invoke-static {v0, v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzhkm;->zza(ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhlk;Z)V

    :goto_7
    move/from16 v19, v4

    move-object/from16 v20, v11

    move-object/from16 v16, v14

    goto/16 :goto_8

    :pswitch_33
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v16, v14

    move-wide v13, v2

    move v2, v15

    move v3, v9

    move/from16 v19, v4

    move/from16 v4, v17

    move-object/from16 v20, v11

    move v11, v5

    move/from16 v5, v18

    .line 153
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 154
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 155
    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzs(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto/16 :goto_8

    :pswitch_34
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 156
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 157
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzq(IJ)V

    goto/16 :goto_8

    :pswitch_35
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 158
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzp(II)V

    goto/16 :goto_8

    :pswitch_36
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 160
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzd(IJ)V

    goto/16 :goto_8

    :pswitch_37
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 162
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 163
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzb(II)V

    goto/16 :goto_8

    :pswitch_38
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 164
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 165
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzg(II)V

    goto/16 :goto_8

    :pswitch_39
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 166
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzo(II)V

    goto/16 :goto_8

    :pswitch_3a
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 168
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 169
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzn(ILcom/google/android/gms/internal/ads/zzhhb;)V

    goto/16 :goto_8

    :pswitch_3b
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 170
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 171
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 172
    invoke-direct {v6, v15}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzr(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;)V

    goto/16 :goto_8

    :pswitch_3c
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 173
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 174
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v11, v0, v8}, Lcom/google/android/gms/internal/ads/zzhjv;->zzU(ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhlk;)V

    goto/16 :goto_8

    :pswitch_3d
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 175
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 176
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzhlc;->zzh(Ljava/lang/Object;J)Z

    move-result v0

    .line 177
    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzl(IZ)V

    goto/16 :goto_8

    :pswitch_3e
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzk(II)V

    goto/16 :goto_8

    :pswitch_3f
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 180
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzj(IJ)V

    goto/16 :goto_8

    :pswitch_40
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 183
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zzi(II)V

    goto/16 :goto_8

    :pswitch_41
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 184
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzh(IJ)V

    goto/16 :goto_8

    :pswitch_42
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 186
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    invoke-virtual {v12, v7, v13, v14}, Lsun/misc/Unsafe;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzc(IJ)V

    goto :goto_8

    :pswitch_43
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 188
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzhlc;->zzj(Ljava/lang/Object;J)F

    move-result v0

    .line 190
    invoke-interface {v8, v11, v0}, Lcom/google/android/gms/internal/ads/zzhlk;->zze(IF)V

    goto :goto_8

    :pswitch_44
    move-object/from16 v20, v11

    move-object/from16 v16, v14

    const/16 v19, 0x0

    move-wide v13, v2

    move v11, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    move v3, v9

    move/from16 v4, v17

    move/from16 v5, v18

    .line 191
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 192
    invoke-static {v7, v13, v14}, Lcom/google/android/gms/internal/ads/zzhlc;->zzl(Ljava/lang/Object;J)D

    move-result-wide v0

    .line 193
    invoke-interface {v8, v11, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlk;->zzf(ID)V

    :cond_7
    :goto_8
    add-int/lit8 v15, v15, 0x3

    move v0, v9

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v11, v20

    const v13, 0xfffff

    goto/16 :goto_1

    :cond_8
    move-object/from16 v17, v1

    :goto_9
    if-eqz v1, :cond_a

    .line 8
    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzn:Lcom/google/android/gms/internal/ads/zzhhs;

    .line 194
    invoke-virtual {v0, v8, v1}, Lcom/google/android/gms/internal/ads/zzhhs;->zzb(Lcom/google/android/gms/internal/ads/zzhlk;Ljava/util/Map$Entry;)V

    .line 195
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    goto :goto_9

    :cond_9
    const/4 v1, 0x0

    goto :goto_9

    .line 196
    :cond_a
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhih;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhih;->zzt:Lcom/google/android/gms/internal/ads/zzhkw;

    .line 197
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhkw;

    .line 198
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzhkw;->zzg(Lcom/google/android/gms/internal/ads/zzhlk;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzg(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkf;Lcom/google/android/gms/internal/ads/zzhhr;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzF(Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    const/4 v7, 0x0

    move-object v8, v7

    .line 3
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzb()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzR(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v9, 0x0

    if-gez v0, :cond_5

    const v0, 0x7fffffff

    if-ne v1, v0, :cond_1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move-object v3, v8

    :goto_1
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    .line 198
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 202
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-nez v0, :cond_2

    move-object v0, v7

    goto :goto_2

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzg:Lcom/google/android/gms/internal/ads/zzhjs;

    .line 5
    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/zzhhr;->zzc(Lcom/google/android/gms/internal/ads/zzhjs;I)Lcom/google/android/gms/internal/ads/zzhif;

    move-result-object v0

    :goto_2
    if-nez v0, :cond_4

    if-nez v8, :cond_3

    .line 6
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 7
    :cond_3
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzhkv;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkf;I)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move-object v3, v8

    :goto_3
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    .line 198
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p2

    goto/16 :goto_a

    .line 200
    :cond_4
    :try_start_2
    move-object p2, p1

    check-cast p2, Lcom/google/android/gms/internal/ads/zzhid;

    .line 201
    throw v7

    .line 8
    :cond_5
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v3

    const v4, 0xfffff

    packed-switch v3, :pswitch_data_0

    if-nez v8, :cond_d

    .line 194
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_7

    .line 147
    :pswitch_0
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 148
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v3

    .line 149
    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    .line 150
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_1
    and-int/2addr v2, v4

    .line 144
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzw()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 145
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 146
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_2
    and-int/2addr v2, v4

    .line 141
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzv()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 142
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 143
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_3
    and-int/2addr v2, v4

    .line 138
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzu()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 139
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 140
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_4
    and-int/2addr v2, v4

    .line 135
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 136
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 137
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 151
    :pswitch_5
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzs()I

    move-result v3

    .line 152
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 153
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_6

    goto :goto_4

    .line 156
    :cond_6
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzhkm;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_7
    :goto_4
    and-int/2addr v2, v4

    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 155
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_6
    and-int/2addr v2, v4

    .line 132
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzr()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 133
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 134
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_7
    and-int/2addr v2, v4

    .line 130
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzq()Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object v3

    int-to-long v4, v2

    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 131
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 157
    :pswitch_8
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 158
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v3

    .line 159
    invoke-interface {p2, v2, v3, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    .line 160
    invoke-direct {p0, p1, v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    goto/16 :goto_0

    .line 161
    :pswitch_9
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkf;)V

    .line 162
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_a
    and-int/2addr v2, v4

    .line 127
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzl()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    int-to-long v4, v2

    .line 128
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 129
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_b
    and-int/2addr v2, v4

    .line 124
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzk()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 125
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 126
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_c
    and-int/2addr v2, v4

    .line 121
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzj()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 122
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 123
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_d
    and-int/2addr v2, v4

    .line 118
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzi()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    int-to-long v4, v2

    .line 119
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 120
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_e
    and-int/2addr v2, v4

    .line 115
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzg()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 116
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 117
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_f
    and-int/2addr v2, v4

    .line 112
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzh()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    int-to-long v4, v2

    .line 113
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 114
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_10
    and-int/2addr v2, v4

    .line 109
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzf()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    int-to-long v4, v2

    .line 110
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 111
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    :pswitch_11
    and-int/2addr v2, v4

    .line 106
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zze()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    int-to-long v4, v2

    .line 107
    invoke-static {p1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 108
    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzQ(Ljava/lang/Object;II)V

    goto/16 :goto_0

    .line 163
    :pswitch_12
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    .line 164
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v0

    and-int/2addr v0, v4

    int-to-long v2, v0

    .line 165
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_8

    .line 170
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjm;->zza()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhjm;->zzc()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v0

    .line 171
    invoke-static {p1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 166
    :cond_8
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhjn;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 167
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjm;->zza()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhjm;->zzc()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v4

    .line 168
    invoke-static {v4, v0}, Lcom/google/android/gms/internal/ads/zzhjn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v0, v4

    .line 172
    :cond_9
    :goto_5
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 173
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object v1

    .line 174
    invoke-interface {p2, v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzP(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzhjk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    goto/16 :goto_0

    :pswitch_13
    and-int v1, v2, v4

    .line 103
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    int-to-long v1, v1

    .line 104
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 105
    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzH(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    goto/16 :goto_0

    :pswitch_14
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 69
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_15
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 67
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 68
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_16
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 65
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 66
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_17
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 63
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 64
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_18
    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 59
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzK(Ljava/util/List;)V

    .line 61
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    .line 62
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhkm;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhin;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_19
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 57
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 58
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1a
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 55
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 56
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1b
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 53
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 54
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1c
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 51
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1d
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 49
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 50
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1e
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 47
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_1f
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 45
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 46
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_20
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 43
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 44
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_21
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 41
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_22
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 39
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 40
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzO(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_23
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 37
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 38
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzN(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_24
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 35
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 36
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzM(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_25
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 33
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 34
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzL(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_26
    and-int/2addr v2, v4

    int-to-long v2, v2

    .line 29
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 30
    invoke-interface {p2, v2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzK(Ljava/util/List;)V

    .line 31
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v3

    move-object v0, p1

    move-object v4, v8

    move-object v5, v6

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhkm;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhin;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :pswitch_27
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 27
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 28
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzJ(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_28
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 25
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 26
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzI(Ljava/util/List;)V

    goto/16 :goto_0

    .line 175
    :pswitch_29
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    and-int v1, v2, v4

    int-to-long v1, v1

    .line 176
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v1

    .line 177
    invoke-interface {p2, v1, v0, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzG(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    goto/16 :goto_0

    .line 98
    :pswitch_2a
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzD(I)Z

    move-result v0

    if-eqz v0, :cond_a

    and-int v0, v2, v4

    int-to-long v0, v0

    .line 101
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhh;

    const/4 v2, 0x1

    .line 102
    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzhhh;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    :cond_a
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 99
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhhh;

    .line 100
    invoke-virtual {v1, v0, v9}, Lcom/google/android/gms/internal/ads/zzhhh;->zzF(Ljava/util/List;Z)V

    goto/16 :goto_0

    :pswitch_2b
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 23
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 24
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzE(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2c
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 21
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 22
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzD(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2d
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 19
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzC(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2e
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 17
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 18
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzB(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_2f
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 15
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzz(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_30
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 13
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 14
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzA(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_31
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 11
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 12
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzy(Ljava/util/List;)V

    goto/16 :goto_0

    :pswitch_32
    and-int v0, v2, v4

    int-to-long v0, v0

    .line 9
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhje;->zza(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 10
    invoke-interface {p2, v0}, Lcom/google/android/gms/internal/ads/zzhkf;->zzx(Ljava/util/List;)V

    goto/16 :goto_0

    .line 178
    :pswitch_33
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 179
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    .line 180
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzp(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    .line 181
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    :pswitch_34
    and-int v1, v2, v4

    .line 97
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzw()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 98
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_35
    and-int v1, v2, v4

    .line 95
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzv()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 96
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_36
    and-int v1, v2, v4

    .line 93
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzu()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 94
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_37
    and-int v1, v2, v4

    .line 91
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzt()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 92
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 182
    :pswitch_38
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzs()I

    move-result v3

    .line 183
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v5

    if-eqz v5, :cond_c

    .line 184
    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzhin;->zza(I)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_6

    .line 187
    :cond_b
    invoke-static {p1, v1, v3, v8, v6}, Lcom/google/android/gms/internal/ads/zzhkm;->zzK(Ljava/lang/Object;IILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;)Ljava/lang/Object;

    move-result-object v8

    goto/16 :goto_0

    :cond_c
    :goto_6
    and-int v1, v2, v4

    int-to-long v1, v1

    .line 185
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 186
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_39
    and-int v1, v2, v4

    .line 89
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzr()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 90
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3a
    and-int v1, v2, v4

    .line 87
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzq()Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzo(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 88
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 188
    :pswitch_3b
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 189
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    .line 190
    invoke-interface {p2, v1, v2, p3}, Lcom/google/android/gms/internal/ads/zzhkf;->zzo(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;Lcom/google/android/gms/internal/ads/zzhhr;)V

    .line 191
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 192
    :pswitch_3c
    invoke-direct {p0, p1, v2, p2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzz(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkf;)V

    .line 193
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3d
    and-int v1, v2, v4

    .line 85
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzl()Z

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzi(Ljava/lang/Object;JZ)V

    .line 86
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3e
    and-int v1, v2, v4

    .line 83
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzk()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 84
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_3f
    and-int v1, v2, v4

    .line 81
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzj()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_40
    and-int v1, v2, v4

    .line 79
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzi()I

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zze(Ljava/lang/Object;JI)V

    .line 80
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_41
    and-int v1, v2, v4

    .line 77
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzg()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_42
    and-int v1, v2, v4

    .line 75
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzh()J

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzg(Ljava/lang/Object;JJ)V

    .line 76
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_43
    and-int v1, v2, v4

    .line 73
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zzf()F

    move-result v2

    int-to-long v3, v1

    invoke-static {p1, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzk(Ljava/lang/Object;JF)V

    .line 74
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    :pswitch_44
    and-int v1, v2, v4

    .line 71
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/zzhkf;->zze()D

    move-result-wide v2

    int-to-long v4, v1

    invoke-static {p1, v4, v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzhlc;->zzm(Ljava/lang/Object;JD)V

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzO(Ljava/lang/Object;I)V

    goto/16 :goto_0

    .line 195
    :cond_d
    :goto_7
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzhkv;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkf;I)Z

    move-result v0
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzhiv; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move-object v3, v8

    :goto_8
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    .line 198
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    :catch_0
    if-nez v8, :cond_e

    .line 196
    :try_start_4
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzh(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    .line 197
    :cond_e
    invoke-virtual {v6, v8, p2, v9}, Lcom/google/android/gms/internal/ads/zzhkv;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkf;I)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_0

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move-object v3, v8

    :goto_9
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge p2, p3, :cond_f

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    .line 198
    aget v2, p3, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    :cond_f
    if-eqz v3, :cond_10

    .line 202
    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzhkv;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_10
    return-void

    .line 193
    :goto_a
    iget p3, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move-object v3, v8

    :goto_b
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge p3, v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    .line 198
    aget v2, v0, p3

    move-object v0, p0

    move-object v1, p1

    move-object v4, v6

    move-object v5, p1

    .line 199
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 p3, p3, 0x1

    goto :goto_b

    :cond_11
    if-eqz v3, :cond_12

    .line 202
    invoke-virtual {v6, p1, v3}, Lcom/google/android/gms/internal/ads/zzhkv;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 203
    :cond_12
    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v15, p2

    move/from16 v14, p4

    move/from16 v13, p5

    move-object/from16 v12, p6

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzF(Ljava/lang/Object;)V

    sget-object v11, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    const/16 v16, 0x0

    move/from16 v0, p3

    move/from16 v2, v16

    move v3, v2

    move v4, v3

    const/4 v1, -0x1

    const v5, 0xfffff

    :goto_0
    const/16 v17, 0x0

    const-string v8, "Failed to parse the message."

    if-ge v0, v14, :cond_78

    add-int/lit8 v3, v0, 0x1

    .line 2
    aget-byte v0, v15, v0

    if-gez v0, :cond_0

    .line 3
    invoke-static {v0, v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzb(I[BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    goto :goto_1

    :cond_0
    move/from16 v33, v3

    move v3, v0

    move/from16 v0, v33

    :goto_1
    ushr-int/lit8 v9, v3, 0x3

    const/4 v10, 0x3

    if-le v9, v1, :cond_2

    div-int/2addr v2, v10

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zze:I

    if-lt v9, v1, :cond_1

    iget v1, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzf:I

    if-gt v9, v1, :cond_1

    .line 4
    invoke-direct {v6, v9, v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzS(II)I

    move-result v1

    goto :goto_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_2

    .line 5
    :cond_2
    invoke-direct {v6, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzR(I)I

    move-result v1

    :goto_2
    move v2, v1

    const/4 v1, -0x1

    if-ne v2, v1, :cond_3

    move v2, v0

    move/from16 v18, v1

    move/from16 v19, v4

    move/from16 v28, v5

    move-object v14, v6

    move-object/from16 v20, v8

    move v8, v9

    move-object v10, v11

    move v6, v13

    move/from16 v31, v16

    move v9, v3

    move-object v11, v7

    move-object v7, v12

    goto/16 :goto_4c

    :cond_3
    and-int/lit8 v1, v3, 0x7

    .line 270
    iget-object v10, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    add-int/lit8 v20, v2, 0x1

    move/from16 v21, v3

    .line 6
    aget v3, v10, v20

    move-object/from16 v20, v8

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v8

    const v18, 0xfffff

    and-int v13, v3, v18

    int-to-long v13, v13

    move/from16 v22, v9

    const-string v9, ""

    const-wide/16 v24, 0x0

    move-object/from16 v26, v9

    const-string v9, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    move-object/from16 v27, v9

    const/16 v9, 0x11

    if-gt v8, v9, :cond_12

    add-int/lit8 v9, v2, 0x2

    .line 7
    aget v9, v10, v9

    ushr-int/lit8 v10, v9, 0x14

    const/16 v23, 0x1

    shl-int v10, v23, v10

    const v6, 0xfffff

    and-int/2addr v9, v6

    move/from16 v18, v2

    move/from16 v23, v3

    if-eq v9, v5, :cond_6

    if-eq v5, v6, :cond_4

    int-to-long v2, v5

    .line 8
    invoke-virtual {v11, v7, v2, v3, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_4
    if-ne v9, v6, :cond_5

    move/from16 v4, v16

    goto :goto_3

    :cond_5
    int-to-long v2, v9

    .line 9
    invoke-virtual {v11, v7, v2, v3}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v2

    move v4, v2

    :goto_3
    move/from16 v28, v9

    goto :goto_4

    :cond_6
    move/from16 v28, v5

    :goto_4
    packed-switch v8, :pswitch_data_0

    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x3

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    or-int/2addr v4, v10

    .line 10
    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v1, v22, 0x3

    or-int/lit8 v13, v1, 0x4

    .line 11
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    move-object v2, v8

    move-object v8, v0

    move v14, v9

    move/from16 v10, v18

    move/from16 v5, v22

    move-object v9, v1

    move v1, v10

    move/from16 v18, v19

    move-object/from16 v10, p2

    move-object v5, v11

    move v11, v3

    move-object v3, v12

    move/from16 v12, p4

    move/from16 p3, v4

    move v4, v14

    move-object/from16 v14, p6

    .line 12
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzhgq;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v8

    .line 13
    invoke-direct {v2, v7, v4, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v3

    move-object v11, v5

    move v3, v6

    move v0, v8

    move/from16 v1, v22

    move/from16 v5, v28

    move-object v6, v2

    move v2, v4

    move/from16 v4, p3

    goto/16 :goto_0

    :pswitch_0
    if-nez v1, :cond_7

    or-int v8, v4, v10

    .line 14
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v9

    iget-wide v0, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 15
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide v4

    move-object v0, v11

    const/16 v19, -0x1

    move-object/from16 v1, p1

    move/from16 v10, v18

    move/from16 v6, v21

    move-wide v2, v13

    .line 16
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move v4, v8

    move v0, v9

    move v2, v10

    goto :goto_5

    :cond_7
    move/from16 v10, v18

    move/from16 v6, v21

    const/16 v19, -0x1

    const v1, 0xfffff

    move-object/from16 v2, p0

    move v3, v0

    move v8, v4

    move v4, v10

    goto :goto_6

    :pswitch_1
    move/from16 v9, v18

    move/from16 v6, v21

    const/16 v19, -0x1

    if-nez v1, :cond_8

    or-int/2addr v4, v10

    .line 17
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 18
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result v1

    .line 19
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move v2, v9

    :goto_5
    move/from16 v1, v22

    move/from16 v5, v28

    move-object/from16 v6, p0

    goto/16 :goto_0

    :cond_8
    const v1, 0xfffff

    move-object/from16 v2, p0

    move v3, v0

    move v8, v4

    move v4, v9

    :goto_6
    move-object v5, v11

    move-object v0, v12

    goto :goto_8

    :pswitch_2
    move/from16 v9, v18

    move/from16 v6, v21

    const/16 v19, -0x1

    if-nez v1, :cond_b

    .line 20
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    const v18, 0xfffff

    move-object/from16 v8, p0

    .line 21
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v2

    const/high16 v3, -0x80000000

    and-int v3, v23, v3

    if-eqz v3, :cond_a

    if-eqz v2, :cond_a

    .line 22
    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzhin;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_7

    .line 24
    :cond_9
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v2

    int-to-long v13, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzhkw;->zzk(ILjava/lang/Object;)V

    goto/16 :goto_c

    :cond_a
    :goto_7
    or-int/2addr v4, v10

    .line 23
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :cond_b
    const v18, 0xfffff

    move-object/from16 v2, p0

    move v3, v0

    move v8, v4

    move v4, v9

    move-object v5, v11

    move-object v0, v12

    move/from16 v1, v18

    :goto_8
    move/from16 v18, v19

    goto/16 :goto_f

    :pswitch_3
    const/4 v2, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p0

    move/from16 v9, v18

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v2, :cond_c

    or-int/2addr v4, v10

    .line 25
    invoke-static {v15, v0, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzg([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    .line 26
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    :pswitch_4
    const/4 v2, 0x2

    const/16 v19, -0x1

    move-object/from16 v8, p0

    move/from16 v9, v18

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v2, :cond_c

    or-int/2addr v10, v4

    .line 27
    invoke-direct {v8, v7, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzt(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v13

    .line 28
    invoke-direct {v8, v9}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    move v3, v0

    move-object v0, v13

    move-object/from16 v2, p2

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;[BIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    .line 30
    invoke-direct {v8, v7, v9, v13}, Lcom/google/android/gms/internal/ads/zzhjv;->zzu(Ljava/lang/Object;ILjava/lang/Object;)V

    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move-object v6, v8

    move v2, v9

    move v4, v10

    goto/16 :goto_d

    :cond_c
    move v3, v0

    goto/16 :goto_e

    :pswitch_5
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x2

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    or-int/2addr v4, v10

    invoke-static/range {v23 .. v23}, Lcom/google/android/gms/internal/ads/zzhjv;->zzD(I)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 31
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzf([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    goto :goto_9

    .line 32
    :cond_d
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v1, :cond_f

    if-nez v1, :cond_e

    move-object/from16 v2, v26

    .line 276
    iput-object v2, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_9

    :cond_e
    new-instance v2, Ljava/lang/String;

    .line 33
    sget-object v3, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v2, v15, v0, v1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    iput-object v2, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    add-int/2addr v0, v1

    .line 31
    :goto_9
    iget-object v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    .line 34
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_c

    .line 32
    :cond_f
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    move-object/from16 v9, v27

    .line 275
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 276
    throw v0

    :pswitch_6
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    move/from16 v18, v6

    move/from16 v6, v21

    if-nez v1, :cond_11

    or-int/2addr v4, v10

    .line 35
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    cmp-long v1, v1, v24

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_a

    :cond_10
    move/from16 v1, v16

    .line 36
    :goto_a
    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzi(Ljava/lang/Object;JZ)V

    goto/16 :goto_c

    :pswitch_7
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x5

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v4, v10

    .line 37
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_8
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x1

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    add-int/lit8 v17, v3, 0x8

    or-int/2addr v10, v4

    .line 38
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v4

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_b

    :pswitch_9
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    move/from16 v18, v6

    move/from16 v6, v21

    if-nez v1, :cond_11

    or-int/2addr v4, v10

    .line 39
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 40
    invoke-virtual {v11, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_c

    :pswitch_a
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    move/from16 v18, v6

    move/from16 v6, v21

    if-nez v1, :cond_11

    or-int/2addr v10, v4

    .line 41
    invoke-static {v15, v3, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v17

    iget-wide v4, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    move-object v0, v11

    move-object/from16 v1, p1

    move-wide v2, v13

    .line 42
    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->putLong(Ljava/lang/Object;JJ)V

    :goto_b
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move-object v6, v8

    move v2, v9

    move v4, v10

    move/from16 v0, v17

    goto :goto_d

    :pswitch_b
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x5

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x4

    or-int/2addr v4, v10

    .line 43
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 44
    invoke-static {v7, v13, v14, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzk(Ljava/lang/Object;JF)V

    goto :goto_c

    :pswitch_c
    const/16 v19, -0x1

    move-object/from16 v8, p0

    move v3, v0

    move/from16 v9, v18

    const/4 v0, 0x1

    move/from16 v18, v6

    move/from16 v6, v21

    if-ne v1, v0, :cond_11

    add-int/lit8 v0, v3, 0x8

    or-int/2addr v4, v10

    .line 45
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 46
    invoke-static {v7, v13, v14, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlc;->zzm(Ljava/lang/Object;JD)V

    :goto_c
    move/from16 v14, p4

    move/from16 v13, p5

    move v3, v6

    move-object v6, v8

    move v2, v9

    :goto_d
    move/from16 v1, v22

    move/from16 v5, v28

    goto/16 :goto_0

    :cond_11
    :goto_e
    move-object v2, v8

    move-object v5, v11

    move-object v0, v12

    move/from16 v1, v18

    move/from16 v18, v19

    move v8, v4

    move v4, v9

    :goto_f
    move-object v14, v2

    move v2, v3

    move/from16 v31, v4

    move-object v10, v5

    move v9, v6

    move-object v11, v7

    move/from16 v19, v8

    move/from16 v8, v22

    move/from16 v6, p5

    move-object v7, v0

    goto/16 :goto_4c

    :cond_12
    move/from16 v23, v3

    move/from16 v19, v4

    move/from16 v28, v5

    move-object v5, v11

    move-object/from16 v9, v27

    const/16 v18, -0x1

    move v3, v0

    move v4, v2

    move-object v0, v12

    move-object/from16 v2, v26

    move-object v12, v6

    move/from16 v6, v21

    const/16 v11, 0x1b

    if-ne v8, v11, :cond_16

    const/4 v11, 0x2

    if-ne v1, v11, :cond_15

    .line 47
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhit;

    .line 48
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhit;->zza()Z

    move-result v2

    if-nez v2, :cond_14

    .line 49
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v2

    if-nez v2, :cond_13

    const/16 v2, 0xa

    goto :goto_10

    :cond_13
    add-int/2addr v2, v2

    .line 50
    :goto_10
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhit;->zzh(I)Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v1

    .line 51
    invoke-virtual {v5, v7, v13, v14, v1}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_14
    move-object v13, v1

    .line 52
    invoke-direct {v12, v4}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v8

    move v9, v6

    move-object/from16 v10, p2

    move/from16 v1, v22

    move v11, v3

    move-object v2, v12

    move/from16 v12, p4

    move-object/from16 v14, p6

    .line 53
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzhgq;->zzn(Lcom/google/android/gms/internal/ads/zzhkk;I[BIILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v3

    move/from16 v14, p4

    move/from16 v13, p5

    move-object v12, v0

    move v0, v3

    move-object v11, v5

    move v3, v6

    move/from16 v5, v28

    move-object v6, v2

    move v2, v4

    move/from16 v4, v19

    goto/16 :goto_0

    :cond_15
    move-object v2, v12

    move/from16 v12, p4

    move-object v8, v0

    move v14, v3

    move v11, v4

    move-object/from16 v32, v5

    move-object/from16 v3, v20

    move/from16 v23, v22

    goto/16 :goto_3e

    :cond_16
    move/from16 v21, v4

    move/from16 v11, v22

    const/16 v4, 0x31

    move-object/from16 v22, v10

    const-string v10, "Protocol message had invalid UTF-8."

    move-object/from16 v26, v10

    const-string v10, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    if-gt v8, v4, :cond_5b

    move/from16 v4, v23

    move/from16 v23, v11

    int-to-long v11, v4

    .line 54
    invoke-virtual {v5, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzhit;

    .line 55
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhit;->zza()Z

    move-result v22

    if-nez v22, :cond_17

    .line 56
    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v22

    move-wide/from16 v29, v11

    add-int v11, v22, v22

    .line 57
    invoke-interface {v4, v11}, Lcom/google/android/gms/internal/ads/zzhit;->zzh(I)Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v4

    .line 58
    invoke-virtual {v5, v7, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_11

    :cond_17
    move-wide/from16 v29, v11

    :goto_11
    move-object v13, v4

    packed-switch v8, :pswitch_data_1

    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v8, v3

    move-object v14, v5

    move-object/from16 v11, v20

    move/from16 v31, v21

    const/4 v0, 0x3

    if-ne v1, v0, :cond_58

    and-int/lit8 v0, v6, -0x8

    or-int/lit8 v10, v0, 0x4

    move/from16 v5, v31

    .line 59
    invoke-direct {v12, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move v2, v8

    move/from16 v3, p4

    move v4, v10

    move-object/from16 v21, v11

    move v11, v5

    move-object/from16 v5, p6

    .line 60
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzi(Lcom/google/android/gms/internal/ads/zzhkk;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    .line 61
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto/16 :goto_35

    :pswitch_d
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1a

    .line 65
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 66
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 67
    invoke-static {v15, v3, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int/2addr v2, v1

    :goto_12
    if-ge v1, v2, :cond_18

    .line 68
    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 69
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    goto :goto_12

    :cond_18
    if-ne v1, v2, :cond_19

    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v0, v1

    move v8, v3

    move-object v14, v5

    move/from16 v11, v21

    move-object/from16 v21, v20

    goto/16 :goto_38

    .line 320
    :cond_19
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 277
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 278
    throw v0

    :cond_1a
    if-nez v1, :cond_1b

    .line 70
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 71
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 72
    invoke-static {v15, v3, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 73
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide v8

    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    move/from16 v4, p4

    move/from16 v14, v21

    :goto_13
    if-ge v1, v4, :cond_1f

    .line 74
    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v2

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v8, :cond_1f

    .line 75
    invoke-static {v15, v2, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide v8

    .line 76
    invoke-virtual {v13, v8, v9}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    goto :goto_13

    :cond_1b
    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v8, v3

    move-object v14, v5

    move/from16 v11, v21

    move-object/from16 v21, v20

    goto/16 :goto_37

    :pswitch_e
    move/from16 v4, p4

    move/from16 v14, v21

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1e

    .line 77
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 78
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhii;

    .line 79
    invoke-static {v15, v3, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int/2addr v2, v1

    :goto_14
    if-ge v1, v2, :cond_1c

    .line 80
    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 81
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result v8

    invoke-virtual {v13, v8}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    goto :goto_14

    :cond_1c
    if-ne v1, v2, :cond_1d

    goto :goto_16

    .line 278
    :cond_1d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 279
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 280
    throw v0

    :cond_1e
    if-nez v1, :cond_21

    .line 82
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 83
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhii;

    .line 84
    invoke-static {v15, v3, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 85
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result v2

    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    :goto_15
    if-ge v1, v4, :cond_1f

    .line 86
    invoke-static {v15, v1, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v2

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v8, :cond_1f

    .line 87
    invoke-static {v15, v2, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result v2

    .line 88
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    goto :goto_15

    :cond_1f
    :goto_16
    move-object/from16 v12, p0

    move-object v7, v0

    move v0, v1

    move v8, v3

    move v9, v4

    move v11, v14

    move-object/from16 v21, v20

    :goto_17
    move-object v14, v5

    goto/16 :goto_38

    :pswitch_f
    move/from16 v4, p4

    move/from16 v14, v21

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    .line 89
    invoke-static {v15, v3, v13, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzm([BILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    move-object v12, v0

    move v10, v1

    move v11, v3

    move v8, v4

    move-object v9, v5

    move-object/from16 v5, p0

    goto :goto_18

    :cond_20
    if-nez v1, :cond_21

    move-object v12, v0

    move v0, v6

    move-object/from16 v1, p2

    move v2, v3

    move v11, v3

    move/from16 v3, p4

    move v8, v4

    move-object v4, v13

    move-object v9, v5

    move-object/from16 v5, p6

    .line 90
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzl(I[BIILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    move-object/from16 v5, p0

    move v10, v1

    .line 91
    :goto_18
    invoke-direct {v5, v14}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v2, v5, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    move-object/from16 v0, p1

    move/from16 v1, v23

    move-object/from16 v21, v2

    move-object v2, v13

    move-object v13, v5

    move-object/from16 v5, v21

    .line 92
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhkm;->zzJ(Ljava/lang/Object;ILjava/util/List;Lcom/google/android/gms/internal/ads/zzhin;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;)Ljava/lang/Object;

    move v0, v10

    move-object v7, v12

    move-object v12, v13

    move-object/from16 v21, v20

    move-object/from16 v33, v9

    move v9, v8

    move v8, v11

    move v11, v14

    move-object/from16 v14, v33

    goto/16 :goto_38

    :cond_21
    move-object/from16 v12, p0

    move-object v7, v0

    move v8, v3

    move v9, v4

    goto/16 :goto_1b

    :pswitch_10
    move/from16 v8, p4

    move-object v12, v0

    move v11, v3

    move/from16 v14, v21

    const/4 v2, 0x2

    move-object/from16 v0, p0

    if-ne v1, v2, :cond_29

    .line 93
    invoke-static {v15, v11, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v2, :cond_28

    .line 94
    array-length v3, v15

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_27

    if-nez v2, :cond_22

    .line 95
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 96
    :cond_22
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhhb;->zzr([BII)Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object v3

    invoke-interface {v13, v3}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    :goto_19
    add-int/2addr v1, v2

    :goto_1a
    if-ge v1, v8, :cond_26

    .line 97
    invoke-static {v15, v1, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v2

    iget v3, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v3, :cond_26

    .line 98
    invoke-static {v15, v2, v12}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v12, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v2, :cond_25

    .line 99
    array-length v3, v15

    sub-int/2addr v3, v1

    if-gt v2, v3, :cond_24

    if-nez v2, :cond_23

    .line 288
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhhb;->zzb:Lcom/google/android/gms/internal/ads/zzhhb;

    .line 100
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 101
    :cond_23
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhhb;->zzr([BII)Lcom/google/android/gms/internal/ads/zzhhb;

    move-result-object v3

    invoke-interface {v13, v3}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 99
    :cond_24
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 287
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 288
    throw v1

    .line 98
    :cond_25
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 285
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 286
    throw v1

    :cond_26
    move v9, v8

    move v8, v11

    move-object v7, v12

    move v11, v14

    move-object/from16 v21, v20

    move-object v12, v0

    move v0, v1

    goto/16 :goto_17

    .line 94
    :cond_27
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 283
    invoke-direct {v1, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 284
    throw v1

    .line 93
    :cond_28
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 281
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 282
    throw v1

    :cond_29
    move v9, v8

    move v8, v11

    move-object v7, v12

    move v11, v14

    move-object/from16 v21, v20

    move-object v12, v0

    goto :goto_1c

    :pswitch_11
    move/from16 v8, p4

    move-object v12, v0

    move v11, v3

    move/from16 v14, v21

    const/4 v2, 0x2

    move-object/from16 v0, p0

    if-ne v1, v2, :cond_2a

    .line 102
    invoke-direct {v0, v14}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    move v4, v8

    move-object/from16 v3, v20

    move-object v8, v1

    move v9, v6

    move-object/from16 v10, p2

    move v2, v11

    move/from16 v1, v23

    move-object v7, v12

    move/from16 v12, p4

    move/from16 v31, v14

    move-object/from16 v14, p6

    .line 103
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzhgq;->zzn(Lcom/google/android/gms/internal/ads/zzhkk;I[BIILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v8

    move-object v12, v0

    move-object/from16 v21, v3

    move v9, v4

    move-object v14, v5

    move v0, v8

    move/from16 v11, v31

    move v8, v2

    goto/16 :goto_38

    :cond_2a
    move-object v7, v12

    move-object v12, v0

    move v9, v8

    move v8, v11

    :goto_1b
    move v11, v14

    move-object/from16 v21, v20

    :goto_1c
    move-object v14, v5

    goto/16 :goto_37

    :pswitch_12
    move/from16 v4, p4

    move-object v7, v0

    move v8, v3

    move-object/from16 v3, v20

    move/from16 v31, v21

    move/from16 v12, v23

    move-wide/from16 v10, v29

    const/4 v14, 0x2

    move-object/from16 v0, p0

    if-ne v1, v14, :cond_38

    const-wide/32 v20, 0x20000000

    and-long v10, v10, v20

    cmp-long v1, v10, v24

    if-nez v1, :cond_30

    .line 104
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v10, :cond_2f

    if-nez v10, :cond_2b

    .line 105
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 112
    :cond_2b
    new-instance v11, Ljava/lang/String;

    .line 106
    sget-object v14, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v1, v10, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 107
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    :goto_1d
    add-int/2addr v1, v10

    :goto_1e
    if-ge v1, v4, :cond_2e

    .line 108
    invoke-static {v15, v1, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v10

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v11, :cond_2e

    .line 109
    invoke-static {v15, v10, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v10, :cond_2d

    if-nez v10, :cond_2c

    .line 110
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_2c
    new-instance v11, Ljava/lang/String;

    .line 111
    sget-object v14, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v1, v10, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 112
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 109
    :cond_2d
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 291
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 292
    throw v1

    :cond_2e
    move-object/from16 v21, v3

    move v9, v4

    move-object v14, v5

    move/from16 v23, v12

    move/from16 v11, v31

    move-object v12, v0

    move v0, v1

    goto/16 :goto_38

    .line 104
    :cond_2f
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 289
    invoke-direct {v1, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 290
    throw v1

    .line 113
    :cond_30
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v10, :cond_37

    if-nez v10, :cond_31

    .line 114
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_31
    add-int v11, v1, v10

    .line 115
    invoke-static {v15, v1, v11}, Lcom/google/android/gms/internal/ads/zzhlh;->zza([BII)Z

    move-result v14

    if-eqz v14, :cond_36

    .line 296
    new-instance v14, Ljava/lang/String;

    .line 116
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v14, v15, v1, v10, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 117
    invoke-interface {v13, v14}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    move v1, v11

    :goto_1f
    if-ge v1, v4, :cond_35

    .line 118
    invoke-static {v15, v1, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v10, :cond_35

    .line 119
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v0, :cond_34

    if-nez v0, :cond_32

    .line 120
    invoke-interface {v13, v2}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_32
    add-int v10, v1, v0

    .line 121
    invoke-static {v15, v1, v10}, Lcom/google/android/gms/internal/ads/zzhlh;->zza([BII)Z

    move-result v11

    if-eqz v11, :cond_33

    .line 300
    new-instance v11, Ljava/lang/String;

    .line 122
    sget-object v14, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v11, v15, v1, v0, v14}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 123
    invoke-interface {v13, v11}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    move v1, v10

    goto :goto_1f

    .line 121
    :cond_33
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    move-object/from16 v9, v26

    .line 299
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 300
    throw v0

    .line 119
    :cond_34
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 297
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 298
    throw v0

    :cond_35
    move v0, v1

    move-object/from16 v21, v3

    move v9, v4

    move-object v14, v5

    move/from16 v23, v12

    goto/16 :goto_29

    :cond_36
    move-object/from16 v9, v26

    .line 115
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 295
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 296
    throw v0

    .line 113
    :cond_37
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 293
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 294
    throw v0

    :cond_38
    move-object/from16 v21, v3

    move v9, v4

    move-object v14, v5

    move/from16 v23, v12

    :goto_20
    move/from16 v11, v31

    move-object/from16 v12, p0

    goto/16 :goto_37

    :pswitch_13
    move/from16 v4, p4

    move-object v7, v0

    move v8, v3

    move-object/from16 v3, v20

    move/from16 v31, v21

    move/from16 v12, v23

    const/4 v0, 0x2

    if-ne v1, v0, :cond_3c

    .line 124
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 125
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhgr;

    .line 126
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int/2addr v1, v0

    :goto_21
    if-ge v0, v1, :cond_3a

    .line 127
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    move-object/from16 v20, v3

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_39

    const/4 v2, 0x1

    goto :goto_22

    :cond_39
    move/from16 v2, v16

    .line 128
    :goto_22
    invoke-virtual {v13, v2}, Lcom/google/android/gms/internal/ads/zzhgr;->zzg(Z)V

    move-object/from16 v3, v20

    goto :goto_21

    :cond_3a
    move-object/from16 v20, v3

    if-ne v0, v1, :cond_3b

    goto/16 :goto_28

    .line 280
    :cond_3b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 301
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 302
    throw v0

    :cond_3c
    move-object/from16 v20, v3

    if-nez v1, :cond_44

    .line 129
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 130
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhgr;

    .line 131
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    cmp-long v1, v1, v24

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_23

    :cond_3d
    move/from16 v1, v16

    .line 132
    :goto_23
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhgr;->zzg(Z)V

    :goto_24
    if-ge v0, v4, :cond_43

    .line 133
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_43

    .line 134
    invoke-static {v15, v1, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    cmp-long v1, v1, v24

    if-eqz v1, :cond_3e

    const/4 v1, 0x1

    goto :goto_25

    :cond_3e
    move/from16 v1, v16

    .line 135
    :goto_25
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhgr;->zzg(Z)V

    goto :goto_24

    :pswitch_14
    move/from16 v4, p4

    move-object v7, v0

    move v8, v3

    move/from16 v31, v21

    move/from16 v12, v23

    const/4 v0, 0x2

    if-ne v1, v0, :cond_42

    .line 136
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 137
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhii;

    .line 138
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int v2, v0, v1

    .line 139
    array-length v3, v15

    if-gt v2, v3, :cond_41

    .line 140
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzhii;->size()I

    move-result v3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v3, v1

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzhii;->zzj(I)V

    :goto_26
    if-ge v0, v2, :cond_3f

    .line 141
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_26

    :cond_3f
    if-ne v0, v2, :cond_40

    goto :goto_28

    .line 302
    :cond_40
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 305
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 306
    throw v0

    .line 139
    :cond_41
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 303
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 304
    throw v0

    :cond_42
    const/4 v0, 0x5

    if-ne v1, v0, :cond_44

    add-int/lit8 v0, v8, 0x4

    .line 142
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 143
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhii;

    .line 144
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    :goto_27
    if-ge v0, v4, :cond_43

    .line 145
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_43

    .line 146
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzhii;->zzi(I)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_27

    :cond_43
    :goto_28
    move v9, v4

    move-object v14, v5

    move/from16 v23, v12

    move-object/from16 v21, v20

    :goto_29
    move/from16 v11, v31

    move-object/from16 v12, p0

    goto/16 :goto_38

    :cond_44
    move v9, v4

    move-object v14, v5

    move/from16 v23, v12

    move-object/from16 v21, v20

    goto/16 :goto_20

    :pswitch_15
    move/from16 v4, p4

    move-object v7, v0

    move v8, v3

    move/from16 v31, v21

    move/from16 v12, v23

    const/4 v0, 0x2

    if-ne v1, v0, :cond_48

    .line 147
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 148
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 149
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int v2, v0, v1

    .line 150
    array-length v3, v15

    if-gt v2, v3, :cond_47

    .line 151
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzhjg;->size()I

    move-result v3

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzhjg;->zzi(I)V

    :goto_2a
    if-ge v0, v2, :cond_45

    move/from16 v23, v12

    .line 152
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v11

    invoke-virtual {v13, v11, v12}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    add-int/lit8 v0, v0, 0x8

    move/from16 v12, v23

    goto :goto_2a

    :cond_45
    move/from16 v23, v12

    if-ne v0, v2, :cond_46

    goto :goto_2c

    .line 306
    :cond_46
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 309
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 310
    throw v0

    .line 150
    :cond_47
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 307
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 308
    throw v0

    :cond_48
    move/from16 v23, v12

    const/4 v0, 0x1

    if-ne v1, v0, :cond_4c

    add-int/lit8 v0, v8, 0x8

    .line 153
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 154
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 155
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v1

    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    :goto_2b
    if-ge v0, v4, :cond_49

    .line 156
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_49

    .line 157
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v2

    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_2b

    :pswitch_16
    move/from16 v4, p4

    move-object v7, v0

    move v8, v3

    move/from16 v31, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4a

    .line 158
    invoke-static {v15, v8, v13, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzm([BILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    :cond_49
    :goto_2c
    move-object/from16 v12, p0

    move v9, v4

    move-object v14, v5

    move-object/from16 v21, v20

    :goto_2d
    move/from16 v11, v31

    goto/16 :goto_38

    :cond_4a
    if-nez v1, :cond_4c

    move-object/from16 v12, p0

    move v0, v6

    move-object/from16 v1, p2

    move v2, v8

    move-object/from16 v11, v20

    move/from16 v3, p4

    move v9, v4

    move-object v4, v13

    move-object v14, v5

    move-object/from16 v5, p6

    .line 159
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzl(I[BIILcom/google/android/gms/internal/ads/zzhit;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    :cond_4b
    :goto_2e
    move-object/from16 v21, v11

    goto :goto_2d

    :cond_4c
    move-object/from16 v12, p0

    move v9, v4

    move-object v14, v5

    move-object/from16 v21, v20

    goto/16 :goto_36

    :pswitch_17
    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v8, v3

    move-object v14, v5

    move-object/from16 v11, v20

    move/from16 v31, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_4f

    .line 160
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 161
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 162
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int/2addr v1, v0

    :goto_2f
    if-ge v0, v1, :cond_4d

    .line 163
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 164
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    goto :goto_2f

    :cond_4d
    if-ne v0, v1, :cond_4e

    goto :goto_2e

    .line 310
    :cond_4e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 311
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 312
    throw v0

    :cond_4f
    if-nez v1, :cond_58

    .line 165
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 166
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjg;

    .line 167
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 168
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    :goto_30
    if-ge v0, v9, :cond_4b

    .line 169
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_4b

    .line 170
    invoke-static {v15, v1, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-wide v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 171
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzhjg;->zzd(J)V

    goto :goto_30

    :pswitch_18
    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v8, v3

    move-object v14, v5

    move-object/from16 v11, v20

    move/from16 v31, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_53

    .line 172
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 173
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhhy;

    .line 174
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int v2, v0, v1

    .line 175
    array-length v3, v15

    if-gt v2, v3, :cond_52

    .line 176
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzhhy;->size()I

    move-result v3

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v3, v1

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzhhy;->zzi(I)V

    :goto_31
    if-ge v0, v2, :cond_50

    .line 177
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 178
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhhy;->zzg(F)V

    add-int/lit8 v0, v0, 0x4

    goto :goto_31

    :cond_50
    if-ne v0, v2, :cond_51

    goto/16 :goto_2e

    .line 312
    :cond_51
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 315
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 316
    throw v0

    .line 175
    :cond_52
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 313
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 314
    throw v0

    :cond_53
    const/4 v0, 0x5

    if-ne v1, v0, :cond_58

    add-int/lit8 v0, v8, 0x4

    .line 179
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 180
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhhy;

    .line 181
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    .line 182
    invoke-virtual {v13, v1}, Lcom/google/android/gms/internal/ads/zzhhy;->zzg(F)V

    :goto_32
    if-ge v0, v9, :cond_4b

    .line 183
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_4b

    .line 184
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    .line 185
    invoke-virtual {v13, v0}, Lcom/google/android/gms/internal/ads/zzhhy;->zzg(F)V

    add-int/lit8 v0, v1, 0x4

    goto :goto_32

    :pswitch_19
    move-object/from16 v12, p0

    move/from16 v9, p4

    move-object v7, v0

    move v8, v3

    move-object v14, v5

    move-object/from16 v11, v20

    move/from16 v31, v21

    const/4 v0, 0x2

    if-ne v1, v0, :cond_57

    .line 186
    sget v0, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 187
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhho;

    .line 188
    invoke-static {v15, v8, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    add-int v2, v0, v1

    .line 189
    array-length v3, v15

    if-gt v2, v3, :cond_56

    .line 190
    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzhho;->size()I

    move-result v3

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v3, v1

    invoke-virtual {v13, v3}, Lcom/google/android/gms/internal/ads/zzhho;->zzi(I)V

    :goto_33
    if-ge v0, v2, :cond_54

    .line 191
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    .line 192
    invoke-virtual {v13, v3, v4}, Lcom/google/android/gms/internal/ads/zzhho;->zzg(D)V

    add-int/lit8 v0, v0, 0x8

    goto :goto_33

    :cond_54
    if-ne v0, v2, :cond_55

    goto/16 :goto_2e

    .line 336
    :cond_55
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 319
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 320
    throw v0

    .line 189
    :cond_56
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 317
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 318
    throw v0

    :cond_57
    const/4 v0, 0x1

    if-ne v1, v0, :cond_58

    add-int/lit8 v0, v8, 0x8

    .line 193
    sget v1, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 194
    check-cast v13, Lcom/google/android/gms/internal/ads/zzhho;

    .line 195
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    .line 196
    invoke-virtual {v13, v1, v2}, Lcom/google/android/gms/internal/ads/zzhho;->zzg(D)V

    :goto_34
    if-ge v0, v9, :cond_4b

    .line 197
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v2, :cond_4b

    .line 198
    invoke-static {v15, v1}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 199
    invoke-virtual {v13, v2, v3}, Lcom/google/android/gms/internal/ads/zzhho;->zzg(D)V

    add-int/lit8 v0, v1, 0x8

    goto :goto_34

    :goto_35
    if-ge v0, v9, :cond_59

    .line 62
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v2

    iget v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ne v6, v1, :cond_59

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    move/from16 v3, p4

    move v4, v10

    move-object/from16 v5, p6

    .line 63
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzi(Lcom/google/android/gms/internal/ads/zzhkk;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget-object v1, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    .line 64
    invoke-interface {v13, v1}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_58
    move-object/from16 v21, v11

    :goto_36
    move/from16 v11, v31

    :goto_37
    move v0, v8

    :cond_59
    :goto_38
    if-eq v0, v8, :cond_5a

    move/from16 v13, p5

    move v3, v6

    move v2, v11

    move-object v6, v12

    move-object v11, v14

    move/from16 v4, v19

    move/from16 v1, v23

    move/from16 v5, v28

    move-object v12, v7

    move v14, v9

    move-object/from16 v7, p1

    goto/16 :goto_0

    :cond_5a
    move v2, v0

    move v9, v6

    move/from16 v31, v11

    move-object v10, v14

    move-object/from16 v20, v21

    move/from16 v8, v23

    move-object/from16 v11, p1

    move/from16 v6, p5

    move-object v14, v12

    goto/16 :goto_4c

    :cond_5b
    move v0, v3

    move-object v3, v5

    move/from16 v4, v23

    move-object/from16 v9, v26

    move/from16 v5, p4

    move/from16 v23, v11

    move/from16 v11, v21

    move-object/from16 v21, v20

    const/16 v7, 0x32

    if-ne v8, v7, :cond_67

    const/4 v7, 0x2

    if-ne v1, v7, :cond_66

    .line 200
    invoke-direct {v12, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    .line 201
    invoke-virtual {v3, v7, v13, v14}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 202
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjn;->zza(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 203
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhjm;->zza()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhjm;->zzc()Lcom/google/android/gms/internal/ads/zzhjm;

    move-result-object v4

    .line 204
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/zzhjn;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-virtual {v3, v7, v13, v14, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v2, v4

    .line 206
    :cond_5c
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object v9

    .line 207
    move-object v13, v2

    check-cast v13, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 208
    invoke-static {v15, v0, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v8, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-ltz v2, :cond_65

    sub-int v4, v5, v1

    if-gt v2, v4, :cond_65

    add-int v10, v1, v2

    .line 322
    iget-object v2, v9, Lcom/google/android/gms/internal/ads/zzhjk;->zzb:Ljava/lang/Object;

    iget-object v14, v9, Lcom/google/android/gms/internal/ads/zzhjk;->zzd:Ljava/lang/Object;

    move-object v4, v2

    move-object v2, v14

    :goto_39
    if-ge v1, v10, :cond_62

    move/from16 v20, v0

    add-int/lit8 v0, v1, 0x1

    .line 209
    aget-byte v1, v15, v1

    if-gez v1, :cond_5d

    .line 210
    invoke-static {v1, v15, v0, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zzb(I[BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    iget v1, v8, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    :cond_5d
    move/from16 p3, v0

    ushr-int/lit8 v0, v1, 0x3

    move-object/from16 v22, v2

    and-int/lit8 v2, v1, 0x7

    move-object/from16 v26, v3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_60

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5e

    move/from16 v3, p3

    move-object v7, v4

    move v12, v5

    move-object/from16 v2, v22

    move-object/from16 v32, v26

    move/from16 v33, v20

    move-object/from16 v20, v14

    move/from16 v14, v33

    goto/16 :goto_3b

    .line 216
    :cond_5e
    iget-object v3, v9, Lcom/google/android/gms/internal/ads/zzhjk;->zzc:Lcom/google/android/gms/internal/ads/zzhli;

    .line 211
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhli;->zzb()I

    move-result v0

    if-ne v2, v0, :cond_5f

    .line 212
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v22

    move/from16 v1, p3

    move/from16 v2, v20

    move-object/from16 v0, p2

    move-object/from16 v20, v14

    move v14, v2

    move/from16 v2, p4

    move-object/from16 v32, v26

    move-object v7, v4

    move-object/from16 v4, v22

    move v12, v5

    move-object/from16 v5, p6

    .line 213
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzT([BIILcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-object v2, v8, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    goto :goto_3c

    :cond_5f
    move/from16 v3, p3

    move-object v7, v4

    move v12, v5

    move-object/from16 v32, v26

    move/from16 v33, v20

    move-object/from16 v20, v14

    move/from16 v14, v33

    goto :goto_3a

    :cond_60
    move/from16 v3, p3

    move-object v7, v4

    move v12, v5

    move-object/from16 v32, v26

    move/from16 v33, v20

    move-object/from16 v20, v14

    move/from16 v14, v33

    iget-object v4, v9, Lcom/google/android/gms/internal/ads/zzhjk;->zza:Lcom/google/android/gms/internal/ads/zzhli;

    .line 214
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzhli;->zzb()I

    move-result v0

    if-ne v2, v0, :cond_61

    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v3

    move-object/from16 v7, v22

    move/from16 v2, p4

    move-object v3, v4

    move-object v4, v5

    move-object/from16 v5, p6

    .line 215
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzT([BIILcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-object v4, v8, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    move-object v2, v7

    goto :goto_3d

    :cond_61
    :goto_3a
    move-object/from16 v2, v22

    .line 216
    :goto_3b
    invoke-static {v1, v15, v3, v12, v8}, Lcom/google/android/gms/internal/ads/zzhgq;->zzp(I[BIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    :goto_3c
    move-object v4, v7

    :goto_3d
    move v5, v12

    move v0, v14

    move-object/from16 v14, v20

    move-object/from16 v3, v32

    move-object/from16 v12, p0

    move-object/from16 v7, p1

    goto/16 :goto_39

    :cond_62
    move v14, v0

    move-object/from16 v32, v3

    move-object v7, v4

    move v12, v5

    if-ne v1, v10, :cond_64

    .line 217
    invoke-interface {v13, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v10, v14, :cond_63

    move-object/from16 v7, p1

    move/from16 v13, p5

    move v3, v6

    move v0, v10

    move v2, v11

    move v14, v12

    move/from16 v4, v19

    move/from16 v1, v23

    move/from16 v5, v28

    move-object/from16 v11, v32

    move-object/from16 v6, p0

    move-object v12, v8

    goto/16 :goto_0

    :cond_63
    move-object/from16 v14, p0

    move v9, v6

    move-object v7, v8

    move v2, v10

    move/from16 v31, v11

    move-object/from16 v20, v21

    move/from16 v8, v23

    move-object/from16 v10, v32

    goto :goto_3f

    .line 215
    :cond_64
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    move-object/from16 v3, v21

    .line 323
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 324
    throw v0

    .line 208
    :cond_65
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 321
    invoke-direct {v0, v10}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 322
    throw v0

    :cond_66
    move-object/from16 v8, p6

    move v14, v0

    move-object/from16 v32, v3

    move v12, v5

    move-object/from16 v3, v21

    :goto_3e
    move-object/from16 v20, v3

    move v9, v6

    move-object v7, v8

    move/from16 v31, v11

    move v2, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p0

    :goto_3f
    move-object/from16 v11, p1

    move/from16 v6, p5

    goto/16 :goto_4c

    :cond_67
    move-object/from16 v7, p6

    move-object/from16 v32, v3

    move-wide v12, v13

    move-object/from16 v3, v21

    move v14, v0

    add-int/lit8 v0, v11, 0x2

    .line 218
    aget v0, v22, v0

    const v5, 0xfffff

    and-int/2addr v0, v5

    move/from16 v21, v6

    int-to-long v5, v0

    packed-switch v8, :pswitch_data_2

    move-object/from16 v20, v3

    :goto_40
    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    goto/16 :goto_4a

    :pswitch_1a
    const/4 v0, 0x3

    if-ne v1, v0, :cond_68

    and-int/lit8 v0, v21, -0x8

    or-int/lit8 v13, v0, 0x4

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move/from16 v2, p4

    move/from16 v1, v23

    .line 219
    invoke-direct {v0, v4, v1, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v5

    .line 220
    invoke-direct {v0, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v9

    move-object v8, v5

    move-object/from16 v10, p2

    move-object v6, v3

    move v3, v11

    move v11, v14

    move/from16 v12, p4

    move v2, v14

    move-object/from16 v14, p6

    .line 221
    invoke-static/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzhgq;->zzk(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v8

    .line 222
    invoke-direct {v0, v4, v1, v3, v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move-object v14, v0

    move v0, v2

    move/from16 v31, v3

    move-object v11, v4

    move-object/from16 v20, v6

    move-object/from16 v10, v32

    move/from16 v33, v8

    move v8, v1

    move/from16 v1, v33

    goto/16 :goto_4b

    :cond_68
    move-object v6, v3

    move-object/from16 v20, v6

    goto :goto_40

    :pswitch_1b
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object v10, v3

    move v3, v11

    move v2, v14

    move/from16 v8, v23

    if-nez v1, :cond_69

    .line 223
    invoke-static {v15, v2, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    move-object/from16 v20, v10

    iget-wide v9, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 224
    invoke-static {v9, v10}, Lcom/google/android/gms/internal/ads/zzhhg;->zzL(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object/from16 v10, v32

    invoke-virtual {v10, v4, v12, v13, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 225
    invoke-virtual {v10, v4, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_41

    :cond_69
    move-object/from16 v20, v10

    move-object/from16 v10, v32

    goto/16 :goto_43

    :pswitch_1c
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v3

    move v3, v11

    move v2, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    if-nez v1, :cond_6c

    .line 226
    invoke-static {v15, v2, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 227
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzhhg;->zzK(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v4, v12, v13, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 228
    invoke-virtual {v10, v4, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_41
    move-object v14, v0

    move v0, v2

    move/from16 v31, v3

    goto/16 :goto_45

    :pswitch_1d
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v3

    move v3, v11

    move v2, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    if-nez v1, :cond_6c

    .line 229
    invoke-static {v15, v2, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 230
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzs(I)Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v11

    if-eqz v11, :cond_6b

    .line 231
    invoke-interface {v11, v9}, Lcom/google/android/gms/internal/ads/zzhin;->zza(I)Z

    move-result v11

    if-eqz v11, :cond_6a

    goto :goto_42

    .line 234
    :cond_6a
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v5

    int-to-long v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move/from16 v11, v21

    invoke-virtual {v5, v11, v6}, Lcom/google/android/gms/internal/ads/zzhkw;->zzk(ILjava/lang/Object;)V

    goto :goto_44

    :cond_6b
    :goto_42
    move/from16 v11, v21

    .line 232
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v10, v4, v12, v13, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 233
    invoke-virtual {v10, v4, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_44

    :cond_6c
    :goto_43
    move-object v14, v0

    move v0, v2

    move/from16 v31, v3

    goto :goto_46

    :pswitch_1e
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v3

    move v3, v11

    move v2, v14

    move/from16 v11, v21

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v9, 0x2

    if-ne v1, v9, :cond_6d

    .line 235
    invoke-static {v15, v2, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzg([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzc:Ljava/lang/Object;

    .line 236
    invoke-virtual {v10, v4, v12, v13, v9}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 237
    invoke-virtual {v10, v4, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :goto_44
    move-object v14, v0

    move v0, v2

    move/from16 v31, v3

    move/from16 v21, v11

    :goto_45
    move-object v11, v4

    goto/16 :goto_4b

    :cond_6d
    move-object v14, v0

    move v0, v2

    move/from16 v31, v3

    move/from16 v21, v11

    :goto_46
    move-object v11, v4

    goto/16 :goto_4a

    :pswitch_1f
    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v20, v3

    move v3, v11

    move v2, v14

    move/from16 v11, v21

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v9, 0x2

    if-ne v1, v9, :cond_6e

    .line 238
    invoke-direct {v0, v4, v8, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzv(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v6

    .line 239
    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    move-object v14, v0

    move-object v0, v6

    move/from16 v9, p4

    move v12, v2

    move-object/from16 v2, p2

    move v13, v3

    move v3, v12

    move-object v5, v4

    move/from16 v4, p4

    move/from16 v21, v11

    move-object v11, v5

    move-object/from16 v5, p6

    .line 240
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzj(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkk;[BIILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    .line 241
    invoke-direct {v14, v11, v8, v13, v6}, Lcom/google/android/gms/internal/ads/zzhjv;->zzw(Ljava/lang/Object;IILjava/lang/Object;)V

    move v1, v0

    move v0, v12

    move/from16 v31, v13

    goto/16 :goto_4b

    :cond_6e
    move/from16 v9, p4

    move-object v14, v0

    move/from16 v21, v11

    move-object v11, v4

    move v0, v2

    move/from16 v31, v3

    goto/16 :goto_4a

    :pswitch_20
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v3, 0x2

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-ne v1, v3, :cond_73

    .line 242
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    if-nez v3, :cond_6f

    .line 243
    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_48

    :cond_6f
    add-int v2, v1, v3

    const/high16 v22, 0x20000000

    and-int v4, v4, v22

    if-eqz v4, :cond_71

    .line 244
    invoke-static {v15, v1, v2}, Lcom/google/android/gms/internal/ads/zzhlh;->zza([BII)Z

    move-result v4

    if-eqz v4, :cond_70

    goto :goto_47

    .line 5
    :cond_70
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 325
    invoke-direct {v0, v9}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 326
    throw v0

    .line 244
    :cond_71
    :goto_47
    new-instance v4, Ljava/lang/String;

    .line 245
    sget-object v9, Lcom/google/android/gms/internal/ads/zzhiu;->zza:Ljava/nio/charset/Charset;

    invoke-direct {v4, v15, v1, v3, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 246
    invoke-virtual {v10, v11, v12, v13, v4}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move v1, v2

    .line 247
    :goto_48
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_21
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-nez v1, :cond_73

    .line 248
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    cmp-long v2, v2, v24

    if-eqz v2, :cond_72

    const/4 v9, 0x1

    goto :goto_49

    :cond_72
    move/from16 v9, v16

    .line 249
    :goto_49
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 250
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_22
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v2, 0x5

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-ne v1, v2, :cond_73

    add-int/lit8 v1, v0, 0x4

    .line 251
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 252
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_23
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v2, 0x1

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-ne v1, v2, :cond_73

    add-int/lit8 v1, v0, 0x8

    .line 253
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 254
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_24
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-nez v1, :cond_73

    .line 255
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zza([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zza:I

    .line 256
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 257
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_4b

    :pswitch_25
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-nez v1, :cond_73

    .line 258
    invoke-static {v15, v0, v7}, Lcom/google/android/gms/internal/ads/zzhgq;->zzc([BILcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v1

    iget-wide v2, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzb:J

    .line 259
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 260
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_26
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v2, 0x5

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-ne v1, v2, :cond_73

    add-int/lit8 v1, v0, 0x4

    .line 261
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zzd([BI)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    .line 262
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 263
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :pswitch_27
    move-object/from16 v20, v3

    move/from16 v31, v11

    move v0, v14

    move/from16 v8, v23

    move-object/from16 v10, v32

    const/4 v2, 0x1

    move-object/from16 v14, p0

    move-object/from16 v11, p1

    if-ne v1, v2, :cond_73

    add-int/lit8 v1, v0, 0x8

    .line 264
    invoke-static {v15, v0}, Lcom/google/android/gms/internal/ads/zzhgq;->zze([BI)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v2

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v10, v11, v12, v13, v2}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 266
    invoke-virtual {v10, v11, v5, v6, v8}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    goto :goto_4b

    :cond_73
    :goto_4a
    move v1, v0

    :goto_4b
    if-eq v1, v0, :cond_74

    move/from16 v13, p5

    move v0, v1

    move-object v12, v7

    move v1, v8

    move-object v7, v11

    move-object v6, v14

    move/from16 v4, v19

    move/from16 v3, v21

    move/from16 v5, v28

    move/from16 v2, v31

    move/from16 v14, p4

    goto/16 :goto_4e

    :cond_74
    move/from16 v6, p5

    move v2, v1

    move/from16 v9, v21

    :goto_4c
    if-ne v9, v6, :cond_75

    if-eqz v6, :cond_75

    move/from16 v12, p4

    move v7, v2

    move/from16 v4, v19

    move/from16 v5, v28

    goto/16 :goto_4f

    .line 334
    :cond_75
    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_77

    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzhgp;->zzd:Lcom/google/android/gms/internal/ads/zzhhr;

    .line 267
    sget v1, Lcom/google/android/gms/internal/ads/zzhhr;->zzb:I

    .line 268
    sget v1, Lcom/google/android/gms/internal/ads/zzhgo;->zza:I

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhhr;->zza:Lcom/google/android/gms/internal/ads/zzhhr;

    if-eq v0, v1, :cond_77

    iget-object v1, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzg:Lcom/google/android/gms/internal/ads/zzhjs;

    .line 271
    sget v3, Lcom/google/android/gms/internal/ads/zzhgq;->zza:I

    .line 272
    invoke-virtual {v0, v1, v8}, Lcom/google/android/gms/internal/ads/zzhhr;->zzc(Lcom/google/android/gms/internal/ads/zzhjs;I)Lcom/google/android/gms/internal/ads/zzhif;

    move-result-object v0

    if-nez v0, :cond_76

    .line 273
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v12, p4

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 274
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzo(I[BIILcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    goto :goto_4d

    .line 335
    :cond_76
    move-object v0, v11

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhid;

    .line 336
    throw v17

    :cond_77
    move/from16 v12, p4

    .line 269
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzh(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzhkw;

    move-result-object v4

    move v0, v9

    move-object/from16 v1, p2

    move/from16 v3, p4

    move-object/from16 v5, p6

    .line 270
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhgq;->zzo(I[BIILcom/google/android/gms/internal/ads/zzhkw;Lcom/google/android/gms/internal/ads/zzhgp;)I

    move-result v0

    :goto_4d
    move v13, v6

    move v1, v8

    move v3, v9

    move-object v6, v14

    move/from16 v4, v19

    move/from16 v5, v28

    move/from16 v2, v31

    move v14, v12

    move-object v12, v7

    move-object v7, v11

    :goto_4e
    move-object v11, v10

    goto/16 :goto_0

    :cond_78
    move/from16 v19, v4

    move/from16 v28, v5

    move-object/from16 v20, v8

    move-object v10, v11

    move v12, v14

    move-object v14, v6

    move-object v11, v7

    move v6, v13

    move v7, v0

    move v9, v3

    :goto_4f
    const v0, 0xfffff

    if-eq v5, v0, :cond_79

    int-to-long v0, v5

    .line 327
    invoke-virtual {v10, v11, v0, v1, v4}, Lsun/misc/Unsafe;->putInt(Ljava/lang/Object;JI)V

    :cond_79
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    move v8, v0

    move-object/from16 v3, v17

    :goto_50
    iget v0, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzl:I

    if-ge v8, v0, :cond_7a

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    iget-object v4, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    .line 328
    aget v2, v0, v8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, p1

    .line 329
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzx(Ljava/lang/Object;ILjava/lang/Object;Lcom/google/android/gms/internal/ads/zzhkv;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhkw;

    add-int/lit8 v8, v8, 0x1

    goto :goto_50

    :cond_7a
    if-eqz v3, :cond_7b

    iget-object v0, v14, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    .line 330
    invoke-virtual {v0, v11, v3}, Lcom/google/android/gms/internal/ads/zzhkv;->zzi(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_7b
    if-nez v6, :cond_7d

    if-ne v7, v12, :cond_7c

    goto :goto_51

    :cond_7c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    move-object/from16 v1, v20

    .line 331
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 332
    throw v0

    :cond_7d
    move-object/from16 v1, v20

    if-gt v7, v12, :cond_7e

    if-ne v9, v6, :cond_7e

    :goto_51
    return v7

    :cond_7e
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhiw;

    .line 333
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhiw;-><init>(Ljava/lang/String;)V

    .line 334
    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_16
        :pswitch_f
        :pswitch_14
        :pswitch_15
        :pswitch_e
        :pswitch_d
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_24
        :pswitch_1d
        :pswitch_22
        :pswitch_23
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
    .end packed-switch
.end method

.method public final zzj(Ljava/lang/Object;[BIILcom/google/android/gms/internal/ads/zzhgp;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhjv;->zzi(Ljava/lang/Object;[BIIILcom/google/android/gms/internal/ads/zzhgp;)I

    return-void
.end method

.method public final zzk(Ljava/lang/Object;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzE(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhih;

    if-eqz v0, :cond_1

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhih;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbq()V

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbb()V

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzaY()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 6
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v2

    const v3, 0xfffff

    and-int/2addr v3, v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v2

    int-to-long v3, v3

    const/16 v5, 0x9

    if-eq v2, v5, :cond_3

    const/16 v5, 0x3c

    if-eq v2, v5, :cond_2

    const/16 v5, 0x44

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 11
    :pswitch_0
    sget-object v2, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    .line 12
    invoke-virtual {v2, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 13
    move-object v6, v5

    check-cast v6, Lcom/google/android/gms/internal/ads/zzhjm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzhjm;->zzd()V

    .line 14
    invoke-virtual {v2, p1, v3, v4, v5}, Lsun/misc/Unsafe;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .line 7
    :pswitch_1
    invoke-static {p1, v3, v4}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzhit;

    .line 8
    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzhit;->zzb()V

    goto :goto_1

    .line 9
    :cond_2
    aget v2, v0, v1

    .line 10
    invoke-direct {p0, p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 11
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzk(Ljava/lang/Object;)V

    goto :goto_1

    .line 15
    :cond_3
    :pswitch_2
    invoke-direct {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzN(Ljava/lang/Object;I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 16
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v2

    sget-object v5, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    invoke-virtual {v5, p1, v3, v4}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzk(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzm:Lcom/google/android/gms/internal/ads/zzhkv;

    .line 17
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhkv;->zzj(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhjv;->zzn:Lcom/google/android/gms/internal/ads/zzhhs;

    .line 18
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhhs;->zza(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzl(Ljava/lang/Object;)Z
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    const/4 v8, 0x0

    const v9, 0xfffff

    move v1, v8

    move v10, v1

    move v0, v9

    .line 1
    :goto_0
    iget v2, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzk:I

    const/4 v3, 0x1

    if-ge v10, v2, :cond_c

    iget-object v2, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzj:[I

    iget-object v4, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzc:[I

    aget v11, v2, v10

    .line 2
    aget v12, v4, v11

    .line 3
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzA(I)I

    move-result v13

    add-int/lit8 v2, v11, 0x2

    .line 4
    aget v2, v4, v2

    and-int v4, v2, v9

    ushr-int/lit8 v2, v2, 0x14

    shl-int v14, v3, v2

    if-eq v4, v0, :cond_1

    if-eq v4, v9, :cond_0

    int-to-long v0, v4

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhjv;->zzb:Lsun/misc/Unsafe;

    .line 5
    invoke-virtual {v2, v7, v0, v1}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v1

    :cond_0
    move/from16 v16, v1

    move v15, v4

    goto :goto_1

    :cond_1
    move v15, v0

    move/from16 v16, v1

    :goto_1
    const/high16 v0, 0x10000000

    and-int/2addr v0, v13

    if-eqz v0, :cond_3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    return v8

    :cond_3
    :goto_2
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzhjv;->zzC(I)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_a

    const/16 v1, 0x11

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1b

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_7

    const/16 v1, 0x44

    if-eq v0, v1, :cond_7

    const/16 v1, 0x31

    if-eq v0, v1, :cond_8

    const/16 v1, 0x32

    if-eq v0, v1, :cond_4

    goto/16 :goto_4

    :cond_4
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 13
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/ads/zzhjm;

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 16
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzr(I)Ljava/lang/Object;

    move-result-object v1

    .line 17
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjl;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjl;->zze()Lcom/google/android/gms/internal/ads/zzhjk;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzhjk;->zzc:Lcom/google/android/gms/internal/ads/zzhli;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhli;->zza()Lcom/google/android/gms/internal/ads/zzhlj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlj;->zzi:Lcom/google/android/gms/internal/ads/zzhlj;

    if-ne v1, v2, :cond_b

    .line 19
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_6

    .line 20
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkc;->zza()Lcom/google/android/gms/internal/ads/zzhkc;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhkc;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    .line 21
    :cond_6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzhkk;->zzl(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v8

    .line 22
    :cond_7
    invoke-direct {v6, v7, v12, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzP(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 23
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkk;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_8
    and-int v0, v13, v9

    int-to-long v0, v0

    .line 7
    invoke-static {v7, v0, v1}, Lcom/google/android/gms/internal/ads/zzhlc;->zzn(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 9
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v1

    move v2, v8

    .line 10
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 12
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzhkk;->zzl(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    return v8

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v15

    move/from16 v4, v16

    move v5, v14

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzhjv;->zzM(Ljava/lang/Object;IIII)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    invoke-direct {v6, v11}, Lcom/google/android/gms/internal/ads/zzhjv;->zzq(I)Lcom/google/android/gms/internal/ads/zzhkk;

    move-result-object v0

    invoke-static {v7, v13, v0}, Lcom/google/android/gms/internal/ads/zzhjv;->zzy(Ljava/lang/Object;ILcom/google/android/gms/internal/ads/zzhkk;)Z

    move-result v0

    if-nez v0, :cond_b

    return v8

    :cond_b
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move v0, v15

    move/from16 v1, v16

    goto/16 :goto_0

    :cond_c
    iget-boolean v0, v6, Lcom/google/android/gms/internal/ads/zzhjv;->zzh:Z

    if-eqz v0, :cond_d

    .line 26
    move-object v0, v7

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhid;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhid;->zza:Lcom/google/android/gms/internal/ads/zzhhw;

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhhw;->zze()Z

    move-result v0

    if-nez v0, :cond_d

    return v8

    :cond_d
    return v3
.end method
