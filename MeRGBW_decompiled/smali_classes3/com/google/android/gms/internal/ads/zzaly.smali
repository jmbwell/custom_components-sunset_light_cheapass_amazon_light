.class public final Lcom/google/android/gms/internal/ads/zzaly;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacu;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzalz;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzef;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzee;

.field private zze:Lcom/google/android/gms/internal/ads/zzacx;

.field private zzf:J

.field private zzg:J

.field private zzh:Z

.field private zzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/google/android/gms/internal/ads/zzalx;->zza:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzalz;

    const/4 v0, 0x0

    const-string v1, "audio/mp4a-latm"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    invoke-direct {p1, v2, v3, v0, v1}, Lcom/google/android/gms/internal/ads/zzalz;-><init>(ZLjava/lang/String;ILjava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzalz;

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzef;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzb:Lcom/google/android/gms/internal/ads/zzef;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0xa

    .line 4
    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzef;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzc:Lcom/google/android/gms/internal/ads/zzef;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object p1

    .line 5
    array-length v1, p1

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzee;-><init>([BI)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzd:Lcom/google/android/gms/internal/ads/zzee;

    return-void
.end method


# virtual methods
.method public final zzd(Lcom/google/android/gms/internal/ads/zzacv;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzc:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v3

    move-object v4, p1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzacl;

    const/16 v5, 0xa

    .line 1
    invoke-virtual {v4, v3, v0, v5, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzh([BIIZ)Z

    .line 2
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 3
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzx()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_6

    .line 7
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzl()V

    .line 8
    invoke-virtual {v4, v1, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzj(IZ)Z

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    int-to-long v5, v1

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzg:J

    :cond_0
    move v3, v0

    move v6, v3

    move v5, v1

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v7

    const/4 v8, 0x2

    .line 9
    invoke-virtual {v4, v7, v0, v8, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzh([BIIZ)Z

    .line 10
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 11
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v7

    .line 12
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzalz;->zzf(I)Z

    move-result v7

    if-nez v7, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 13
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzl()V

    .line 14
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzj(IZ)Z

    :goto_1
    move v3, v0

    move v6, v3

    goto :goto_3

    :cond_2
    const/4 v7, 0x1

    add-int/2addr v3, v7

    const/4 v8, 0x4

    if-lt v3, v8, :cond_4

    const/16 v9, 0xbc

    if-gt v6, v9, :cond_3

    goto :goto_2

    :cond_3
    return v7

    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v7

    .line 15
    invoke-virtual {v4, v7, v0, v8, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzh([BIIZ)Z

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzd:Lcom/google/android/gms/internal/ads/zzee;

    const/16 v8, 0xe

    .line 16
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzf(I)V

    const/16 v8, 0xd

    .line 17
    invoke-virtual {v7, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v7

    const/4 v8, 0x6

    if-gt v7, v8, :cond_5

    add-int/lit8 v5, v5, 0x1

    .line 18
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacv;->zzl()V

    .line 19
    invoke-virtual {v4, v5, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzj(IZ)Z

    goto :goto_1

    :cond_5
    add-int/lit8 v8, v7, -0x6

    .line 20
    invoke-virtual {v4, v8, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzj(IZ)Z

    add-int/2addr v6, v7

    :goto_3
    sub-int v7, v5, v1

    const/16 v8, 0x2000

    if-lt v7, v8, :cond_1

    return v0

    :cond_6
    const/4 v3, 0x3

    .line 4
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 5
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzG()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 6
    invoke-virtual {v4, v2, v0}, Lcom/google/android/gms/internal/ads/zzacl;->zzj(IZ)Z

    goto/16 :goto_0
.end method

.method public synthetic zze()Ljava/util/List;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacu$-CC;->$default$zze(Lcom/google/android/gms/internal/ads/zzacu;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzacx;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zze:Lcom/google/android/gms/internal/ads/zzacx;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanr;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzanr;-><init>(III)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzalz;

    .line 2
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzalz;->zzb(Lcom/google/android/gms/internal/ads/zzacx;Lcom/google/android/gms/internal/ads/zzanr;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzacx;->zzv()V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzacv;Lcom/google/android/gms/internal/ads/zzads;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zze:Lcom/google/android/gms/internal/ads/zzacx;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzb:Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v0

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzacv;->zza([BII)I

    move-result p1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaly;->zze:Lcom/google/android/gms/internal/ads/zzacx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzadu;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    .line 2
    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzadu;-><init>(JJ)V

    .line 3
    invoke-interface {v0, v3}, Lcom/google/android/gms/internal/ads/zzacx;->zzw(Lcom/google/android/gms/internal/ads/zzadv;)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzi:Z

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 5
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzf(I)V

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzalz;

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzf:J

    const/4 v0, 0x4

    .line 6
    invoke-virtual {p1, v3, v4, v0}, Lcom/google/android/gms/internal/ads/zzalz;->zzc(JI)V

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:Z

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzalz;

    .line 7
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzalz;->zzd(Lcom/google/android/gms/internal/ads/zzef;)V

    return v2
.end method

.method public final zzh(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzh:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaly;->zza:Lcom/google/android/gms/internal/ads/zzalz;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzalz;->zza()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaly;->zzf:J

    return-void
.end method

.method public synthetic zzi()Lcom/google/android/gms/internal/ads/zzacu;
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzacu$-CC;->$default$zzi(Lcom/google/android/gms/internal/ads/zzacu;)Lcom/google/android/gms/internal/ads/zzacu;

    move-result-object v0

    return-object v0
.end method
