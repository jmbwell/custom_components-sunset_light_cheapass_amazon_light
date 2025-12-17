.class public final Lcom/google/android/gms/internal/ads/zzgqj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# instance fields
.field private final zza:Ljava/util/List;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgxy;

.field private zzc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Ljava/util/List;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgxy;->zza:Lcom/google/android/gms/internal/ads/zzgxy;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqj;->zzb:Lcom/google/android/gms/internal/ads/zzgxy;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzgqj;->zzc:Z

    return-void
.end method

.method private final zzd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgqh;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgqh;->zzd(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgqh;)Lcom/google/android/gms/internal/ads/zzgqj;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqh;->zzh()Lcom/google/android/gms/internal/ads/zzgqj;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqj;->zzd()V

    .line 3
    :cond_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzgqh;->zzi(Lcom/google/android/gms/internal/ads/zzgqj;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    .line 1
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzgqo;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzc:Z

    if-nez v1, :cond_f

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzc:Z

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgqj;->zza:Ljava/util/List;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhec;->zzg()Lcom/google/android/gms/internal/ads/zzhdz;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    move v6, v5

    .line 4
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    add-int/lit8 v7, v6, 0x1

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzg()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqi;->zzb()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v8

    if-ne v6, v8, :cond_1

    .line 6
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgqh;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgqh;->zzg()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqi;->zzb()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v8

    if-ne v6, v8, :cond_0

    goto :goto_1

    .line 39
    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    move v6, v7

    goto :goto_0

    .line 6
    :cond_2
    new-instance v6, Ljava/util/HashSet;

    .line 7
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v7, 0x0

    move-object v8, v7

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzgqh;

    .line 9
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgqf;

    .line 10
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzg()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v10

    if-eqz v10, :cond_c

    .line 11
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzg()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v10

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqi;->zzb()Lcom/google/android/gms/internal/ads/zzgqi;

    move-result-object v11

    if-ne v10, v11, :cond_5

    move v10, v5

    :cond_3
    if-eqz v10, :cond_4

    .line 12
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v6, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 13
    :cond_4
    sget v10, Lcom/google/android/gms/internal/ads/zzgzu;->zza:I

    move v10, v5

    :goto_3
    if-nez v10, :cond_3

    const/4 v10, 0x4

    .line 14
    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzgzm;->zza(I)[B

    move-result-object v10

    .line 15
    aget-byte v11, v10, v5

    and-int/lit16 v11, v11, 0xff

    aget-byte v12, v10, v1

    and-int/lit16 v12, v12, 0xff

    const/4 v13, 0x2

    aget-byte v13, v10, v13

    and-int/lit16 v13, v13, 0xff

    const/4 v14, 0x3

    aget-byte v10, v10, v14

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v11, v11, 0x18

    shl-int/lit8 v12, v12, 0x10

    or-int/2addr v11, v12

    shl-int/lit8 v12, v13, 0x8

    or-int/2addr v11, v12

    or-int/2addr v10, v11

    goto :goto_3

    .line 16
    :cond_5
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzg()Lcom/google/android/gms/internal/ads/zzgqi;

    move v10, v5

    .line 17
    :cond_6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v6, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_b

    .line 18
    invoke-interface {v6, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzf()Lcom/google/android/gms/internal/ads/zzgqs;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzgqs;->zza()Z

    move-result v11

    if-eq v1, v11, :cond_7

    move-object v11, v7

    goto :goto_4

    :cond_7
    move-object v11, v15

    .line 20
    :goto_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgyf;->zza()Lcom/google/android/gms/internal/ads/zzgyf;

    move-result-object v12

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzf()Lcom/google/android/gms/internal/ads/zzgqs;

    move-result-object v13

    .line 21
    invoke-virtual {v12, v13, v11}, Lcom/google/android/gms/internal/ads/zzgyf;->zzc(Lcom/google/android/gms/internal/ads/zzgqs;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgqd;

    move-result-object v14

    new-instance v13, Lcom/google/android/gms/internal/ads/zzgqm;

    .line 22
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgqf;

    move-result-object v11

    .line 23
    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgqo;->zzj(Lcom/google/android/gms/internal/ads/zzgqf;)I

    move-result v16

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc()Z

    move-result v17

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgqm;->zze()Lcom/google/android/gms/internal/ads/zzgqk;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v11, v13

    move-object v12, v14

    move-object v1, v13

    move/from16 v13, v16

    move-object v5, v14

    move v14, v10

    move-object/from16 v21, v15

    move/from16 v15, v17

    move/from16 v16, v20

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    invoke-direct/range {v11 .. v18}, Lcom/google/android/gms/internal/ads/zzgqm;-><init>(Lcom/google/android/gms/internal/ads/zzgqd;IIZZLcom/google/android/gms/internal/ads/zzgqk;[B)V

    .line 24
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgqf;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzgqo;->zzj(Lcom/google/android/gms/internal/ads/zzgqf;)I

    move-result v11

    invoke-static {v5, v11, v10}, Lcom/google/android/gms/internal/ads/zzgqo;->zzk(Lcom/google/android/gms/internal/ads/zzgqd;II)Lcom/google/android/gms/internal/ads/zzheb;

    move-result-object v5

    .line 25
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzhdz;->zzb(Lcom/google/android/gms/internal/ads/zzheb;)Lcom/google/android/gms/internal/ads/zzhdz;

    .line 26
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zzc()Z

    move-result v5

    if-eqz v5, :cond_a

    if-nez v8, :cond_9

    .line 27
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgqh;->zze()Lcom/google/android/gms/internal/ads/zzgqf;

    move-result-object v5

    sget-object v8, Lcom/google/android/gms/internal/ads/zzgqf;->zza:Lcom/google/android/gms/internal/ads/zzgqf;

    if-ne v5, v8, :cond_8

    move-object/from16 v8, v21

    goto :goto_5

    .line 32
    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Primary key is not enabled"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_9
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_a
    :goto_5
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 30
    :cond_b
    new-instance v1, Ljava/security/GeneralSecurityException;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1f

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Id "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is used twice in the keyset"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 29
    :cond_c
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    if-eqz v8, :cond_e

    .line 34
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzhdz;->zza(I)Lcom/google/android/gms/internal/ads/zzhdz;

    .line 35
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhib;->zzbm()Lcom/google/android/gms/internal/ads/zzhih;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhec;

    .line 36
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgqo;->zzi(Lcom/google/android/gms/internal/ads/zzhec;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzgqj;->zzb:Lcom/google/android/gms/internal/ads/zzgxy;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzgqo;

    .line 37
    invoke-direct {v3, v1, v4, v2, v7}, Lcom/google/android/gms/internal/ads/zzgqo;-><init>(Lcom/google/android/gms/internal/ads/zzhec;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzgxy;[B)V

    .line 38
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgqo;->zzh(Lcom/google/android/gms/internal/ads/zzgqo;)Lcom/google/android/gms/internal/ads/zzgqo;

    move-result-object v1

    return-object v1

    .line 33
    :cond_e
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_f
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final synthetic zzc()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgqj;->zzd()V

    return-void
.end method
