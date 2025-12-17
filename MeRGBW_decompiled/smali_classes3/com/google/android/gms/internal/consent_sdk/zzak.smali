.class final Lcom/google/android/gms/internal/consent_sdk/zzak;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@3.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzax;


# instance fields
.field final zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field final zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field final zzc:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field final zzd:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field final zze:Lcom/google/android/gms/internal/consent_sdk/zzdr;

.field private final zzf:Lcom/google/android/gms/internal/consent_sdk/zzah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzah;Lcom/google/android/gms/internal/consent_sdk/zzbq;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zzf:Lcom/google/android/gms/internal/consent_sdk/zzah;

    iget-object v2, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    new-instance v3, Lcom/google/android/gms/internal/consent_sdk/zzby;

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/consent_sdk/zzby;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdr;)V

    invoke-static {v3}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdr;)Lcom/google/android/gms/internal/consent_sdk/zzdr;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/consent_sdk/zzdp;->zzb(Ljava/lang/Object;)Lcom/google/android/gms/internal/consent_sdk/zzdo;

    move-result-object v3

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    new-instance v13, Lcom/google/android/gms/internal/consent_sdk/zzdm;

    invoke-direct {v13}, Lcom/google/android/gms/internal/consent_sdk/zzdm;-><init>()V

    iput-object v13, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    iget-object v14, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zza:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    sget-object v15, Lcom/google/android/gms/internal/consent_sdk/zzas;->zza:Lcom/google/android/gms/internal/consent_sdk/zzat;

    sget-object v8, Lcom/google/android/gms/internal/consent_sdk/zzau;->zza:Lcom/google/android/gms/internal/consent_sdk/zzav;

    iget-object v9, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zzg:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    iget-object v10, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zzj:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    iget-object v12, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    new-instance v11, Lcom/google/android/gms/internal/consent_sdk/zzcc;

    move-object v4, v11

    move-object v5, v14

    move-object v6, v2

    move-object v7, v15

    move-object/from16 p2, v3

    move-object v3, v11

    move-object v11, v13

    move-object/from16 v16, v12

    invoke-direct/range {v4 .. v12}, Lcom/google/android/gms/internal/consent_sdk/zzcc;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V

    iput-object v3, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    new-instance v10, Lcom/google/android/gms/internal/consent_sdk/zzbw;

    invoke-direct {v10, v2, v15, v3}, Lcom/google/android/gms/internal/consent_sdk/zzbw;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V

    iput-object v10, v0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zze:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    iget-object v6, v1, Lcom/google/android/gms/internal/consent_sdk/zzah;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzbd;

    move-object v4, v1

    move-object v7, v2

    move-object/from16 v8, v16

    move-object/from16 v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/consent_sdk/zzbd;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V

    invoke-static {v1}, Lcom/google/android/gms/internal/consent_sdk/zzdn;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdr;)Lcom/google/android/gms/internal/consent_sdk/zzdr;

    move-result-object v1

    .line 2
    invoke-static {v13, v1}, Lcom/google/android/gms/internal/consent_sdk/zzdm;->zzb(Lcom/google/android/gms/internal/consent_sdk/zzdr;Lcom/google/android/gms/internal/consent_sdk/zzdr;)V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/consent_sdk/zzbc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzak;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzdr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzdr;->zza()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzbc;

    return-object v0
.end method
