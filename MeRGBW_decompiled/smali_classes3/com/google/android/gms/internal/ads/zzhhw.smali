.class final Lcom/google/android/gms/internal/ads/zzhhw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.6.0"


# static fields
.field private static final zzd:Lcom/google/android/gms/internal/ads/zzhhw;


# instance fields
.field final zza:Lcom/google/android/gms/internal/ads/zzhkr;

.field zzb:Z

.field zzc:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhw;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhw;-><init>(Z)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhhw;->zzd:Lcom/google/android/gms/internal/ads/zzhhw;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhkn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhkn;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhkn;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhhw;->zzb()V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhhw;->zzb()V

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzhhw;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhhw;->zzd:Lcom/google/android/gms/internal/ads/zzhhw;

    return-object v0
.end method

.method static zzf(Lcom/google/android/gms/internal/ads/zzhhm;Lcom/google/android/gms/internal/ads/zzhli;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhli;->zzj:Lcom/google/android/gms/internal/ads/zzhli;

    if-eq p1, v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhli;->zzb()I

    move-result v0

    .line 3
    invoke-virtual {p0, p2, v0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzJ(II)V

    .line 4
    sget-object p2, Lcom/google/android/gms/internal/ads/zzhlj;->zza:Lcom/google/android/gms/internal/ads/zzhlj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhli;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    return-void

    .line 9
    :pswitch_0
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    add-long v0, p1, p1

    const/16 p3, 0x3f

    shr-long/2addr p1, p3

    xor-long/2addr p1, v0

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzu(J)V

    return-void

    .line 11
    :pswitch_1
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int p2, p1, p1

    shr-int/lit8 p1, p1, 0x1f

    xor-int/2addr p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzs(I)V

    return-void

    .line 13
    :pswitch_2
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzv(J)V

    return-void

    .line 15
    :pswitch_3
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 16
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzt(I)V

    return-void

    .line 4
    :pswitch_4
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzhil;

    if-eqz p1, :cond_0

    .line 5
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhil;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzhil;->zza()I

    move-result p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzr(I)V

    return-void

    .line 7
    :cond_0
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzr(I)V

    return-void

    .line 17
    :pswitch_5
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzs(I)V

    return-void

    .line 22
    :pswitch_6
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz p1, :cond_1

    .line 18
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzl(Lcom/google/android/gms/internal/ads/zzhhb;)V

    return-void

    .line 19
    :cond_1
    check-cast p3, [B

    .line 20
    array-length p1, p3

    const/4 p2, 0x0

    invoke-virtual {p0, p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzm([BII)V

    return-void

    .line 23
    :pswitch_7
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhjs;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzp(Lcom/google/android/gms/internal/ads/zzhjs;)V

    return-void

    .line 24
    :pswitch_8
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 25
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zzdc(Lcom/google/android/gms/internal/ads/zzhhm;)V

    return-void

    .line 17
    :pswitch_9
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz p1, :cond_2

    .line 21
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhhb;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzl(Lcom/google/android/gms/internal/ads/zzhhb;)V

    return-void

    .line 22
    :cond_2
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzx(Ljava/lang/String;)V

    return-void

    .line 26
    :pswitch_a
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 27
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzq(B)V

    return-void

    .line 28
    :pswitch_b
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzt(I)V

    return-void

    .line 29
    :pswitch_c
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzv(J)V

    return-void

    .line 30
    :pswitch_d
    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzr(I)V

    return-void

    .line 31
    :pswitch_e
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzu(J)V

    return-void

    .line 32
    :pswitch_f
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzu(J)V

    return-void

    .line 34
    :pswitch_10
    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 35
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzt(I)V

    return-void

    .line 36
    :pswitch_11
    check-cast p3, Ljava/lang/Double;

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    .line 37
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzv(J)V

    return-void

    .line 38
    :cond_3
    check-cast p3, Lcom/google/android/gms/internal/ads/zzhjs;

    const/4 p1, 0x3

    .line 39
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzJ(II)V

    .line 40
    invoke-interface {p3, p0}, Lcom/google/android/gms/internal/ads/zzhjs;->zzdc(Lcom/google/android/gms/internal/ads/zzhhm;)V

    const/4 p1, 0x4

    .line 41
    invoke-virtual {p0, p2, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzJ(II)V

    return-void

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

.method static zzh(Lcom/google/android/gms/internal/ads/zzhli;ILjava/lang/Object;)I
    .locals 1

    shl-int/lit8 p1, p1, 0x3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhli;->zzj:Lcom/google/android/gms/internal/ads/zzhli;

    if-ne p0, v0, :cond_0

    add-int/2addr p1, p1

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/zzhhw;->zzi(Lcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static zzi(Lcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Object;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzhli;->zza:Lcom/google/android/gms/internal/ads/zzhli;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhlj;->zza:Lcom/google/android/gms/internal/ads/zzhlj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhli;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    .line 36
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    .line 38
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6
    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    .line 7
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 8
    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    .line 9
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v1

    .line 11
    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v0

    .line 1
    :pswitch_4
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzhil;

    if-eqz p0, :cond_0

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhil;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhil;->zza()I

    move-result p0

    int-to-long p0, p0

    .line 3
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 4
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 5
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 12
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    return p0

    .line 26
    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz p0, :cond_1

    .line 13
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhb;

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result p0

    .line 15
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    .line 16
    :cond_1
    check-cast p1, [B

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    .line 17
    array-length p0, p1

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    goto :goto_0

    .line 12
    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzhjb;

    if-eqz p0, :cond_2

    .line 23
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjb;

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb()I

    move-result p0

    .line 25
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    goto :goto_0

    .line 26
    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjs;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzD(Lcom/google/android/gms/internal/ads/zzhjs;)I

    move-result p0

    return p0

    .line 27
    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhjs;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhjs;->zzbr()I

    move-result p0

    return p0

    .line 18
    :pswitch_9
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-eqz p0, :cond_3

    .line 19
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhb;

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhhb;->zzc()I

    move-result p0

    .line 21
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    goto :goto_0

    .line 22
    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzC(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 28
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    const/4 p0, 0x1

    return p0

    .line 29
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v0

    .line 30
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v1

    .line 31
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    .line 32
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 33
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 34
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    .line 35
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzB(J)I

    move-result p0

    return p0

    .line 36
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v0

    .line 37
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    sget p0, Lcom/google/android/gms/internal/ads/zzhhm;->zzf:I

    return v1

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

.method public static zzj(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzb()Lcom/google/android/gms/internal/ads/zzhli;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zza()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzd()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 6
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zze()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    move p0, v3

    :goto_0
    if-ge v3, v2, :cond_0

    .line 10
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 11
    invoke-static {v0, v4}, Lcom/google/android/gms/internal/ads/zzhhw;->zzi(Lcom/google/android/gms/internal/ads/zzhli;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v1, 0x3

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p1

    add-int/2addr p1, p0

    .line 13
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_1
    return v3

    :cond_2
    move p0, v3

    :goto_1
    if-ge v3, v2, :cond_3

    .line 7
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 8
    invoke-static {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzhhw;->zzh(Lcom/google/android/gms/internal/ads/zzhli;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    .line 14
    :cond_4
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhhw;->zzh(Lcom/google/android/gms/internal/ads/zzhli;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static zzk(Ljava/util/Map$Entry;)Z
    .locals 4

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhhv;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzc()Lcom/google/android/gms/internal/ads/zzhlj;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhlj;->zzi:Lcom/google/android/gms/internal/ads/zzhlj;

    if-ne v1, v2, :cond_2

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 7
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhw;->zzl(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhw;->zzl(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private static zzl(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhjt;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhjt;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhjt;->zzbi()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p0, Lcom/google/android/gms/internal/ads/zzhjb;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    .line 2
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final zzm(Ljava/util/Map$Entry;)I
    .locals 5

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhhv;

    .line 2
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzc()Lcom/google/android/gms/internal/ads/zzhlj;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhlj;->zzi:Lcom/google/android/gms/internal/ads/zzhlj;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhhv;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzhjb;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    .line 7
    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjb;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zza()I

    move-result p0

    .line 8
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 9
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v3

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 11
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    .line 12
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhjc;->zzb()I

    move-result v1

    .line 13
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v2

    add-int/2addr v2, v1

    add-int/2addr p0, v2

    :goto_0
    add-int/2addr v0, v3

    add-int/2addr v0, p0

    return v0

    .line 14
    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhjs;

    .line 15
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v0

    add-int/2addr v0, v0

    .line 16
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result v3

    .line 17
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 18
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzhhm;->zzA(I)I

    move-result p0

    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhm;->zzD(Lcom/google/android/gms/internal/ads/zzhjs;)I

    move-result v1

    add-int/2addr p0, v1

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzhhw;->zzj(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private static final zzn(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzb()Lcom/google/android/gms/internal/ads/zzhli;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhiu;->zzb:[B

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzhli;->zza:Lcom/google/android/gms/internal/ads/zzhli;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlj;->zza:Lcom/google/android/gms/internal/ads/zzhlj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhli;->zza()Lcom/google/android/gms/internal/ads/zzhlj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhlj;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 4
    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhjs;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhjb;

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhil;

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhhb;

    if-nez v0, :cond_0

    .line 5
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6
    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    .line 7
    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    .line 8
    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    .line 9
    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    .line 10
    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    .line 11
    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    return-void

    .line 3
    :cond_1
    :goto_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 13
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhhv;->zzb()Lcom/google/android/gms/internal/ads/zzhli;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhli;->zza()Lcom/google/android/gms/internal/ads/zzhlj;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 15
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhhw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhhw;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzhkr;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhko;

    .line 3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhko;->zza()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Lcom/google/android/gms/internal/ads/zzhhw;->zzd(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhkr;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzhhv;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/internal/ads/zzhhw;->zzd(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zzc:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzhhw;->zzc:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhhw;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhhw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    .line 2
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhkr;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->hashCode()I

    move-result v0

    return v0
.end method

.method public final zzb()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zzb:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v3

    .line 2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzhih;

    if-eqz v4, :cond_1

    .line 3
    check-cast v3, Lcom/google/android/gms/internal/ads/zzhih;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhih;->zzbm()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zze()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/google/android/gms/internal/ads/zzhih;

    if-eqz v3, :cond_3

    .line 6
    check-cast v2, Lcom/google/android/gms/internal/ads/zzhih;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhih;->zzbm()V

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zzb:Z

    return-void
.end method

.method public final zzc()Ljava/util/Iterator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zzc:Z

    if-eqz v1, :cond_1

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhja;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/zzhja;-><init>(Ljava/util/Iterator;)V

    return-object v1

    .line 4
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhhv;->zzd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Ljava/util/List;

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 7
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 8
    invoke-static {p1, v3}, Lcom/google/android/gms/internal/ads/zzhhw;->zzn(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V

    .line 9
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    .line 3
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_2
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzhhw;->zzn(Lcom/google/android/gms/internal/ads/zzhhv;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzhjb;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zzc:Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzf(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zze()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzhkr;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhw;->zzk(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhw;->zzk(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public final zzg()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhhw;->zza:Lcom/google/android/gms/internal/ads/zzhkr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzd(I)Ljava/util/Map$Entry;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhhw;->zzm(Ljava/util/Map$Entry;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhkr;->zze()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhhw;->zzm(Ljava/util/Map$Entry;)I

    move-result v1

    add-int/2addr v3, v1

    goto :goto_1

    :cond_1
    return v3
.end method
