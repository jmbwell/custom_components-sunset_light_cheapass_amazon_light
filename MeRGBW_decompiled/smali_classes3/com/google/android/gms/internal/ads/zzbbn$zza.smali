.class public final Lcom/google/android/gms/internal/ads/zzbbn$zza;
.super Lcom/google/android/gms/internal/ads/zzhih;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzhih<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zza;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzf;"
    }
.end annotation


# static fields
.field private static final zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

.field private static volatile zzC:Lcom/google/android/gms/internal/ads/zzhka; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhka<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zza;",
            ">;"
        }
    .end annotation
.end field

.field public static final zza:I = 0x7

.field public static final zzb:I = 0x8

.field public static final zzc:I = 0x9

.field public static final zzd:I = 0xa

.field public static final zze:I = 0xb

.field public static final zzf:I = 0xc

.field public static final zzg:I = 0xd

.field public static final zzh:I = 0xe

.field public static final zzi:I = 0xf

.field public static final zzj:I = 0x10

.field public static final zzk:I = 0x11


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzhit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhit<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzat;",
            ">;"
        }
    .end annotation
.end field

.field private zzl:I

.field private zzm:I

.field private zzn:I

.field private zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

.field private zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

.field private zzu:Lcom/google/android/gms/internal/ads/zzhit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzhit<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;"
        }
    .end annotation
.end field

.field private zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

.field private zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

.field private zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

.field private zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

.field private zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    const-class v1, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    .line 2
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhih;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzhih;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzn:I

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzbM()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzbM()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    return-void
.end method

.method public static zzA(Lcom/google/android/gms/internal/ads/zzhhg;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbZ(Lcom/google/android/gms/internal/ads/zzhih;Lcom/google/android/gms/internal/ads/zzhhg;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzB()Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbn()Lcom/google/android/gms/internal/ads/zzhib;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;

    return-object v0
.end method

.method public static zzC(Lcom/google/android/gms/internal/ads/zzbbn$zza;)Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;

    return-object p0
.end method

.method public static zzD()Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object v0
.end method

.method public static zzE()Lcom/google/android/gms/internal/ads/zzhka;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzhka<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zza;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbd()Lcom/google/android/gms/internal/ads/zzhka;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzaD()Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object v0
.end method

.method private zzaE(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzm:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzaF()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzm:I

    return-void
.end method

.method private zzaG(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzn:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzaH()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzn:I

    return-void
.end method

.method private zzaI(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzaJ(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzz()Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzy(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzaK()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzaL(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcA(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzz;->zzA()Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzz;->zzz(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)Lcom/google/android/gms/internal/ads/zzbbn$zzz$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzz$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcB()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcC()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhit;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbN(Lcom/google/android/gms/internal/ads/zzhit;)Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    :cond_0
    return-void
.end method

.method private zzcD(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhit;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzcE(Lcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzcF(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhit;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzcG(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzat;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzcH()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzbM()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    return-void
.end method

.method private zzcI(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcC()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzce(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzi;->zzD()Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzi;->zzC(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzi$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x8

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcf()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcg()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhit;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbN(Lcom/google/android/gms/internal/ads/zzhit;)Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    :cond_0
    return-void
.end method

.method private zzch(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhit;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private zzci(Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private zzcj(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 3
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhit;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private zzck(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 2
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzhgk;->zzaW(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private zzcl()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzbM()Lcom/google/android/gms/internal/ads/zzhit;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    return-void
.end method

.method private zzcm(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcg()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    .line 2
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private zzcn(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzco(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzk;->zzB()Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzk;->zzA(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)Lcom/google/android/gms/internal/ads/zzbbn$zzk$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzk$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x10

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcp()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcq(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcr(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzah;->zzE()Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzah;->zzB(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)Lcom/google/android/gms/internal/ads/zzbbn$zzah$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzah$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcs()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzct(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcu(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzac;->zzs()Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzac;->zzr(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)Lcom/google/android/gms/internal/ads/zzbbn$zzac$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzac$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit8 p1, p1, 0x40

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcv()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcw(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcx(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzt()Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzs(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzhib;->zzbo(Lcom/google/android/gms/internal/ads/zzhih;)Lcom/google/android/gms/internal/ads/zzhib;

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhib;->zzbl()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method private zzcz(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    or-int/lit16 p1, p1, 0x100

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    return-void
.end method

.method public static zzk(Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbR(Lcom/google/android/gms/internal/ads/zzhih;Ljava/nio/ByteBuffer;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzl(Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbQ(Lcom/google/android/gms/internal/ads/zzhih;Ljava/nio/ByteBuffer;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzm(Lcom/google/android/gms/internal/ads/zzhhb;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbS(Lcom/google/android/gms/internal/ads/zzhih;Lcom/google/android/gms/internal/ads/zzhhb;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzn(Lcom/google/android/gms/internal/ads/zzhhb;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbT(Lcom/google/android/gms/internal/ads/zzhih;Lcom/google/android/gms/internal/ads/zzhhb;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzq([B)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbU(Lcom/google/android/gms/internal/ads/zzhih;[B)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzr([BLcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhiw;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbV(Lcom/google/android/gms/internal/ads/zzhih;[BLcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzs(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbW(Lcom/google/android/gms/internal/ads/zzhih;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzt(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzhih;->zzbX(Lcom/google/android/gms/internal/ads/zzhih;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzx(Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzca(Lcom/google/android/gms/internal/ads/zzhih;Ljava/io/InputStream;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzy(Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcb(Lcom/google/android/gms/internal/ads/zzhih;Ljava/io/InputStream;Lcom/google/android/gms/internal/ads/zzhhr;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method

.method public static zzz(Lcom/google/android/gms/internal/ads/zzhhg;)Lcom/google/android/gms/internal/ads/zzbbn$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzhih;->zzbY(Lcom/google/android/gms/internal/ads/zzhih;Lcom/google/android/gms/internal/ads/zzhhg;)Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p0
.end method


# virtual methods
.method final synthetic zzF(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaE(Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;)V

    return-void
.end method

.method public zzG()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzH()Lcom/google/android/gms/internal/ads/zzbbn$zzk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzv:Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzk;->zzB()Lcom/google/android/gms/internal/ads/zzbbn$zzk;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzI()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaF()V

    return-void
.end method

.method final synthetic zzJ(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaG(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V

    return-void
.end method

.method final synthetic zzK()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaH()V

    return-void
.end method

.method final synthetic zzL(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaI(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V

    return-void
.end method

.method public zzM()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzN()Lcom/google/android/gms/internal/ads/zzbbn$zzah;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzw:Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzah;->zzE()Lcom/google/android/gms/internal/ads/zzbbn$zzah;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzO(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaJ(Lcom/google/android/gms/internal/ads/zzbbn$zzg;)V

    return-void
.end method

.method final synthetic zzP()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaK()V

    return-void
.end method

.method final synthetic zzQ(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzaL(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V

    return-void
.end method

.method final synthetic zzR(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzce(Lcom/google/android/gms/internal/ads/zzbbn$zzi;)V

    return-void
.end method

.method public zzS()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzT()Lcom/google/android/gms/internal/ads/zzbbn$zzac;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzx:Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzac;->zzs()Lcom/google/android/gms/internal/ads/zzbbn$zzac;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzU()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcf()V

    return-void
.end method

.method final synthetic zzV(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzch(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method final synthetic zzW(Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzci(Lcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method final synthetic zzX(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcj(ILcom/google/android/gms/internal/ads/zzbbn$zzd;)V

    return-void
.end method

.method public zzY()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzZ()Lcom/google/android/gms/internal/ads/zzbbn$zzx;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzy:Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzt()Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public zza()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final synthetic zzaA(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcG(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzaB()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcH()V

    return-void
.end method

.method final synthetic zzaC(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcI(I)V

    return-void
.end method

.method final synthetic zzaa(Ljava/lang/Iterable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzck(Ljava/lang/Iterable;)V

    return-void
.end method

.method final synthetic zzab()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcl()V

    return-void
.end method

.method final synthetic zzac(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcm(I)V

    return-void
.end method

.method final synthetic zzad(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcn(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V

    return-void
.end method

.method public zzae()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzaf()Lcom/google/android/gms/internal/ads/zzbbn$zzz;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzz:Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzz;->zzA()Lcom/google/android/gms/internal/ads/zzbbn$zzz;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method final synthetic zzag(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzco(Lcom/google/android/gms/internal/ads/zzbbn$zzk;)V

    return-void
.end method

.method final synthetic zzah()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcp()V

    return-void
.end method

.method final synthetic zzai(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcq(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V

    return-void
.end method

.method final synthetic zzaj(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcr(Lcom/google/android/gms/internal/ads/zzbbn$zzah;)V

    return-void
.end method

.method public zzak()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzat;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    return-object v0
.end method

.method public zzal()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v0

    return v0
.end method

.method public zzam(I)Lcom/google/android/gms/internal/ads/zzbbn$zzat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzat;

    return-object p1
.end method

.method final synthetic zzan()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcs()V

    return-void
.end method

.method final synthetic zzao(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzct(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V

    return-void
.end method

.method final synthetic zzap(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcu(Lcom/google/android/gms/internal/ads/zzbbn$zzac;)V

    return-void
.end method

.method final synthetic zzaq()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcv()V

    return-void
.end method

.method final synthetic zzar(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcw(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V

    return-void
.end method

.method final synthetic zzas(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcx(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V

    return-void
.end method

.method final synthetic zzat()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcy()V

    return-void
.end method

.method final synthetic zzau(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcz(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V

    return-void
.end method

.method final synthetic zzav(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcA(Lcom/google/android/gms/internal/ads/zzbbn$zzz;)V

    return-void
.end method

.method final synthetic zzaw()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcB()V

    return-void
.end method

.method final synthetic zzax(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcD(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V

    return-void
.end method

.method final synthetic zzay(Lcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcE(Lcom/google/android/gms/internal/ads/zzbbn$zzat;)V

    return-void
.end method

.method final synthetic zzaz(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzcF(ILcom/google/android/gms/internal/ads/zzbbn$zzat;)V

    return-void
.end method

.method public zzb()Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzm:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zzc(I)Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zza:Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;

    :cond_0
    return-object v0
.end method

.method public zzc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zze;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    return-object v0
.end method

.method public zzd(I)Lcom/google/android/gms/internal/ads/zzbbn$zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zze;

    return-object p1
.end method

.method protected final zzdh(Lcom/google/android/gms/internal/ads/zzhig;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

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

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzC:Lcom/google/android/gms/internal/ads/zzhka;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzC:Lcom/google/android/gms/internal/ads/zzhka;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhic;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzhic;-><init>(Lcom/google/android/gms/internal/ads/zzhih;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzC:Lcom/google/android/gms/internal/ads/zzhka;

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

    .line 10
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    return-object p1

    .line 7
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;

    .line 8
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zza$zzb;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;

    .line 9
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbbn$zza;-><init>()V

    return-object p1

    .line 5
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zza$zza;->zze()Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zze()Lcom/google/android/gms/internal/ads/zzhin;

    move-result-object v4

    const/16 v5, 0x10

    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "zzl"

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const-string v6, "zzm"

    aput-object v6, v5, p2

    aput-object p1, v5, v3

    const-string p1, "zzn"

    aput-object p1, v5, v2

    aput-object v4, v5, v1

    const-string p1, "zzo"

    aput-object p1, v5, v0

    const-string p1, "zzp"

    aput-object p1, v5, p3

    const-string p1, "zzu"

    const/4 p2, 0x7

    aput-object p1, v5, p2

    const-class p1, Lcom/google/android/gms/internal/ads/zzbbn$zzd;

    const/16 p2, 0x8

    aput-object p1, v5, p2

    const-string p1, "zzv"

    const/16 p2, 0x9

    aput-object p1, v5, p2

    const-string p1, "zzw"

    const/16 p2, 0xa

    aput-object p1, v5, p2

    const-string p1, "zzx"

    const/16 p2, 0xb

    aput-object p1, v5, p2

    const-string p1, "zzy"

    const/16 p2, 0xc

    aput-object p1, v5, p2

    const-string p1, "zzz"

    const/16 p2, 0xd

    aput-object p1, v5, p2

    const-string p1, "zzA"

    const/16 p2, 0xe

    aput-object p1, v5, p2

    const-class p1, Lcom/google/android/gms/internal/ads/zzbbn$zzat;

    const/16 p2, 0xf

    aput-object p1, v5, p2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzB:Lcom/google/android/gms/internal/ads/zzbbn$zza;

    const-string p2, "\u0004\u000b\u0000\u0001\u0007\u0011\u000b\u0000\u0002\u0000\u0007\u180c\u0000\u0008\u180c\u0001\t\u1009\u0002\n\u1009\u0003\u000b\u001b\u000c\u1009\u0004\r\u1009\u0005\u000e\u1009\u0006\u000f\u1009\u0007\u0010\u1009\u0008\u0011\u001b"

    .line 7
    invoke-static {p1, p2, v5}, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzbv(Lcom/google/android/gms/internal/ads/zzhjs;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public zze()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzn:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzc(I)Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbbn$zzq;->zzc:Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    :cond_0
    return-object v0
.end method

.method public zzg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzbi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    return-object v0
.end method

.method public zzh(I)Lcom/google/android/gms/internal/ads/zzbbn$zzbi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzA:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzbi;

    return-object p1
.end method

.method public zzi()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzj()Lcom/google/android/gms/internal/ads/zzbbn$zzg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzo:Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzg;->zzz()Lcom/google/android/gms/internal/ads/zzbbn$zzg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public zzo()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzl:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public zzp()Lcom/google/android/gms/internal/ads/zzbbn$zzi;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzp:Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzi;->zzD()Lcom/google/android/gms/internal/ads/zzbbn$zzi;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public zzu()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzd;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    return-object v0
.end method

.method public zzv()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhit;->size()I

    move-result v0

    return v0
.end method

.method public zzw(I)Lcom/google/android/gms/internal/ads/zzbbn$zzd;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zza;->zzu:Lcom/google/android/gms/internal/ads/zzhit;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzhit;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbbn$zzd;

    return-object p1
.end method
