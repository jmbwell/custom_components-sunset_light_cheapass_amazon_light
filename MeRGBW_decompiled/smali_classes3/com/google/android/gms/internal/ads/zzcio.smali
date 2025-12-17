.class final Lcom/google/android/gms/internal/ads/zzcio;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcpo;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcih;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfaf;

.field private zzc:Lcom/google/android/gms/internal/ads/zzezj;

.field private zzd:Lcom/google/android/gms/internal/ads/zzdbs;

.field private zze:Lcom/google/android/gms/internal/ads/zzcvb;

.field private zzf:Lcom/google/android/gms/internal/ads/zzejp;

.field private zzg:Lcom/google/android/gms/internal/ads/zzcqk;

.field private zzh:Lcom/google/android/gms/internal/ads/zzeht;

.field private zzi:Lcom/google/android/gms/internal/ads/zzcoh;

.field private zzj:Lcom/google/android/gms/internal/ads/zzdgy;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcih;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcpp;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzd:Lcom/google/android/gms/internal/ads/zzdbs;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdbs;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcvb;

    .line 2
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Lcom/google/android/gms/internal/ads/zzejp;

    const-class v2, Lcom/google/android/gms/internal/ads/zzejp;

    .line 3
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Lcom/google/android/gms/internal/ads/zzcqk;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcqk;

    .line 4
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Lcom/google/android/gms/internal/ads/zzeht;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzehv;->zza()Lcom/google/android/gms/internal/ads/zzeht;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Lcom/google/android/gms/internal/ads/zzeht;

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzcoh;

    const-class v2, Lcom/google/android/gms/internal/ads/zzcoh;

    .line 5
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzj:Lcom/google/android/gms/internal/ads/zzdgy;

    const-class v2, Lcom/google/android/gms/internal/ads/zzdgy;

    .line 6
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzhqf;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzcio;->zza:Lcom/google/android/gms/internal/ads/zzcih;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcip;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzcoh;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzj:Lcom/google/android/gms/internal/ads/zzdgy;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzcry;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/zzcry;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfei;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfei;-><init>()V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzctz;

    invoke-direct {v9}, Lcom/google/android/gms/internal/ads/zzctz;-><init>()V

    new-instance v10, Lcom/google/android/gms/internal/ads/zzdtb;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzdtb;-><init>()V

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzd:Lcom/google/android/gms/internal/ads/zzdbs;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Lcom/google/android/gms/internal/ads/zzeht;

    iget-object v14, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Lcom/google/android/gms/internal/ads/zzejp;

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Lcom/google/android/gms/internal/ads/zzcqk;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzb:Lcom/google/android/gms/internal/ads/zzfaf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzcio;->zzc:Lcom/google/android/gms/internal/ads/zzezj;

    const/16 v16, 0x0

    move-object/from16 v18, v3

    move-object v3, v1

    move-object/from16 v17, v2

    .line 7
    invoke-direct/range {v3 .. v18}, Lcom/google/android/gms/internal/ads/zzcip;-><init>(Lcom/google/android/gms/internal/ads/zzcih;Lcom/google/android/gms/internal/ads/zzcoh;Lcom/google/android/gms/internal/ads/zzdgy;Lcom/google/android/gms/internal/ads/zzcry;Lcom/google/android/gms/internal/ads/zzfei;Lcom/google/android/gms/internal/ads/zzctz;Lcom/google/android/gms/internal/ads/zzdtb;Lcom/google/android/gms/internal/ads/zzdbs;Lcom/google/android/gms/internal/ads/zzcvb;Lcom/google/android/gms/internal/ads/zzeht;Lcom/google/android/gms/internal/ads/zzejp;Lcom/google/android/gms/internal/ads/zzcqk;Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfaf;Lcom/google/android/gms/internal/ads/zzezj;)V

    return-object v1
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzc:Lcom/google/android/gms/internal/ads/zzezj;

    return-object p0
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzfaf;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzb:Lcom/google/android/gms/internal/ads/zzfaf;

    return-object p0
.end method

.method public final bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzdgy;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdgy;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzj:Lcom/google/android/gms/internal/ads/zzdgy;

    return-object p0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzcoh;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcoh;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzi:Lcom/google/android/gms/internal/ads/zzcoh;

    return-object p0
.end method

.method public final bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzeht;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzeht;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzh:Lcom/google/android/gms/internal/ads/zzeht;

    return-object p0
.end method

.method public final bridge synthetic zzg(Lcom/google/android/gms/internal/ads/zzcqk;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcqk;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzg:Lcom/google/android/gms/internal/ads/zzcqk;

    return-object p0
.end method

.method public final bridge synthetic zzh()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcio;->zza()Lcom/google/android/gms/internal/ads/zzcpp;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzi(Lcom/google/android/gms/internal/ads/zzezj;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzc:Lcom/google/android/gms/internal/ads/zzezj;

    return-object p0
.end method

.method public final synthetic zzj(Lcom/google/android/gms/internal/ads/zzfaf;)Lcom/google/android/gms/internal/ads/zzcuy;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzb:Lcom/google/android/gms/internal/ads/zzfaf;

    return-object p0
.end method

.method public final bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzejp;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzejp;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzf:Lcom/google/android/gms/internal/ads/zzejp;

    return-object p0
.end method

.method public final bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzcvb;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcvb;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zze:Lcom/google/android/gms/internal/ads/zzcvb;

    return-object p0
.end method

.method public final bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzdbs;)Lcom/google/android/gms/internal/ads/zzcpo;
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzdbs;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcio;->zzd:Lcom/google/android/gms/internal/ads/zzdbs;

    return-object p0
.end method
