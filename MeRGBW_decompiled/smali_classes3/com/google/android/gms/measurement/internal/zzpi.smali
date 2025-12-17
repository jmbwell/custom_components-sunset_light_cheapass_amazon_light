.class final Lcom/google/android/gms/measurement/internal/zzpi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# instance fields
.field private zza:J

.field private zzb:Lcom/google/android/gms/internal/measurement/zzib;

.field private zzc:Ljava/lang/String;

.field private zzd:Ljava/util/Map;

.field private zze:Lcom/google/android/gms/measurement/internal/zzls;

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/measurement/internal/zzpj;
    .locals 17

    move-object/from16 v0, p0

    new-instance v16, Lcom/google/android/gms/measurement/internal/zzpj;

    iget-wide v2, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zza:J

    iget-object v4, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    iget-object v5, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzc:Ljava/lang/String;

    iget-object v6, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzd:Ljava/util/Map;

    iget-object v7, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    iget-wide v8, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzf:J

    iget-wide v10, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzg:J

    iget-wide v12, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzh:J

    iget v14, v0, Lcom/google/android/gms/measurement/internal/zzpi;->zzi:I

    const/4 v15, 0x0

    move-object/from16 v1, v16

    invoke-direct/range {v1 .. v15}, Lcom/google/android/gms/measurement/internal/zzpj;-><init>(JLcom/google/android/gms/internal/measurement/zzib;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/measurement/internal/zzls;JJJI[B)V

    return-object v16
.end method

.method public final zzb(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zza:J

    return-object p0
.end method

.method public final zzc(Lcom/google/android/gms/internal/measurement/zzib;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzb:Lcom/google/android/gms/internal/measurement/zzib;

    return-object p0
.end method

.method public final zzd(Ljava/lang/String;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzc:Ljava/lang/String;

    return-object p0
.end method

.method public final zze(Ljava/util/Map;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzd:Ljava/util/Map;

    return-object p0
.end method

.method public final zzf(Lcom/google/android/gms/measurement/internal/zzls;)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zze:Lcom/google/android/gms/measurement/internal/zzls;

    return-object p0
.end method

.method public final zzg(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzf:J

    return-object p0
.end method

.method public final zzh(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzg:J

    return-object p0
.end method

.method public final zzi(J)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput-wide p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzh:J

    return-object p0
.end method

.method public final zzj(I)Lcom/google/android/gms/measurement/internal/zzpi;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/measurement/internal/zzpi;->zzi:I

    return-object p0
.end method
