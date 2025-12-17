.class public final Lcom/google/android/gms/internal/ads/zzcds;
.super Lcom/google/android/gms/internal/ads/zzcau;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgy;
.implements Lcom/google/android/gms/internal/ads/zzmg;


# static fields
.field public static final synthetic zza:I


# instance fields
.field private final zzb:Landroid/content/Context;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzcdc;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzyd;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcbc;

.field private final zzf:Ljava/lang/ref/WeakReference;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzvw;

.field private zzh:Lcom/google/android/gms/internal/ads/zzik;

.field private zzi:Ljava/nio/ByteBuffer;

.field private zzj:Z

.field private zzk:Lcom/google/android/gms/internal/ads/zzcat;

.field private zzl:I

.field private zzm:I

.field private zzn:J

.field private final zzo:Ljava/lang/String;

.field private final zzp:I

.field private final zzq:Ljava/lang/Object;

.field private zzr:Ljava/lang/Integer;

.field private final zzs:Ljava/util/ArrayList;

.field private volatile zzt:Lcom/google/android/gms/internal/ads/zzcdf;

.field private final zzu:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcbc;Lcom/google/android/gms/internal/ads/zzcbd;Ljava/lang/Integer;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcau;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzq:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzu:Ljava/util/Set;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzb:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzr:Ljava/lang/Integer;

    new-instance p4, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzf:Ljava/lang/ref/WeakReference;

    new-instance p4, Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-direct {p4}, Lcom/google/android/gms/internal/ads/zzcdc;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzc:Lcom/google/android/gms/internal/ads/zzcdc;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzyd;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzyd;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzd:Lcom/google/android/gms/internal/ads/zzyd;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SimpleExoPlayerAdapter initialize "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zzf()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    .line 6
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    new-instance v1, Lcom/google/android/gms/internal/ads/zzlu;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcdn;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzcdn;-><init>(Lcom/google/android/gms/internal/ads/zzcds;)V

    .line 7
    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzlu;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzlq;)V

    .line 8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzlu;->zza(Lcom/google/android/gms/internal/ads/zzym;)Lcom/google/android/gms/internal/ads/zzlu;

    .line 9
    invoke-virtual {v1, p4}, Lcom/google/android/gms/internal/ads/zzlu;->zzb(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzlu;

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzlu;->zzc()Lcom/google/android/gms/internal/ads/zzlv;

    move-result-object p4

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    .line 11
    invoke-interface {p4, p0}, Lcom/google/android/gms/internal/ads/zzik;->zzB(Lcom/google/android/gms/internal/ads/zzmg;)V

    const/4 p4, 0x0

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzn:J

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzm:I

    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzs:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    if-eqz p3, :cond_1

    .line 13
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcbd;->zzn()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgha;->zzd(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgha;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgha;->zza(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzo:Ljava/lang/String;

    if-eqz p3, :cond_2

    .line 15
    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcbd;->zzp()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, p4

    :goto_0
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzp:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvw;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzt;->zzc()Lcom/google/android/gms/ads/internal/util/zzs;

    move-result-object v1

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzcbd;->zzs()Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    move-result-object p3

    iget-object p3, p3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    invoke-virtual {v1, p1, p3}, Lcom/google/android/gms/ads/internal/util/zzs;->zze(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzj:Z

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    .line 17
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->limit()I

    move-result p3

    if-lez p3, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    .line 27
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    .line 28
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcdh;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzcdh;-><init>([B)V

    goto/16 :goto_3

    .line 18
    :cond_3
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzcl:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 20
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v1, 0x1

    if-eqz p3, :cond_4

    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzcd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 19
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 20
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_5

    :cond_4
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzi:Z

    if-nez p3, :cond_6

    :cond_5
    move p4, v1

    .line 21
    :cond_6
    iget-boolean p3, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzl:Z

    if-eqz p3, :cond_7

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdi;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcdi;-><init>(Lcom/google/android/gms/internal/ads/zzcds;Ljava/lang/String;Z)V

    goto :goto_1

    .line 22
    :cond_7
    iget p3, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzh:I

    if-lez p3, :cond_8

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdk;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcdk;-><init>(Lcom/google/android/gms/internal/ads/zzcds;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_8
    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdj;

    invoke-direct {p3, p0, p1, p4}, Lcom/google/android/gms/internal/ads/zzcdj;-><init>(Lcom/google/android/gms/internal/ads/zzcds;Ljava/lang/String;Z)V

    .line 23
    :goto_1
    iget-boolean p1, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzi:Z

    if-eqz p1, :cond_9

    new-instance p1, Lcom/google/android/gms/internal/ads/zzcdl;

    invoke-direct {p1, p0, p3}, Lcom/google/android/gms/internal/ads/zzcdl;-><init>(Lcom/google/android/gms/internal/ads/zzcds;Lcom/google/android/gms/internal/ads/zzfz;)V

    move-object p2, p1

    goto :goto_2

    :cond_9
    move-object p2, p3

    :goto_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    if-eqz p1, :cond_a

    .line 24
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    if-lez p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    new-array p1, p1, [B

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {p3, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzcdm;

    invoke-direct {p3, p2, p1}, Lcom/google/android/gms/internal/ads/zzcdm;-><init>(Lcom/google/android/gms/internal/ads/zzfz;[B)V

    move-object p2, p3

    .line 29
    :cond_a
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzn:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 30
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 31
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcdp;->zza:Lcom/google/android/gms/internal/ads/zzcdp;

    goto :goto_4

    :cond_b
    sget-object p1, Lcom/google/android/gms/internal/ads/zzcdo;->zza:Lcom/google/android/gms/internal/ads/zzcdo;

    :goto_4
    invoke-direct {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzvw;-><init>(Lcom/google/android/gms/internal/ads/zzfz;Lcom/google/android/gms/internal/ads/zzada;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzg:Lcom/google/android/gms/internal/ads/zzvw;

    return-void
.end method

.method private final zzY()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final finalize()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zzf()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zze;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SimpleExoPlayerAdapter finalize "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final zzA(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcdb;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/zzcdb;->zzk(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzB()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzC()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzg()I

    move-result v0

    return v0
.end method

.method public final zzD()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzE(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzi(Z)V

    return-void
.end method

.method public final zzF(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzc:Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdc;->zzj(I)V

    return-void
.end method

.method public final zzG(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzc:Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdc;->zzl(I)V

    return-void
.end method

.method public final zzH()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzr()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzI()J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcds;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzJ()J
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcds;->zzY()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcdf;->zzo()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final zzK()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcds;->zzY()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzq:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzs:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzn:J

    const/4 v4, 0x0

    .line 4
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzgt;->zzj()Ljava/util/Map;

    move-result-object v1

    const-wide/16 v5, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v7, :cond_0

    .line 6
    :try_start_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    const-string v8, "content-length"

    .line 7
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzggj;->zze(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 8
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 9
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    add-long/2addr v2, v5

    :try_start_2
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzn:J

    goto :goto_0

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzn:J

    return-wide v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcdf;->zzp()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzm:I

    return v0
.end method

.method public final zzM(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzik;->zzD()I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzd:Lcom/google/android/gms/internal/ads/zzyd;

    .line 2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzyd;->zzc()Lcom/google/android/gms/internal/ads/zzxo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzxo;->zzd()Lcom/google/android/gms/internal/ads/zzxn;

    move-result-object v2

    xor-int/lit8 v3, p1, 0x1

    .line 3
    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzxn;->zzy(IZ)Lcom/google/android/gms/internal/ads/zzxn;

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzyd;->zzf(Lcom/google/android/gms/internal/ads/zzxn;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zzN()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzO()J
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    int-to-long v0, v0

    return-wide v0
.end method

.method final zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzur;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzy;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzy;->zzb(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzy;->zzc()Lcom/google/android/gms/internal/ads/zzaj;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzg:Lcom/google/android/gms/internal/ads/zzvw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    .line 2
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzcbc;->zzf:I

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzvw;->zza(I)Lcom/google/android/gms/internal/ads/zzvw;

    .line 4
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzvw;->zzb(Lcom/google/android/gms/internal/ads/zzaj;)Lcom/google/android/gms/internal/ads/zzvx;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzS(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzga;
    .locals 10

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzcdv;

    iget v3, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzd:I

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zze:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzm:J

    iget-wide v7, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzn:J

    move-object v0, v9

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/internal/ads/zzcdv;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgy;IIJJ)V

    return-object v9
.end method

.method final synthetic zzT(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzga;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgh;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgh;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgh;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgh;

    const/4 p1, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    move-object p2, p0

    .line 3
    :goto_0
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgh;->zzf(Lcom/google/android/gms/internal/ads/zzgy;)Lcom/google/android/gms/internal/ads/zzgh;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzd:I

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzc(I)Lcom/google/android/gms/internal/ads/zzgh;

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zze:I

    .line 5
    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzgh;->zzd(I)Lcom/google/android/gms/internal/ads/zzgh;

    .line 6
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzgh;->zze(Z)Lcom/google/android/gms/internal/ads/zzgh;

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgh;->zzg()Lcom/google/android/gms/internal/ads/zzgl;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzU(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzga;
    .locals 7

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    const/4 p2, 0x0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p0

    .line 1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcdb;

    .line 2
    iget v3, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzd:I

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zze:I

    iget v5, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzh:I

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcdb;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzgy;III)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 3
    invoke-direct {p1, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzu:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method final synthetic zzV(Lcom/google/android/gms/internal/ads/zzfz;)Lcom/google/android/gms/internal/ads/zzga;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/android/gms/internal/ads/zzcdf;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzfz;->zza()Lcom/google/android/gms/internal/ads/zzga;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcdq;

    invoke-direct {v6, p0}, Lcom/google/android/gms/internal/ads/zzcdq;-><init>(Lcom/google/android/gms/internal/ads/zzcds;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzo:Ljava/lang/String;

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzp:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzb:Landroid/content/Context;

    move-object v0, v7

    move-object v5, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzcdf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzga;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzgy;Lcom/google/android/gms/internal/ads/zzcdd;)V

    return-object v7
.end method

.method final synthetic zzW(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabm;Lcom/google/android/gms/internal/ads/zzpv;Lcom/google/android/gms/internal/ads/zzwt;Lcom/google/android/gms/internal/ads/zztn;)[Lcom/google/android/gms/internal/ads/zzll;
    .locals 9

    .line 1
    new-instance p4, Lcom/google/android/gms/internal/ads/zzrg;

    sget-object p5, Lcom/google/android/gms/internal/ads/zztb;->zzb:Lcom/google/android/gms/internal/ads/zztb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqk;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzb:Landroid/content/Context;

    .line 2
    invoke-direct {v0, v8}, Lcom/google/android/gms/internal/ads/zzqk;-><init>(Landroid/content/Context;)V

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzqk;->zza()Lcom/google/android/gms/internal/ads/zzrc;

    move-result-object v7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsi;

    const/4 v0, 0x0

    invoke-direct {v2, v8, v0, v0}, Lcom/google/android/gms/internal/ads/zzsi;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzght;Lcom/google/android/gms/internal/ads/zzght;)V

    const/4 v4, 0x0

    move-object v0, p4

    move-object v1, v8

    move-object v3, p5

    move-object v5, p1

    move-object v6, p3

    .line 4
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzrg;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzso;Lcom/google/android/gms/internal/ads/zztb;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpv;Lcom/google/android/gms/internal/ads/zzqc;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzaac;

    invoke-direct {p3, v8}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/ads/zzaac;->zza(Lcom/google/android/gms/internal/ads/zztb;)Lcom/google/android/gms/internal/ads/zzaac;

    .line 6
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/zzaac;->zzb(Landroid/os/Handler;)Lcom/google/android/gms/internal/ads/zzaac;

    .line 7
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzaac;->zzc(Lcom/google/android/gms/internal/ads/zzabm;)Lcom/google/android/gms/internal/ads/zzaac;

    .line 8
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzaac;->zzd()Lcom/google/android/gms/internal/ads/zzaae;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzll;

    const/4 p3, 0x0

    aput-object p4, p2, p3

    const/4 p3, 0x1

    aput-object p1, p2, p3

    return-object p2
.end method

.method final synthetic zzX(ZJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcat;->zzr(ZJ)V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzge;Z)V
    .locals 0

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzge;Z)V
    .locals 1

    .line 1
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzgt;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzq:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzs:Ljava/util/ArrayList;

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgt;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzcdf;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcdf;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzf:Ljava/lang/ref/WeakReference;

    .line 5
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 6
    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzcd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 8
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcdf;->zzk()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/util/HashMap;

    .line 9
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 10
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcdf;->zzm()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheHit"

    .line 11
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzt:Lcom/google/android/gms/internal/ads/zzcdf;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzcdf;->zzn()Z

    move-result p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "gcacheDownloaded"

    .line 13
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    sget-object p3, Lcom/google/android/gms/ads/internal/util/zzs;->zza:Lcom/google/android/gms/internal/ads/zzfro;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcdr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcdr;-><init>(Lcom/google/android/gms/internal/ads/zzcbd;Ljava/util/Map;)V

    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/ads/zzfro;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzge;ZI)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    add-int/2addr p1, p4

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzl:I

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzga;Lcom/google/android/gms/internal/ads/zzge;Z)V
    .locals 0

    return-void
.end method

.method public synthetic zzdj(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzaz;Lcom/google/android/gms/internal/ads/zzaz;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzmg$-CC;->$default$zzdj(Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzaz;Lcom/google/android/gms/internal/ads/zzaz;I)V

    return-void
.end method

.method public synthetic zzdk(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzul;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmg$-CC;->$default$zzdk(Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzul;)V

    return-void
.end method

.method public synthetic zzdl(Lcom/google/android/gms/internal/ads/zzme;IJJ)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/google/android/gms/internal/ads/zzmg$-CC;->$default$zzdl(Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzme;IJJ)V

    return-void
.end method

.method public synthetic zzdm(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzhr;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmg$-CC;->$default$zzdm(Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzhr;)V

    return-void
.end method

.method public synthetic zzdn(Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzmf;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmg$-CC;->$default$zzdn(Lcom/google/android/gms/internal/ads/zzmg;Lcom/google/android/gms/internal/ads/zzba;Lcom/google/android/gms/internal/ads/zzmf;)V

    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzme;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzs(I)V

    :cond_0
    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzat;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz p1, :cond_0

    const-string v0, "onPlayerError"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public final zzh(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzug;Lcom/google/android/gms/internal/ads/zzul;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zze:Lcom/google/android/gms/internal/ads/zzcbc;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzcbc;->zzj:Z

    if-eqz p2, :cond_0

    const-string p2, "onLoadException"

    .line 2
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcat;->zzv(Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_0
    const-string p2, "onLoadError"

    .line 3
    invoke-interface {p1, p2, p4}, Lcom/google/android/gms/internal/ads/zzcat;->zzu(Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    return-void
.end method

.method public final zzj()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzr:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzk(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzhs;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzcd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    new-instance p3, Ljava/util/HashMap;

    .line 4
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "audioMime"

    .line 5
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "audioSampleMime"

    .line 6
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzu;->zzk:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "audioCodec"

    .line 7
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    .line 8
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcbd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzu;Lcom/google/android/gms/internal/ads/zzhs;)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzf:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcbd;

    .line 2
    sget-object p3, Lcom/google/android/gms/internal/ads/zzbci;->zzcd:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/ads/zzbcg;->zzd(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p3

    .line 2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    new-instance p3, Ljava/util/HashMap;

    .line 4
    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzz:F

    const-string v1, "frameRate"

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzj:I

    const-string v1, "bitRate"

    .line 6
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzv:I

    iget v1, p2, Lcom/google/android/gms/internal/ads/zzu;->zzw:I

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resolution"

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzn:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "videoMime"

    .line 8
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "videoSampleMime"

    .line 9
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzu;->zzk:Ljava/lang/String;

    if-eqz p2, :cond_2

    const-string v0, "videoCodec"

    .line 10
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const-string p2, "onMetadataEvent"

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcbd;->zze(Ljava/lang/String;Ljava/util/Map;)V

    :cond_3
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzme;IJ)V
    .locals 0

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzm:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzm:I

    return-void
.end method

.method public final zzn(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzr:Ljava/lang/Integer;

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzme;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcat;->zzD()V

    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzme;Lcom/google/android/gms/internal/ads/zzbu;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    if-eqz p1, :cond_0

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbu;->zzb:I

    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbu;->zzc:I

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzcat;->zzt(II)V

    :cond_0
    return-void
.end method

.method public final zzq([Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method public final zzr([Landroid/net/Uri;Ljava/lang/String;Ljava/nio/ByteBuffer;Z)V
    .locals 1

    .line 4
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz p2, :cond_2

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzi:Ljava/nio/ByteBuffer;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzj:Z

    array-length p2, p1

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-ne p2, p3, :cond_0

    aget-object p1, p1, p4

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzcds;->zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_0
    new-array p2, p2, [Lcom/google/android/gms/internal/ads/zzur;

    move p3, p4

    :goto_0
    array-length v0, p1

    if-ge p3, v0, :cond_1

    .line 1
    aget-object v0, p1, p3

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzcds;->zzR(Landroid/net/Uri;)Lcom/google/android/gms/internal/ads/zzur;

    move-result-object v0

    aput-object v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2
    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzvg;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzua;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzua;-><init>()V

    .line 3
    invoke-direct {p1, p4, p4, p3, p2}, Lcom/google/android/gms/internal/ads/zzvg;-><init>(ZZLcom/google/android/gms/internal/ads/zzua;[Lcom/google/android/gms/internal/ads/zzur;)V

    .line 4
    :goto_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    .line 5
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzE(Lcom/google/android/gms/internal/ads/zzur;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzik;->zzf()V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zzi()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_2
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzcat;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzk:Lcom/google/android/gms/internal/ads/zzcat;

    return-void
.end method

.method public final zzt()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzik;->zzC(Lcom/google/android/gms/internal/ads/zzmg;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzF()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcds;->zzi()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_0
    return-void
.end method

.method public final zzu(Landroid/view/Surface;Z)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzA(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public final zzv(FZ)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzik;->zzz(F)V

    :cond_0
    return-void
.end method

.method public final zzw()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzik;->zzm()V

    return-void
.end method

.method public final zzx(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzh:Lcom/google/android/gms/internal/ads/zzik;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzik;->zza(J)V

    return-void
.end method

.method public final zzy(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzc:Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdc;->zzm(I)V

    return-void
.end method

.method public final zzz(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcds;->zzc:Lcom/google/android/gms/internal/ads/zzcdc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcdc;->zzn(I)V

    return-void
.end method
