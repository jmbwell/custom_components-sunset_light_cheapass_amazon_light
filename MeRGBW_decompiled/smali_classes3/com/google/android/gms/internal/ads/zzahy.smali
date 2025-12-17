.class public final Lcom/google/android/gms/internal/ads/zzahy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.6.0"


# static fields
.field public static final synthetic zza:I

.field private static final zzb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    const-string v0, "OpusHead"

    .line 2
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahy;->zzb:[B

    return-void
.end method

.method public static zza(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzet;Lcom/google/android/gms/internal/ads/zzadk;JLcom/google/android/gms/internal/ads/zzp;ZZLcom/google/android/gms/internal/ads/zzggr;Z)Ljava/util/List;
    .locals 76
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzas;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    .line 1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v14, 0x0

    .line 2
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzet;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v14, v2, :cond_95

    .line 3
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/google/android/gms/internal/ads/zzet;

    .line 4
    iget v1, v15, Lcom/google/android/gms/internal/ads/zzet;->zzd:I

    const v2, 0x7472616b

    if-eq v1, v2, :cond_0

    move-object/from16 v3, p1

    move-object/from16 v0, p7

    move-object v2, v12

    move/from16 v34, v14

    :goto_1
    const/4 v4, 0x0

    goto/16 :goto_65

    :cond_0
    const v1, 0x6d766864

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v2, v1

    check-cast v2, Lcom/google/android/gms/internal/ads/zzeu;

    const v2, 0x6d646961

    .line 6
    invoke-virtual {v15, v2}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v2

    .line 270
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    const v3, 0x68646c72    # 4.3148E24f

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v3

    .line 269
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahy;->zzi(Lcom/google/android/gms/internal/ads/zzef;)I

    move-result v3

    const v4, 0x736f756e

    const/16 v16, 0x5

    const/4 v8, -0x1

    const/4 v7, 0x1

    if-ne v3, v4, :cond_1

    move v6, v7

    goto :goto_3

    :cond_1
    const v4, 0x76696465

    if-ne v3, v4, :cond_2

    const/4 v6, 0x2

    goto :goto_3

    :cond_2
    const v4, 0x74657874

    if-eq v3, v4, :cond_5

    const v4, 0x7362746c

    if-eq v3, v4, :cond_5

    const v4, 0x73756274

    if-eq v3, v4, :cond_5

    const v4, 0x636c6370

    if-eq v3, v4, :cond_5

    const v4, 0x73756270

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const v4, 0x6d657461

    if-ne v3, v4, :cond_4

    move/from16 v6, v16

    goto :goto_3

    :cond_4
    move v6, v8

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x3

    :goto_3
    if-ne v6, v8, :cond_6

    move-object/from16 v0, p7

    move-object/from16 v42, v12

    move/from16 v34, v14

    move-object v1, v15

    :goto_4
    const/4 v5, 0x0

    goto/16 :goto_64

    :cond_6
    const v3, 0x746b6864

    .line 8
    invoke-virtual {v15, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v3

    .line 268
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    move-object v4, v3

    check-cast v4, Lcom/google/android/gms/internal/ads/zzeu;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v4, 0x8

    .line 9
    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 10
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/google/android/gms/internal/ads/zzahy;->zza(I)I

    move-result v17

    if-nez v17, :cond_7

    move v5, v4

    goto :goto_5

    :cond_7
    const/16 v5, 0x10

    .line 11
    :goto_5
    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 12
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v5

    const/4 v10, 0x4

    .line 13
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v20

    const/4 v4, 0x0

    :goto_6
    if-nez v17, :cond_8

    move v9, v10

    goto :goto_7

    :cond_8
    const/16 v9, 0x8

    :goto_7
    const-wide/16 v23, 0x0

    move/from16 v34, v14

    if-ge v4, v9, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v9

    add-int v26, v20, v4

    .line 14
    aget-byte v9, v9, v26

    if-eq v9, v8, :cond_a

    if-nez v17, :cond_9

    .line 16
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v26

    goto :goto_8

    :cond_9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzJ()J

    move-result-wide v26

    :goto_8
    cmp-long v4, v26, v23

    if-nez v4, :cond_c

    goto :goto_9

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move/from16 v14, v34

    goto :goto_6

    .line 15
    :cond_b
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :goto_9
    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    :cond_c
    const/16 v9, 0xa

    .line 17
    invoke-virtual {v3, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 18
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v4

    .line 19
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v17

    .line 21
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v9

    .line 22
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 23
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v10

    .line 24
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    const/high16 v13, 0x10000

    const/high16 v14, -0x10000

    if-nez v17, :cond_12

    if-ne v9, v13, :cond_11

    if-eq v10, v14, :cond_f

    if-ne v10, v13, :cond_e

    if-nez v8, :cond_d

    const/4 v9, 0x0

    goto :goto_a

    :cond_d
    move v9, v7

    :goto_a
    move v10, v13

    goto :goto_b

    :cond_e
    move v9, v13

    goto :goto_c

    :cond_f
    if-nez v8, :cond_10

    const/4 v9, 0x0

    goto :goto_b

    :cond_10
    move v9, v7

    :goto_b
    if-eq v7, v9, :cond_e

    const/16 v8, 0x5a

    goto :goto_11

    :cond_11
    :goto_c
    const/16 v17, 0x0

    :cond_12
    if-nez v17, :cond_18

    if-ne v9, v14, :cond_17

    if-eq v10, v13, :cond_15

    if-ne v10, v14, :cond_14

    if-nez v8, :cond_13

    const/4 v9, 0x0

    goto :goto_d

    :cond_13
    move v9, v7

    :goto_d
    move v10, v14

    goto :goto_e

    :cond_14
    move/from16 v17, v10

    move v10, v14

    goto :goto_f

    :cond_15
    if-nez v8, :cond_16

    const/4 v9, 0x0

    goto :goto_e

    :cond_16
    move v9, v7

    :goto_e
    if-eq v7, v9, :cond_14

    const/16 v8, 0x10e

    goto :goto_11

    :cond_17
    move/from16 v17, v10

    move v10, v9

    :goto_f
    const/4 v9, 0x0

    goto :goto_10

    :cond_18
    move/from16 v75, v10

    move v10, v9

    move/from16 v9, v17

    move/from16 v17, v75

    :goto_10
    if-eq v9, v14, :cond_19

    if-ne v9, v13, :cond_1a

    :cond_19
    if-nez v10, :cond_1a

    if-nez v17, :cond_1a

    if-ne v8, v14, :cond_1a

    const/16 v8, 0xb4

    :goto_11
    move v13, v8

    const/16 v8, 0x10

    goto :goto_12

    :cond_1a
    const/16 v8, 0x10

    const/4 v13, 0x0

    .line 25
    :goto_12
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 26
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v14

    const/4 v8, 0x2

    .line 27
    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 28
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v10

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p2, v8

    if-nez v3, :cond_1b

    move-wide/from16 v35, v26

    goto :goto_13

    :cond_1b
    move-wide/from16 v35, p2

    :goto_13
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    .line 29
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzahy;->zzd(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzex;

    move-result-object v1

    move-object/from16 v42, v12

    move/from16 v17, v13

    iget-wide v12, v1, Lcom/google/android/gms/internal/ads/zzex;->zzc:J

    cmp-long v1, v35, v8

    if-nez v1, :cond_1c

    const-wide v32, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_14

    :cond_1c
    const-wide/32 v37, 0xf4240

    .line 40
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v12

    .line 30
    invoke-static/range {v35 .. v41}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    move-wide/from16 v32, v8

    :goto_14
    const v1, 0x6d696e66

    .line 31
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    const v3, 0x7374626c

    .line 32
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    .line 266
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    const v3, 0x6d646864

    .line 34
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v2

    .line 265
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzeu;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v8, 0x8

    .line 35
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 36
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahy;->zza(I)I

    move-result v3

    if-nez v3, :cond_1d

    move v9, v8

    goto :goto_15

    :cond_1d
    const/16 v9, 0x10

    .line 37
    :goto_15
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v26

    const/4 v9, 0x0

    :goto_16
    if-nez v3, :cond_1e

    const/4 v0, 0x4

    goto :goto_17

    :cond_1e
    const/16 v0, 0x8

    :goto_17
    if-ge v9, v0, :cond_22

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v0

    add-int v35, v26, v9

    .line 39
    aget-byte v0, v0, v35

    move-wide/from16 v43, v12

    const/4 v12, -0x1

    if-eq v0, v12, :cond_21

    if-nez v3, :cond_1f

    .line 41
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v35

    goto :goto_18

    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzJ()J

    move-result-wide v35

    :goto_18
    cmp-long v0, v35, v23

    if-nez v0, :cond_20

    goto :goto_19

    :cond_20
    const-wide/32 v37, 0xf4240

    .line 249
    sget-object v41, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v39, v7

    .line 42
    invoke-static/range {v35 .. v41}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v35

    move-wide/from16 v12, v35

    goto :goto_1a

    :cond_21
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v12, v43

    goto :goto_16

    :cond_22
    move-wide/from16 v43, v12

    const/4 v12, -0x1

    .line 40
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :goto_19
    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    .line 43
    :goto_1a
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v0

    shr-int/lit8 v2, v0, 0xa

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x60

    int-to-char v2, v2

    shr-int/lit8 v3, v0, 0x5

    and-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x60

    int-to-char v3, v3

    and-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x60

    int-to-char v0, v0

    move/from16 v19, v4

    const/4 v9, 0x3

    new-array v4, v9, [C

    const/16 v26, 0x0

    aput-char v2, v4, v26

    const/4 v2, 0x1

    aput-char v3, v4, v2

    move v3, v9

    const/16 v22, 0x2

    aput-char v0, v4, v22

    const/4 v0, 0x0

    :goto_1b
    if-ge v0, v3, :cond_25

    .line 44
    aget-char v2, v4, v0

    const/16 v3, 0x61

    if-lt v2, v3, :cond_24

    const/16 v3, 0x7a

    if-le v2, v3, :cond_23

    goto :goto_1c

    :cond_23
    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x3

    goto :goto_1b

    :cond_24
    :goto_1c
    const/4 v0, 0x0

    goto :goto_1d

    .line 249
    :cond_25
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([C)V

    :goto_1d
    const v2, 0x73747364

    .line 45
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    if-eqz v1, :cond_94

    .line 260
    invoke-static {v7, v8, v12, v13, v0}, Lcom/google/android/gms/internal/ads/zzahr;->zzc(JJLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v2, 0xc

    .line 46
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 47
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v1

    move-object/from16 v27, v0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahu;

    .line 48
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzahu;-><init>(I)V

    move-wide/from16 v35, v12

    const/4 v12, 0x0

    :goto_1e
    if-ge v12, v1, :cond_8d

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v13

    move-object/from16 v37, v15

    .line 49
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v15

    if-lez v15, :cond_26

    const/4 v2, 0x1

    goto :goto_1f

    :cond_26
    const/4 v2, 0x0

    .line 50
    :goto_1f
    const-string v9, "childAtomSize must be positive"

    invoke-static {v2, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 51
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v2

    move/from16 v40, v1

    const v1, 0x61766331

    move/from16 v41, v6

    const v6, 0x656e6376

    if-eq v2, v1, :cond_35

    const v1, 0x61766333

    if-eq v2, v1, :cond_35

    if-eq v2, v6, :cond_35

    const v1, 0x6d317620

    if-eq v2, v1, :cond_35

    const v1, 0x6d703476

    if-eq v2, v1, :cond_35

    const v1, 0x68766331

    if-eq v2, v1, :cond_35

    const v1, 0x68657631

    if-eq v2, v1, :cond_35

    const v1, 0x73323633

    if-eq v2, v1, :cond_35

    const v1, 0x48323633

    if-eq v2, v1, :cond_35

    const v1, 0x68323633

    if-eq v2, v1, :cond_35

    const v1, 0x76703038

    if-eq v2, v1, :cond_35

    const v1, 0x76703039

    if-eq v2, v1, :cond_35

    const v1, 0x61763031

    if-eq v2, v1, :cond_35

    const v1, 0x64766176

    if-eq v2, v1, :cond_35

    const v1, 0x64766131

    if-eq v2, v1, :cond_35

    const v1, 0x64766865

    if-eq v2, v1, :cond_35

    const v1, 0x64766831

    if-eq v2, v1, :cond_35

    const v1, 0x61707631

    if-ne v2, v1, :cond_27

    goto/16 :goto_28

    :cond_27
    const v1, 0x6d703461

    if-eq v2, v1, :cond_34

    const v1, 0x656e6361

    if-eq v2, v1, :cond_34

    const v1, 0x61632d33

    if-eq v2, v1, :cond_34

    const v1, 0x65632d33

    if-eq v2, v1, :cond_34

    const v1, 0x61632d34

    if-eq v2, v1, :cond_34

    const v1, 0x6d6c7061

    if-eq v2, v1, :cond_34

    const v1, 0x64747363

    if-eq v2, v1, :cond_34

    const v1, 0x64747365

    if-eq v2, v1, :cond_34

    const v1, 0x64747368

    if-eq v2, v1, :cond_34

    const v1, 0x6474736c

    if-eq v2, v1, :cond_34

    const v1, 0x64747378

    if-eq v2, v1, :cond_34

    const v1, 0x73616d72

    if-eq v2, v1, :cond_34

    const v1, 0x73617762

    if-eq v2, v1, :cond_34

    const v1, 0x6c70636d

    if-eq v2, v1, :cond_34

    const v1, 0x736f7774

    if-eq v2, v1, :cond_34

    const v1, 0x74776f73

    if-eq v2, v1, :cond_34

    const v1, 0x2e6d7032

    if-eq v2, v1, :cond_34

    const v1, 0x2e6d7033

    if-eq v2, v1, :cond_34

    const v1, 0x6d686131

    if-eq v2, v1, :cond_34

    const v1, 0x6d686d31

    if-eq v2, v1, :cond_34

    const v1, 0x616c6163

    if-eq v2, v1, :cond_34

    const v1, 0x616c6177

    if-eq v2, v1, :cond_34

    const v1, 0x756c6177

    if-eq v2, v1, :cond_34

    const v1, 0x4f707573

    if-eq v2, v1, :cond_34

    const v1, 0x664c6143

    if-eq v2, v1, :cond_34

    const v1, 0x69616d66

    if-eq v2, v1, :cond_34

    const v1, 0x6970636d

    if-eq v2, v1, :cond_34

    const v1, 0x6670636d

    if-ne v2, v1, :cond_28

    goto/16 :goto_27

    :cond_28
    const v1, 0x54544d4c

    if-eq v2, v1, :cond_2b

    const v1, 0x74783367

    if-eq v2, v1, :cond_2b

    const v1, 0x77767474

    if-eq v2, v1, :cond_2b

    const v1, 0x73747070

    if-eq v2, v1, :cond_2b

    const v1, 0x63363038

    if-eq v2, v1, :cond_2b

    const v1, 0x6d703473

    if-ne v2, v1, :cond_29

    goto :goto_20

    :cond_29
    const v1, 0x6d657474

    if-ne v2, v1, :cond_2a

    add-int/lit8 v1, v13, 0x10

    .line 235
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzM(C)Ljava/lang/String;

    .line 237
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzM(C)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_31

    new-instance v1, Lcom/google/android/gms/internal/ads/zzs;

    .line 238
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto/16 :goto_24

    :cond_2a
    const v1, 0x63616d6d

    if-ne v2, v1, :cond_31

    new-instance v1, Lcom/google/android/gms/internal/ads/zzs;

    .line 239
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    .line 240
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    const-string v2, "application/x-camera-motion"

    .line 241
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 242
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto/16 :goto_24

    :cond_2b
    :goto_20
    add-int/lit8 v1, v13, 0x10

    .line 217
    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const v1, 0x54544d4c

    const-wide v45, 0x7fffffffffffffffL

    if-ne v2, v1, :cond_2c

    const-string v1, "application/ttml+xml"

    :goto_21
    move/from16 v39, v10

    move-wide/from16 v9, v45

    :goto_22
    const/4 v2, 0x0

    goto/16 :goto_25

    :cond_2c
    const v1, 0x74783367

    if-ne v2, v1, :cond_2d

    add-int/lit8 v1, v15, -0x10

    .line 218
    new-array v2, v1, [B

    const/4 v6, 0x0

    .line 219
    invoke-virtual {v3, v2, v6, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 220
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    const-string v2, "application/x-quicktime-tx3g"

    :goto_23
    move/from16 v39, v10

    move-wide/from16 v9, v45

    move-object/from16 v75, v2

    move-object v2, v1

    move-object/from16 v1, v75

    goto/16 :goto_25

    :cond_2d
    const v1, 0x77767474

    if-ne v2, v1, :cond_2e

    const-string v1, "application/x-mp4-vtt"

    goto :goto_21

    :cond_2e
    const v1, 0x73747070

    if-ne v2, v1, :cond_2f

    const-string v1, "application/ttml+xml"

    move/from16 v39, v10

    move-wide/from16 v9, v23

    goto :goto_22

    :cond_2f
    const v1, 0x63363038

    const/4 v9, 0x1

    if-ne v2, v1, :cond_30

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzd:I

    const-string v1, "application/x-mp4-cea-608"

    goto :goto_21

    :cond_30
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v1

    const/4 v6, 0x4

    .line 221
    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 222
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v2

    const v6, 0x65736473

    if-ne v2, v6, :cond_32

    .line 223
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzahy;->zzp(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahp;->zzb()[B

    move-result-object v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahp;->zzb()[B

    move-result-object v2

    .line 224
    array-length v2, v2

    const/16 v6, 0x40

    if-ne v2, v6, :cond_31

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzahp;->zzb()[B

    move-result-object v1

    .line 225
    invoke-static {v1, v14, v10}, Lcom/google/android/gms/internal/ads/zzahy;->zzj([BII)Ljava/lang/String;

    move-result-object v1

    .line 226
    sget-object v2, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    .line 227
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    .line 226
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    const-string v2, "application/vobsub"

    goto :goto_23

    :cond_31
    :goto_24
    move-object v1, v4

    move v6, v5

    move-wide/from16 v48, v7

    move/from16 v26, v10

    move/from16 v29, v12

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v8, v17

    move/from16 v38, v19

    move/from16 v7, v22

    goto :goto_26

    :cond_32
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_23

    :goto_25
    if-eqz v1, :cond_33

    .line 217
    new-instance v6, Lcom/google/android/gms/internal/ads/zzs;

    .line 228
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    .line 229
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 230
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 231
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzs;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 232
    invoke-virtual {v6, v9, v10}, Lcom/google/android/gms/internal/ads/zzs;->zzr(J)Lcom/google/android/gms/internal/ads/zzs;

    .line 233
    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    .line 234
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    :cond_33
    move-object v1, v4

    move v6, v5

    move-wide/from16 v48, v7

    move/from16 v29, v12

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v8, v17

    move/from16 v38, v19

    move/from16 v7, v22

    move/from16 v26, v39

    :goto_26
    move/from16 v28, v41

    const/4 v4, 0x3

    const/16 v22, 0xa

    const/16 v50, 0x4

    move/from16 v19, v14

    move-object v14, v3

    move-object v3, v0

    const/4 v0, -0x1

    goto/16 :goto_61

    :cond_34
    :goto_27
    move/from16 v39, v10

    move-object v1, v3

    const/16 v10, 0xc

    move-object v9, v3

    const/16 v26, 0x3

    move v3, v13

    move-object/from16 v21, v4

    const/16 v6, 0x8

    move/from16 v75, v19

    move/from16 v19, v14

    move/from16 v14, v75

    move v4, v15

    move/from16 v18, v5

    move/from16 v38, v14

    const/4 v14, 0x0

    move/from16 v28, v41

    const/16 v41, 0x4

    move-object/from16 v6, v21

    move-wide/from16 v48, v7

    const/4 v8, 0x1

    move/from16 v7, p6

    move-object/from16 v8, p4

    move-object v14, v9

    const/16 v22, 0xa

    move-object v9, v0

    move/from16 v26, v39

    move v10, v12

    .line 216
    invoke-static/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzahy;->zzo(Lcom/google/android/gms/internal/ads/zzef;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzp;Lcom/google/android/gms/internal/ads/zzahu;I)V

    move-object v3, v0

    move/from16 v29, v12

    move/from16 v62, v13

    move/from16 v64, v15

    move/from16 v8, v17

    move/from16 v6, v18

    move-object/from16 v1, v21

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/16 v50, 0x4

    goto/16 :goto_61

    :cond_35
    :goto_28
    move-object/from16 v21, v4

    move/from16 v18, v5

    move-wide/from16 v48, v7

    move/from16 v26, v10

    move/from16 v38, v19

    move/from16 v28, v41

    const/16 v22, 0xa

    move/from16 v19, v14

    move-object v14, v3

    add-int/lit8 v1, v13, 0x10

    .line 52
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/16 v1, 0x10

    .line 53
    invoke-virtual {v14, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 54
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v3

    .line 55
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v4

    const/16 v5, 0x32

    .line 56
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v5

    if-ne v2, v6, :cond_38

    .line 57
    invoke-static {v14, v13, v15}, Lcom/google/android/gms/internal/ads/zzahy;->zzr(Lcom/google/android/gms/internal/ads/zzef;II)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 58
    iget-object v6, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v11, :cond_36

    const/4 v7, 0x0

    goto :goto_29

    .line 59
    :cond_36
    iget-object v7, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Lcom/google/android/gms/internal/ads/zzait;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzait;->zzb:Ljava/lang/String;

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v7

    .line 58
    :goto_29
    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahu;->zza:[Lcom/google/android/gms/internal/ads/zzait;

    .line 60
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzait;

    aput-object v2, v8, v12

    move v2, v6

    goto :goto_2a

    :cond_37
    move v2, v6

    move-object v7, v11

    .line 61
    :goto_2a
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto :goto_2b

    :cond_38
    move-object v7, v11

    :goto_2b
    const v6, 0x6d317620

    if-ne v2, v6, :cond_39

    const-string v6, "video/mpeg"

    move-object/from16 v75, v6

    move v6, v2

    move-object/from16 v2, v75

    goto :goto_2c

    :cond_39
    const v6, 0x48323633

    if-ne v2, v6, :cond_3a

    .line 185
    const-string v2, "video/3gpp"

    goto :goto_2c

    :cond_3a
    move v6, v2

    const/4 v2, 0x0

    :goto_2c
    const/high16 v8, 0x3f800000    # 1.0f

    move/from16 v58, v3

    move/from16 v57, v4

    move v10, v5

    move/from16 v61, v6

    move-object/from16 v46, v7

    move/from16 v59, v8

    move/from16 v29, v12

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/16 v5, 0x8

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v11, -0x1

    const/4 v12, -0x1

    const/16 v39, 0x0

    const/16 v41, 0x0

    const/16 v45, 0x0

    const/16 v51, 0x0

    const/16 v52, -0x1

    const/16 v53, -0x1

    const/16 v54, 0x0

    const/16 v55, -0x1

    const/16 v56, -0x1

    const/16 v60, 0x0

    :goto_2d
    sub-int v6, v10, v13

    if-ge v6, v15, :cond_88

    .line 62
    invoke-virtual {v14, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v6

    .line 63
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v62

    if-nez v62, :cond_3c

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v62

    move/from16 v63, v10

    sub-int v10, v62, v13

    if-ne v10, v15, :cond_3b

    goto/16 :goto_5e

    :cond_3b
    const/4 v10, 0x0

    goto :goto_2e

    :cond_3c
    move/from16 v63, v10

    move/from16 v10, v62

    :goto_2e
    if-lez v10, :cond_3d

    move/from16 v62, v13

    const/4 v13, 0x1

    goto :goto_2f

    :cond_3d
    move/from16 v62, v13

    const/4 v13, 0x0

    .line 64
    :goto_2f
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 65
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v13

    move/from16 v64, v15

    const v15, 0x61766343

    if-ne v13, v15, :cond_40

    add-int/lit8 v6, v6, 0x8

    if-nez v2, :cond_3e

    const/4 v1, 0x1

    goto :goto_30

    :cond_3e
    const/4 v1, 0x0

    :goto_30
    const/4 v2, 0x0

    .line 66
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 67
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 68
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzabz;->zza(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzabz;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzabz;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:I

    if-nez v51, :cond_3f

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzk:F

    move/from16 v59, v3

    const/4 v3, 0x0

    goto :goto_31

    :cond_3f
    const/4 v3, 0x1

    :goto_31
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzl:Ljava/lang/String;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzj:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzg:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzh:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzi:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzabz;->zze:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzabz;->zzf:I

    const-string v15, "video/avc"

    move-object/from16 v65, v0

    move/from16 v51, v3

    move-object/from16 v60, v4

    move/from16 v52, v5

    move/from16 v47, v8

    move-object/from16 v68, v9

    move v3, v12

    move v5, v13

    move/from16 v69, v61

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/16 v50, 0x4

    move v8, v1

    move-object v1, v2

    move v12, v6

    move-object/from16 v61, v7

    move-object v2, v15

    :goto_32
    const/4 v7, 0x2

    goto/16 :goto_5d

    :cond_40
    const v15, 0x68766343

    if-ne v13, v15, :cond_44

    add-int/lit8 v6, v6, 0x8

    if-nez v2, :cond_41

    const/4 v1, 0x0

    const/4 v7, 0x1

    goto :goto_33

    :cond_41
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 69
    :goto_33
    invoke-static {v7, v1}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 70
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 71
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzadl;->zza(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzadl;->zza:Ljava/util/List;

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzb:I

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:I

    if-nez v51, :cond_42

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzl:F

    move/from16 v59, v3

    const/4 v7, 0x0

    goto :goto_34

    :cond_42
    const/4 v7, 0x1

    :goto_34
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzm:I

    iget v4, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzc:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzn:Ljava/lang/String;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzk:I

    const/4 v15, -0x1

    if-eq v6, v15, :cond_43

    move v11, v6

    :cond_43
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzadl;->zze:I

    iget v12, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzh:I

    iget v13, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzi:I

    iget v15, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzj:I

    move-object/from16 v52, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzf:I

    move/from16 v51, v2

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzg:I

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadl;->zzo:Lcom/google/android/gms/internal/ads/zzfi;

    const-string v53, "video/hevc"

    move-object/from16 v65, v0

    move-object/from16 v60, v5

    move/from16 v56, v6

    move/from16 v55, v8

    move-object/from16 v68, v9

    move/from16 v47, v13

    move/from16 v5, v51

    move/from16 v69, v61

    const/4 v0, -0x1

    const/16 v50, 0x4

    move-object/from16 v61, v1

    move v8, v2

    move/from16 v51, v7

    move-object/from16 v1, v52

    move-object/from16 v2, v53

    const/4 v7, 0x2

    move/from16 v52, v3

    move/from16 v53, v4

    move v3, v15

    const/4 v4, 0x3

    goto/16 :goto_5d

    :cond_44
    const v15, 0x6c687643

    if-ne v13, v15, :cond_51

    add-int/lit8 v6, v6, 0x8

    const-string v13, "video/hevc"

    .line 72
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v13, "lhvC must follow hvcC atom"

    .line 73
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    if-eqz v7, :cond_46

    iget-object v2, v7, Lcom/google/android/gms/internal/ads/zzfi;->zza:Lcom/google/android/gms/internal/ads/zzgjz;

    .line 74
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgjz;->size()I

    move-result v2

    const/4 v15, 0x2

    if-lt v2, v15, :cond_45

    const/4 v2, 0x1

    goto :goto_35

    :cond_45
    const/4 v2, 0x0

    goto :goto_35

    :cond_46
    const/4 v15, 0x2

    const/4 v2, 0x0

    const/4 v7, 0x0

    :goto_35
    const-string v13, "must have at least two layers"

    .line 75
    invoke-static {v2, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 76
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 264
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 77
    move-object v2, v7

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfi;

    invoke-static {v14, v7}, Lcom/google/android/gms/internal/ads/zzadl;->zzb(Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzfi;)Lcom/google/android/gms/internal/ads/zzadl;

    move-result-object v2

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzahu;->zzc:I

    iget v13, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzb:I

    if-ne v6, v13, :cond_47

    const/4 v6, 0x1

    goto :goto_36

    :cond_47
    const/4 v6, 0x0

    :goto_36
    const-string v13, "nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms"

    .line 78
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzh:I

    const/4 v13, -0x1

    if-eq v6, v13, :cond_49

    if-ne v12, v6, :cond_48

    const/4 v6, 0x1

    goto :goto_37

    :cond_48
    const/4 v6, 0x0

    :goto_37
    const-string v15, "colorSpace must be the same for both views"

    .line 79
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    :cond_49
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzi:I

    if-eq v6, v13, :cond_4b

    if-ne v4, v6, :cond_4a

    const/4 v6, 0x1

    goto :goto_38

    :cond_4a
    const/4 v6, 0x0

    :goto_38
    const-string v15, "colorRange must be the same for both views"

    .line 80
    invoke-static {v6, v15}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    :cond_4b
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzj:I

    if-eq v6, v13, :cond_4d

    if-ne v3, v6, :cond_4c

    const/4 v6, 0x1

    goto :goto_39

    :cond_4c
    const/4 v6, 0x0

    :goto_39
    const-string v13, "colorTransfer must be the same for both views"

    .line 81
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    :cond_4d
    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzf:I

    if-ne v5, v6, :cond_4e

    const/4 v6, 0x1

    goto :goto_3a

    :cond_4e
    const/4 v6, 0x0

    :goto_3a
    const-string v13, "bitdepthLuma must be the same for both views"

    .line 82
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzg:I

    if-ne v8, v6, :cond_4f

    const/4 v6, 0x1

    goto :goto_3b

    :cond_4f
    const/4 v6, 0x0

    :goto_3b
    const-string v13, "bitdepthChroma must be the same for both views"

    .line 83
    invoke-static {v6, v13}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    if-eqz v1, :cond_50

    .line 84
    sget v6, Lcom/google/android/gms/internal/ads/zzgjz;->zzd:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzgjw;

    .line 85
    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzgjw;-><init>()V

    .line 86
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzgjw;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgjw;

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzadl;->zza:Ljava/util/List;

    .line 87
    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/zzgjw;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgjw;

    .line 88
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgjw;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    goto :goto_3c

    :cond_50
    const-string v1, "initializationData must be already set from hvcC atom"

    const/4 v6, 0x0

    .line 89
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    const/4 v1, 0x0

    .line 88
    :goto_3c
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzadl;->zzn:Ljava/lang/String;

    const-string v6, "video/mv-hevc"

    move-object/from16 v65, v0

    move-object/from16 v60, v2

    move/from16 v47, v4

    move-object v2, v6

    move-object/from16 v68, v9

    move/from16 v69, v61

    goto/16 :goto_48

    :cond_51
    const v15, 0x76657875

    if-ne v13, v15, :cond_62

    add-int/lit8 v13, v6, 0x8

    .line 90
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v13

    move-object/from16 v65, v0

    move v15, v13

    const/4 v13, 0x0

    :goto_3d
    sub-int v0, v15, v6

    if-ge v0, v10, :cond_5a

    .line 91
    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 92
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v0

    if-lez v0, :cond_52

    move/from16 v66, v8

    const/4 v8, 0x1

    goto :goto_3e

    :cond_52
    move/from16 v66, v8

    const/4 v8, 0x0

    .line 93
    :goto_3e
    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 94
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    move/from16 v67, v5

    const v5, 0x65796573

    if-ne v8, v5, :cond_59

    add-int/lit8 v5, v15, 0x8

    .line 95
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v5

    :goto_3f
    sub-int v8, v5, v15

    if-ge v8, v0, :cond_58

    .line 96
    invoke-virtual {v14, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 97
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    if-lez v8, :cond_53

    const/4 v13, 0x1

    goto :goto_40

    :cond_53
    const/4 v13, 0x0

    .line 98
    :goto_40
    invoke-static {v13, v9}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 99
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v13

    move-object/from16 v68, v9

    const v9, 0x73747269

    if-ne v13, v9, :cond_57

    const/4 v9, 0x4

    .line 100
    invoke-virtual {v14, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 101
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v5

    and-int/lit8 v8, v5, 0x1

    and-int/lit8 v13, v5, 0x2

    const/4 v9, 0x2

    if-ne v13, v9, :cond_54

    const/4 v9, 0x1

    goto :goto_41

    :cond_54
    const/4 v9, 0x0

    :goto_41
    and-int/lit8 v5, v5, 0x8

    const/16 v13, 0x8

    if-ne v5, v13, :cond_55

    move/from16 v47, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    goto :goto_42

    :cond_55
    move/from16 v47, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    :goto_42
    if-eq v4, v8, :cond_56

    const/4 v8, 0x0

    goto :goto_43

    :cond_56
    move v8, v4

    :goto_43
    new-instance v13, Lcom/google/android/gms/internal/ads/zzahq;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzaht;

    .line 102
    invoke-direct {v4, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzaht;-><init>(ZZZ)V

    invoke-direct {v13, v4}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lcom/google/android/gms/internal/ads/zzaht;)V

    goto :goto_44

    :cond_57
    move/from16 v47, v4

    add-int/2addr v5, v8

    move-object/from16 v9, v68

    goto :goto_3f

    :cond_58
    move/from16 v47, v4

    move-object/from16 v68, v9

    const/16 v4, 0x8

    const/4 v13, 0x0

    goto :goto_45

    :cond_59
    move/from16 v47, v4

    move-object/from16 v68, v9

    :goto_44
    const/16 v4, 0x8

    :goto_45
    add-int/2addr v15, v0

    move/from16 v4, v47

    move/from16 v8, v66

    move/from16 v5, v67

    move-object/from16 v9, v68

    goto/16 :goto_3d

    :cond_5a
    move/from16 v47, v4

    move/from16 v67, v5

    move/from16 v66, v8

    move-object/from16 v68, v9

    const/16 v4, 0x8

    if-nez v13, :cond_5b

    const/4 v5, 0x0

    goto :goto_46

    .line 105
    :cond_5b
    new-instance v5, Lcom/google/android/gms/internal/ads/zzahx;

    invoke-direct {v5, v13}, Lcom/google/android/gms/internal/ads/zzahx;-><init>(Lcom/google/android/gms/internal/ads/zzahq;)V

    :goto_46
    if-eqz v5, :cond_60

    if-eqz v7, :cond_5d

    .line 102
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzfi;->zza:Lcom/google/android/gms/internal/ads/zzgjz;

    .line 103
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgjz;->size()I

    move-result v0

    const/4 v6, 0x2

    if-lt v0, v6, :cond_5c

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzahx;->zza()Z

    move-result v0

    const-string v6, "both eye views must be marked as available"

    .line 104
    invoke-static {v0, v6}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzahx;->zzb()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->zza()Lcom/google/android/gms/internal/ads/zzaht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaht;->zzc()Z

    move-result v0

    const/4 v6, 0x1

    xor-int/2addr v0, v6

    const-string v5, "for MV-HEVC, eye_views_reversed must be set to false"

    .line 105
    invoke-static {v0, v5}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    goto :goto_4b

    :cond_5c
    const/4 v6, 0x1

    const/4 v0, -0x1

    goto :goto_47

    :cond_5d
    const/4 v6, 0x1

    const/4 v0, -0x1

    const/4 v7, 0x0

    :goto_47
    if-ne v11, v0, :cond_5f

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzahx;->zzb()Lcom/google/android/gms/internal/ads/zzahq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->zza()Lcom/google/android/gms/internal/ads/zzaht;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzaht;->zzc()Z

    move-result v0

    if-eq v6, v0, :cond_5e

    move/from16 v69, v61

    move/from16 v8, v66

    move/from16 v5, v67

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/4 v11, 0x4

    goto :goto_4a

    :cond_5e
    move/from16 v11, v16

    move/from16 v69, v61

    move/from16 v8, v66

    move/from16 v5, v67

    :goto_48
    const/4 v0, -0x1

    goto :goto_49

    :cond_5f
    move/from16 v69, v61

    move/from16 v8, v66

    move/from16 v5, v67

    :goto_49
    const/4 v4, 0x3

    :goto_4a
    const/16 v50, 0x4

    move-object/from16 v61, v7

    goto/16 :goto_32

    :cond_60
    :goto_4b
    move/from16 v74, v11

    move/from16 v69, v61

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/16 v50, 0x4

    move-object/from16 v61, v7

    :cond_61
    :goto_4c
    const/4 v7, 0x2

    goto/16 :goto_5c

    :cond_62
    move-object/from16 v65, v0

    move/from16 v47, v4

    move/from16 v67, v5

    move/from16 v66, v8

    move-object/from16 v68, v9

    const/16 v4, 0x8

    const v0, 0x64766343

    if-eq v13, v0, :cond_85

    const v0, 0x64767643

    if-eq v13, v0, :cond_85

    const v0, 0x64767743

    if-ne v13, v0, :cond_63

    goto/16 :goto_5a

    :cond_63
    const v0, 0x76706343

    if-ne v13, v0, :cond_68

    add-int/lit8 v6, v6, 0xc

    if-nez v2, :cond_64

    const/4 v0, 0x1

    goto :goto_4d

    :cond_64
    const/4 v0, 0x0

    :goto_4d
    const/4 v2, 0x0

    .line 116
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 117
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 118
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    int-to-byte v0, v0

    .line 119
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v2

    int-to-byte v2, v2

    .line 120
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v3

    shr-int/lit8 v5, v3, 0x4

    shr-int/lit8 v6, v3, 0x1

    const v8, 0x76703038

    move/from16 v9, v61

    if-ne v9, v8, :cond_65

    const-string v8, "video/x-vnd.on2.vp8"

    goto :goto_4e

    .line 126
    :cond_65
    const-string v8, "video/x-vnd.on2.vp9"

    .line 120
    :goto_4e
    const-string v12, "video/x-vnd.on2.vp9"

    .line 121
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_66

    and-int/lit8 v1, v6, 0x7

    int-to-byte v6, v5

    .line 122
    sget v12, Lcom/google/android/gms/internal/ads/zzdc;->zza:I

    int-to-byte v1, v1

    const/16 v15, 0xc

    new-array v12, v15, [B

    const/4 v13, 0x1

    const/16 v47, 0x0

    aput-byte v13, v12, v47

    aput-byte v13, v12, v13

    const/16 v47, 0x2

    aput-byte v0, v12, v47

    const/4 v0, 0x3

    aput-byte v47, v12, v0

    const/16 v50, 0x4

    aput-byte v13, v12, v50

    aput-byte v2, v12, v16

    const/4 v2, 0x6

    aput-byte v0, v12, v2

    const/4 v2, 0x7

    aput-byte v13, v12, v2

    aput-byte v6, v12, v4

    const/16 v2, 0x9

    aput-byte v50, v12, v2

    aput-byte v13, v12, v22

    const/16 v2, 0xb

    aput-byte v1, v12, v2

    .line 123
    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    goto :goto_4f

    :cond_66
    const/4 v0, 0x3

    const/4 v13, 0x1

    const/16 v15, 0xc

    const/16 v50, 0x4

    :goto_4f
    and-int/lit8 v2, v3, 0x1

    .line 124
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v3

    .line 125
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v6

    .line 126
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)I

    move-result v3

    if-eq v13, v2, :cond_67

    const/4 v2, 0x2

    goto :goto_50

    :cond_67
    const/4 v2, 0x1

    :goto_50
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)I

    move-result v6

    move v4, v0

    move/from16 v47, v2

    move v12, v3

    move v3, v6

    move-object/from16 v61, v7

    move-object v2, v8

    move/from16 v69, v9

    const/4 v0, -0x1

    const/4 v7, 0x2

    move v8, v5

    goto/16 :goto_5d

    :cond_68
    move/from16 v9, v61

    const/4 v0, 0x3

    const/16 v15, 0xc

    const/16 v50, 0x4

    const v5, 0x61763143

    if-ne v13, v5, :cond_69

    add-int/lit8 v1, v10, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 127
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 128
    invoke-virtual {v14, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 129
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    .line 130
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 131
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzahy;->zzk(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzh;

    move-result-object v2

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzh;->zzg:I

    iget v6, v2, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    iget v8, v2, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzh;->zzd:I

    const-string v12, "video/av01"

    move v4, v0

    move-object/from16 v61, v7

    move/from16 v47, v8

    move/from16 v69, v9

    const/4 v0, -0x1

    const/4 v7, 0x2

    move v8, v5

    move v5, v3

    move v3, v2

    move-object v2, v12

    move v12, v6

    goto/16 :goto_5d

    :cond_69
    const v5, 0x636c6c69

    if-ne v13, v5, :cond_6b

    if-nez v39, :cond_6a

    .line 132
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzahy;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v39

    :cond_6a
    move-object/from16 v5, v39

    const/16 v6, 0x15

    .line 133
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 135
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v4, v0

    move-object/from16 v39, v5

    move-object/from16 v61, v7

    move/from16 v69, v9

    :goto_51
    move/from16 v8, v66

    move/from16 v5, v67

    const/4 v0, -0x1

    goto/16 :goto_32

    :cond_6b
    const v5, 0x6d646376

    if-ne v13, v5, :cond_6d

    if-nez v39, :cond_6c

    .line 136
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzahy;->zzm()Ljava/nio/ByteBuffer;

    move-result-object v39

    :cond_6c
    move-object/from16 v5, v39

    .line 137
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v6

    .line 138
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v8

    .line 139
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v13

    .line 140
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v4

    .line 141
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v15

    .line 142
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v0

    move-object/from16 v61, v7

    .line 143
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v7

    move/from16 v69, v9

    .line 144
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v9

    .line 145
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v70

    .line 146
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v72

    move/from16 v74, v11

    const/4 v11, 0x1

    .line 147
    invoke-virtual {v5, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 148
    invoke-virtual {v5, v15}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 149
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 150
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 151
    invoke-virtual {v5, v8}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 152
    invoke-virtual {v5, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 153
    invoke-virtual {v5, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 154
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 155
    invoke-virtual {v5, v9}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x2710

    div-long v6, v70, v6

    long-to-int v0, v6

    int-to-short v0, v0

    .line 156
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const-wide/16 v6, 0x2710

    div-long v6, v72, v6

    long-to-int v0, v6

    int-to-short v0, v0

    .line 157
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-object/from16 v39, v5

    :goto_52
    move/from16 v8, v66

    move/from16 v5, v67

    move/from16 v11, v74

    const/4 v0, -0x1

    const/4 v4, 0x3

    goto/16 :goto_32

    :cond_6d
    move-object/from16 v61, v7

    move/from16 v69, v9

    move/from16 v74, v11

    const v0, 0x64323633

    if-ne v13, v0, :cond_6f

    if-nez v2, :cond_6e

    const/4 v0, 0x0

    const/4 v7, 0x1

    goto :goto_53

    :cond_6e
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 158
    :goto_53
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    const-string v2, "video/3gpp"

    goto :goto_52

    :cond_6f
    const/4 v0, 0x0

    const v4, 0x65736473

    if-ne v13, v4, :cond_72

    if-nez v2, :cond_70

    const/4 v7, 0x1

    goto :goto_54

    :cond_70
    const/4 v7, 0x0

    .line 159
    :goto_54
    invoke-static {v7, v0}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 160
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/zzahy;->zzp(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahp;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahp;->zzb()[B

    move-result-object v4

    if-eqz v4, :cond_71

    .line 161
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v1

    :cond_71
    move-object/from16 v45, v0

    goto :goto_52

    :cond_72
    const v0, 0x62747274

    if-ne v13, v0, :cond_73

    .line 162
    invoke-static {v14, v6}, Lcom/google/android/gms/internal/ads/zzahy;->zzq(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahn;

    move-result-object v0

    move-object/from16 v41, v0

    goto :goto_52

    :cond_73
    const v0, 0x70617370

    if-ne v13, v0, :cond_74

    add-int/lit8 v6, v6, 0x8

    .line 163
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 164
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v0

    .line 165
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v4

    int-to-float v0, v0

    int-to-float v4, v4

    div-float/2addr v0, v4

    move/from16 v59, v0

    move/from16 v8, v66

    move/from16 v5, v67

    move/from16 v11, v74

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/16 v51, 0x1

    goto/16 :goto_5d

    :cond_74
    const v0, 0x73763364

    if-ne v13, v0, :cond_77

    add-int/lit8 v0, v6, 0x8

    :goto_55
    sub-int v4, v0, v6

    if-ge v4, v10, :cond_76

    .line 166
    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 167
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v4

    add-int/2addr v4, v0

    .line 168
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v5

    const v7, 0x70726f6a

    if-ne v5, v7, :cond_75

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v5

    .line 169
    invoke-static {v5, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    move-object/from16 v54, v0

    goto/16 :goto_52

    :cond_75
    move v0, v4

    goto :goto_55

    :cond_76
    move/from16 v8, v66

    move/from16 v5, v67

    move/from16 v11, v74

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/16 v54, 0x0

    goto/16 :goto_5d

    :cond_77
    const v0, 0x73743364

    if-ne v13, v0, :cond_7d

    .line 170
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    const/4 v4, 0x3

    .line 171
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    if-nez v0, :cond_7c

    .line 172
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    if-eqz v0, :cond_7b

    const/4 v5, 0x1

    if-eq v0, v5, :cond_7a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_79

    if-eq v0, v4, :cond_78

    goto :goto_56

    :cond_78
    move v11, v4

    goto/16 :goto_51

    :cond_79
    move/from16 v8, v66

    move/from16 v5, v67

    const/4 v0, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x2

    goto/16 :goto_5d

    :cond_7a
    move/from16 v8, v66

    move/from16 v5, v67

    const/4 v0, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x1

    goto/16 :goto_5d

    :cond_7b
    move/from16 v8, v66

    move/from16 v5, v67

    const/4 v0, -0x1

    const/4 v7, 0x2

    const/4 v11, 0x0

    goto/16 :goto_5d

    :cond_7c
    :goto_56
    const/4 v0, -0x1

    goto/16 :goto_4c

    :cond_7d
    const/4 v4, 0x3

    const v0, 0x61707643

    if-ne v13, v0, :cond_7e

    add-int/lit8 v6, v6, 0xc

    add-int/lit8 v0, v10, -0xc

    .line 173
    new-array v1, v0, [B

    .line 174
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v2, 0x0

    .line 175
    invoke-virtual {v14, v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 176
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzd([B)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzef;

    .line 178
    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/zzef;-><init>([B)V

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahy;->zzl(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzh;

    move-result-object v1

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzh;->zzf:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzh;->zzg:I

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzh;->zzb:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzh;->zzc:I

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzh;->zzd:I

    const-string v8, "video/apv"

    move-object/from16 v60, v0

    move v12, v6

    move/from16 v47, v7

    move/from16 v11, v74

    const/4 v0, -0x1

    const/4 v7, 0x2

    move/from16 v75, v3

    move v3, v1

    move-object v1, v2

    move-object v2, v8

    move v8, v5

    move/from16 v5, v75

    goto/16 :goto_5d

    :cond_7e
    const v0, 0x636f6c72

    if-ne v13, v0, :cond_7c

    const/4 v0, -0x1

    if-ne v12, v0, :cond_61

    if-ne v3, v0, :cond_84

    .line 179
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v3

    const v5, 0x6e636c78

    if-eq v3, v5, :cond_80

    const v5, 0x6e636c63

    if-ne v3, v5, :cond_7f

    goto :goto_57

    .line 184
    :cond_7f
    const-string v5, "Unsupported color type: "

    .line 185
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzev;->zze(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "BoxParsers"

    invoke-static {v5, v3}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v0

    move v12, v3

    move/from16 v8, v66

    move/from16 v5, v67

    move/from16 v11, v74

    goto/16 :goto_32

    .line 180
    :cond_80
    :goto_57
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v3

    .line 181
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v5

    const/4 v7, 0x2

    .line 182
    invoke-virtual {v14, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    const/16 v6, 0x13

    if-ne v10, v6, :cond_82

    .line 183
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v6

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_81

    const/16 v10, 0x13

    const/4 v6, 0x1

    goto :goto_58

    :cond_81
    const/16 v10, 0x13

    :cond_82
    const/4 v6, 0x0

    .line 184
    :goto_58
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)I

    move-result v3

    const/4 v8, 0x1

    if-eq v8, v6, :cond_83

    move v9, v7

    goto :goto_59

    :cond_83
    const/4 v9, 0x1

    :goto_59
    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)I

    move-result v5

    move v12, v3

    move v3, v5

    move/from16 v47, v9

    goto :goto_5c

    :cond_84
    const/4 v7, 0x2

    move v12, v0

    goto :goto_5c

    :cond_85
    :goto_5a
    move/from16 v74, v11

    move/from16 v69, v61

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/16 v50, 0x4

    move-object/from16 v61, v7

    const/4 v7, 0x2

    add-int/lit8 v5, v10, -0x8

    add-int/lit8 v6, v6, 0x8

    .line 106
    new-array v8, v5, [B

    const/4 v9, 0x0

    .line 107
    invoke-virtual {v14, v8, v9, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    if-eqz v1, :cond_86

    .line 108
    sget v5, Lcom/google/android/gms/internal/ads/zzgjz;->zzd:I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzgjw;

    .line 109
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzgjw;-><init>()V

    .line 110
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzgjw;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzgjw;

    .line 111
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzgjw;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjw;

    .line 112
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzgjw;->zzi()Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v5

    goto :goto_5b

    .line 115
    :cond_86
    const-string v1, "initializationData must already be set from hvcC or avcC atom"

    .line 113
    invoke-static {v9, v1}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    const/4 v5, 0x0

    .line 114
    :goto_5b
    invoke-virtual {v14, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 115
    invoke-static {v14}, Lcom/google/android/gms/internal/ads/zzeq;->zza(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object v1

    if-eqz v1, :cond_87

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzeq;->zza:Ljava/lang/String;

    const-string v2, "video/dolby-vision"

    move-object/from16 v60, v1

    :cond_87
    move-object v1, v5

    :goto_5c
    move/from16 v8, v66

    move/from16 v5, v67

    move/from16 v11, v74

    :goto_5d
    add-int v10, v63, v10

    move/from16 v4, v47

    move-object/from16 v7, v61

    move/from16 v13, v62

    move/from16 v15, v64

    move-object/from16 v0, v65

    move-object/from16 v9, v68

    move/from16 v61, v69

    goto/16 :goto_2d

    :cond_88
    :goto_5e
    move-object/from16 v65, v0

    move/from16 v47, v4

    move/from16 v67, v5

    move/from16 v66, v8

    move/from16 v74, v11

    move/from16 v62, v13

    move/from16 v64, v15

    const/4 v0, -0x1

    const/4 v4, 0x3

    const/4 v7, 0x2

    const/16 v50, 0x4

    if-nez v2, :cond_89

    move/from16 v8, v17

    move/from16 v6, v18

    move-object/from16 v1, v21

    move-object/from16 v3, v65

    goto/16 :goto_61

    .line 243
    :cond_89
    new-instance v5, Lcom/google/android/gms/internal/ads/zzs;

    .line 186
    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    move/from16 v6, v18

    .line 187
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 188
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v2, v60

    .line 189
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v2, v58

    .line 190
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzt(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v2, v57

    .line 191
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzu(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v2, v56

    .line 192
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzv(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v2, v55

    .line 193
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzw(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v8, v59

    .line 194
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzs;->zzz(F)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v8, v17

    .line 195
    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzs;->zzy(I)Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v2, v54

    .line 196
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzA([B)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v11, v74

    .line 197
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzs;->zzB(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 198
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v1, v52

    .line 199
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzo(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v1, v53

    .line 200
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzD(I)Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v11, v46

    .line 201
    invoke-virtual {v5, v11}, Lcom/google/android/gms/internal/ads/zzs;->zzq(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v1, v21

    .line 202
    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzs;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzg;-><init>()V

    .line 203
    invoke-virtual {v2, v12}, Lcom/google/android/gms/internal/ads/zzg;->zza(I)Lcom/google/android/gms/internal/ads/zzg;

    move/from16 v9, v47

    .line 204
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzg;->zzb(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 205
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzg;->zzc(I)Lcom/google/android/gms/internal/ads/zzg;

    if-eqz v39, :cond_8a

    .line 206
    invoke-virtual/range {v39 .. v39}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    goto :goto_5f

    :cond_8a
    const/4 v3, 0x0

    :goto_5f
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzg;->zzd([B)Lcom/google/android/gms/internal/ads/zzg;

    move/from16 v3, v67

    .line 207
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzg;->zze(I)Lcom/google/android/gms/internal/ads/zzg;

    move/from16 v3, v66

    .line 208
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzg;->zzf(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 209
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object v2

    .line 210
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzC(Lcom/google/android/gms/internal/ads/zzh;)Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v41, :cond_8b

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzahn;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v2

    .line 211
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzh(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual/range {v41 .. v41}, Lcom/google/android/gms/internal/ads/zzahn;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v2

    .line 212
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzi(I)Lcom/google/android/gms/internal/ads/zzs;

    goto :goto_60

    :cond_8b
    if-eqz v45, :cond_8c

    .line 215
    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzahp;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v2

    .line 213
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzh(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual/range {v45 .. v45}, Lcom/google/android/gms/internal/ads/zzahp;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v2

    .line 214
    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzi(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 215
    :cond_8c
    :goto_60
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v2

    move-object/from16 v3, v65

    iput-object v2, v3, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    :goto_61
    add-int v13, v62, v64

    .line 243
    invoke-virtual {v14, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    add-int/lit8 v12, v29, 0x1

    move-object/from16 v11, p4

    move-object v4, v1

    move-object v0, v3

    move v5, v6

    move/from16 v22, v7

    move/from16 v17, v8

    move-object v3, v14

    move/from16 v14, v19

    move/from16 v10, v26

    move/from16 v6, v28

    move-object/from16 v15, v37

    move/from16 v19, v38

    move/from16 v1, v40

    move-wide/from16 v7, v48

    const/16 v2, 0xc

    goto/16 :goto_1e

    :cond_8d
    move-object v3, v0

    move/from16 v28, v6

    move-wide/from16 v48, v7

    move-object/from16 v37, v15

    move/from16 v38, v19

    move v6, v5

    if-nez p5, :cond_8e

    const v0, 0x65647473

    move-object/from16 v1, v37

    .line 244
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 245
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zzn(Lcom/google/android/gms/internal/ads/zzet;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_8f

    .line 246
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, [J

    .line 247
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [J

    goto :goto_62

    :cond_8e
    move-object/from16 v1, v37

    :cond_8f
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_62
    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    if-nez v4, :cond_90

    move-object/from16 v0, p7

    goto/16 :goto_4

    :cond_90
    if-eqz v38, :cond_92

    new-instance v5, Lcom/google/android/gms/internal/ads/zzes;

    move/from16 v7, v38

    invoke-direct {v5, v7}, Lcom/google/android/gms/internal/ads/zzes;-><init>(I)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzu;->zza()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v7

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzu;->zzl:Lcom/google/android/gms/internal/ads/zzao;

    if-eqz v4, :cond_91

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzan;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    .line 248
    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzao;->zzd([Lcom/google/android/gms/internal/ads/zzan;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v4

    goto :goto_63

    :cond_91
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 251
    new-instance v4, Lcom/google/android/gms/internal/ads/zzao;

    new-array v8, v8, [Lcom/google/android/gms/internal/ads/zzan;

    aput-object v5, v8, v9

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 249
    invoke-direct {v4, v9, v10, v8}, Lcom/google/android/gms/internal/ads/zzao;-><init>(J[Lcom/google/android/gms/internal/ads/zzan;)V

    .line 250
    :goto_63
    invoke-virtual {v7, v4}, Lcom/google/android/gms/internal/ads/zzs;->zzk(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzs;

    .line 251
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v4

    :cond_92
    move-object/from16 v5, v27

    move-wide/from16 v9, v35

    move-wide/from16 v7, v48

    invoke-static {v7, v8, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzahr;->zza(JJLjava/lang/String;)J

    move-result-wide v20

    invoke-static {v7, v8, v9, v10, v5}, Lcom/google/android/gms/internal/ads/zzahr;->zzb(JJLjava/lang/String;)J

    move-result-wide v26

    new-instance v5, Lcom/google/android/gms/internal/ads/zzais;

    move-object/from16 v17, v5

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahu;->zzd:I

    move/from16 v29, v7

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahu;->zza:[Lcom/google/android/gms/internal/ads/zzait;

    move-object/from16 v30, v7

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzahu;->zzc:I

    move/from16 v31, v3

    move/from16 v18, v6

    move/from16 v19, v28

    move-wide/from16 v22, v43

    move-wide/from16 v24, v32

    move-object/from16 v28, v4

    move-object/from16 v32, v2

    move-object/from16 v33, v0

    invoke-direct/range {v17 .. v33}, Lcom/google/android/gms/internal/ads/zzais;-><init>(IIJJJJLcom/google/android/gms/internal/ads/zzu;I[Lcom/google/android/gms/internal/ads/zzait;I[J[J)V

    move-object/from16 v0, p7

    .line 252
    :goto_64
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzggr;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzais;

    if-eqz v2, :cond_93

    const v3, 0x6d646961

    .line 253
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    .line 263
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 253
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    const v3, 0x6d696e66

    .line 254
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 255
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    const v3, 0x7374626c

    .line 256
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzd(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 257
    move-object v3, v1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzet;

    move-object/from16 v3, p1

    const/4 v4, 0x0

    .line 258
    invoke-static {v2, v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzahy;->zzg(Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzet;Lcom/google/android/gms/internal/ads/zzadk;Z)Lcom/google/android/gms/internal/ads/zzaiv;

    move-result-object v1

    move-object/from16 v2, v42

    .line 259
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_65

    :cond_93
    move-object/from16 v3, p1

    move-object/from16 v2, v42

    goto/16 :goto_1

    :goto_65
    add-int/lit8 v14, v34, 0x1

    move-object/from16 v0, p0

    move-object/from16 v11, p4

    move-object v12, v2

    goto/16 :goto_0

    .line 45
    :cond_94
    const-string v0, "Malformed sample table (stbl) missing sample description (stsd)"

    const/4 v1, 0x0

    .line 260
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzas;

    move-result-object v0

    throw v0

    :cond_95
    move-object v2, v12

    return-object v2
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzeu;)Lcom/google/android/gms/internal/ads/zzao;
    .locals 14

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzao;

    const/4 v2, 0x0

    new-array v3, v2, [Lcom/google/android/gms/internal/ads/zzan;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzao;-><init>(J[Lcom/google/android/gms/internal/ads/zzan;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzd()I

    move-result v3

    if-lt v3, v0, :cond_15

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v6

    add-int/2addr v6, v3

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    const v8, 0x6d657461

    const/4 v9, 0x0

    if-ne v7, v8, :cond_5

    .line 5
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 7
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahy;->zzf(Lcom/google/android/gms/internal/ads/zzef;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v3

    if-ge v3, v6, :cond_4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v3

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    add-int/2addr v7, v3

    .line 9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    const v10, 0x696c7374

    if-ne v8, v10, :cond_3

    .line 11
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    new-instance v3, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v8

    if-ge v8, v7, :cond_1

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaih;->zzc(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzan;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 15
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    .line 32
    :cond_2
    new-instance v9, Lcom/google/android/gms/internal/ads/zzao;

    .line 16
    invoke-direct {v9, v3}, Lcom/google/android/gms/internal/ads/zzao;-><init>(Ljava/util/List;)V

    goto :goto_3

    .line 10
    :cond_3
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto :goto_1

    .line 17
    :cond_4
    :goto_3
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzao;->zzc(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v1

    goto/16 :goto_a

    :cond_5
    const v8, 0x736d7461

    if-ne v7, v8, :cond_13

    .line 18
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/16 v3, 0xc

    .line 19
    invoke-virtual {p0, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v7

    if-ge v7, v6, :cond_12

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v7

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v10

    const v11, 0x73617574

    if-ne v10, v11, :cond_11

    const/16 v7, 0x10

    if-ge v8, v7, :cond_6

    goto/16 :goto_9

    :cond_6
    const/4 v7, 0x4

    .line 23
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    const/4 v7, -0x1

    move v8, v2

    move v10, v8

    :goto_5
    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ge v8, v11, :cond_9

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v11

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v13

    if-nez v11, :cond_7

    move v7, v13

    goto :goto_6

    :cond_7
    if-ne v11, v12, :cond_8

    move v10, v13

    :cond_8
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    const v8, -0x7fffffff

    if-ne v7, v3, :cond_a

    const/16 v3, 0xf0

    goto :goto_8

    :cond_a
    const/16 v11, 0xd

    if-ne v7, v11, :cond_b

    const/16 v3, 0x78

    goto :goto_8

    :cond_b
    const/16 v11, 0x15

    if-eq v7, v11, :cond_d

    :cond_c
    :goto_7
    move v3, v8

    goto :goto_8

    .line 26
    :cond_d
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzd()I

    move-result v7

    if-lt v7, v0, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v7

    add-int/2addr v7, v0

    if-le v7, v6, :cond_e

    goto :goto_7

    .line 27
    :cond_e
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v11

    if-lt v7, v3, :cond_c

    const v3, 0x73726672

    if-eq v11, v3, :cond_f

    goto :goto_7

    .line 29
    :cond_f
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzF()I

    move-result v3

    :goto_8
    if-ne v3, v8, :cond_10

    goto :goto_9

    .line 25
    :cond_10
    new-instance v9, Lcom/google/android/gms/internal/ads/zzao;

    new-array v7, v12, [Lcom/google/android/gms/internal/ads/zzan;

    new-instance v8, Lcom/google/android/gms/internal/ads/zzagr;

    int-to-float v3, v3

    invoke-direct {v8, v3, v10}, Lcom/google/android/gms/internal/ads/zzagr;-><init>(FI)V

    aput-object v8, v7, v2

    invoke-direct {v9, v4, v5, v7}, Lcom/google/android/gms/internal/ads/zzao;-><init>(J[Lcom/google/android/gms/internal/ads/zzan;)V

    goto :goto_9

    :cond_11
    add-int/2addr v7, v8

    .line 22
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto/16 :goto_4

    .line 30
    :cond_12
    :goto_9
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzao;->zzc(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v1

    goto :goto_a

    :cond_13
    const v3, -0x56878686

    if-ne v7, v3, :cond_14

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahy;->zzh(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzao;->zzc(Lcom/google/android/gms/internal/ads/zzao;)Lcom/google/android/gms/internal/ads/zzao;

    move-result-object v1

    .line 32
    :cond_14
    :goto_a
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto/16 :goto_0

    :cond_15
    return-object v1
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzex;
    .locals 11

    const/16 v0, 0x8

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zza(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v2

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzD()J

    move-result-wide v0

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzD()J

    move-result-wide v2

    :goto_0
    move-wide v5, v0

    move-wide v7, v2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v9

    new-instance p0, Lcom/google/android/gms/internal/ads/zzex;

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzex;-><init>(JJJ)V

    return-object p0
.end method

.method public static zze(Lcom/google/android/gms/internal/ads/zzet;)Lcom/google/android/gms/internal/ads/zzao;
    .locals 12

    const v0, 0x68646c72    # 4.3148E24f

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v0

    const v1, 0x6b657973

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v1

    const v2, 0x696c7374

    .line 3
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz p0, :cond_7

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    .line 4
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zzi(Lcom/google/android/gms/internal/ads/zzef;)I

    move-result v0

    const v3, 0x6d647461

    if-eq v0, v3, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v1, 0xc

    .line 5
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v1

    .line 7
    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v6

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    add-int/lit8 v6, v6, -0x8

    .line 10
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    .line 11
    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0x8

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    new-instance v5, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzd()I

    move-result v6

    if-le v6, v0, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v6

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    add-int/2addr v6, v7

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ltz v7, :cond_4

    if-ge v7, v1, :cond_4

    .line 18
    aget-object v7, v3, v7

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v8

    if-ge v8, v6, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v9

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v10

    const v11, 0x64617461

    if-ne v10, v11, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v10

    add-int/lit8 v9, v9, -0x10

    .line 24
    new-array v11, v9, [B

    .line 25
    invoke-virtual {p0, v11, v4, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    new-instance v9, Lcom/google/android/gms/internal/ads/zzer;

    .line 26
    invoke-direct {v9, v7, v11, v10, v8}, Lcom/google/android/gms/internal/ads/zzer;-><init>(Ljava/lang/String;[BII)V

    goto :goto_3

    :cond_2
    add-int/2addr v8, v9

    .line 21
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto :goto_2

    :cond_3
    move-object v9, v2

    :goto_3
    if-eqz v9, :cond_5

    .line 27
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 17
    :cond_4
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x29

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "Skipped metadata with unknown key index: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BoxParsers"

    invoke-static {v8, v7}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_5
    :goto_4
    invoke-virtual {p0, v6}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    goto :goto_1

    .line 29
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Lcom/google/android/gms/internal/ads/zzao;

    invoke-direct {p0, v5}, Lcom/google/android/gms/internal/ads/zzao;-><init>(Ljava/util/List;)V

    return-object p0

    :cond_7
    :goto_5
    return-object v2
.end method

.method public static zzf(Lcom/google/android/gms/internal/ads/zzef;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v1

    const v2, 0x68646c72    # 4.3148E24f

    if-eq v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x4

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    return-void
.end method

.method public static zzg(Lcom/google/android/gms/internal/ads/zzais;Lcom/google/android/gms/internal/ads/zzet;Lcom/google/android/gms/internal/ads/zzadk;Z)Lcom/google/android/gms/internal/ads/zzaiv;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzas;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const v3, 0x7374737a

    .line 1
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzais;->zzg:Lcom/google/android/gms/internal/ads/zzu;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzahv;

    .line 2
    invoke-direct {v6, v3, v5}, Lcom/google/android/gms/internal/ads/zzahv;-><init>(Lcom/google/android/gms/internal/ads/zzeu;Lcom/google/android/gms/internal/ads/zzu;)V

    goto :goto_0

    :cond_0
    const v3, 0x73747a32

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v3

    if-eqz v3, :cond_43

    .line 133
    new-instance v6, Lcom/google/android/gms/internal/ads/zzahw;

    .line 5
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/ads/zzahw;-><init>(Lcom/google/android/gms/internal/ads/zzeu;)V

    .line 2
    :goto_0
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahs;->zza()I

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_1

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaiv;

    new-array v2, v5, [J

    new-array v3, v5, [I

    new-array v6, v5, [J

    new-array v7, v5, [I

    const-wide/16 v8, 0x0

    const/4 v11, 0x0

    const/4 v4, 0x0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v8

    move v9, v11

    .line 6
    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzais;[J[II[J[IJI)V

    return-object v10

    :cond_1
    iget v7, v1, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    const/4 v8, 0x2

    const-wide/16 v9, 0x0

    if-ne v7, v8, :cond_2

    iget-wide v11, v1, Lcom/google/android/gms/internal/ads/zzais;->zzf:J

    cmp-long v7, v11, v9

    if-lez v7, :cond_2

    int-to-float v7, v3

    long-to-float v11, v11

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzais;->zzg:Lcom/google/android/gms/internal/ads/zzu;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzu;->zza()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v12

    const v13, 0x49742400    # 1000000.0f

    div-float/2addr v11, v13

    div-float/2addr v7, v11

    .line 7
    invoke-virtual {v12, v7}, Lcom/google/android/gms/internal/ads/zzs;->zzx(F)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzais;->zzb(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v1

    :cond_2
    const v7, 0x7374636f

    .line 8
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v7

    if-nez v7, :cond_3

    const v7, 0x636f3634

    .line 9
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v7

    .line 137
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    move-object v12, v7

    check-cast v12, Lcom/google/android/gms/internal/ads/zzeu;

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    move v12, v5

    :goto_1
    const v13, 0x73747363

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v13

    .line 136
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    move-object v14, v13

    check-cast v14, Lcom/google/android/gms/internal/ads/zzeu;

    iget-object v13, v13, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const v14, 0x73747473

    .line 11
    invoke-virtual {v0, v14}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v14

    .line 135
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-object v15, v14

    check-cast v15, Lcom/google/android/gms/internal/ads/zzeu;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const v15, 0x73747373

    .line 12
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v15

    if-eqz v15, :cond_4

    iget-object v15, v15, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    goto :goto_2

    :cond_4
    const/4 v15, 0x0

    :goto_2
    const v4, 0x63747473

    .line 13
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    iget-object v4, v7, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzaho;

    .line 14
    invoke-direct {v7, v13, v4, v12}, Lcom/google/android/gms/internal/ads/zzaho;-><init>(Lcom/google/android/gms/internal/ads/zzef;Lcom/google/android/gms/internal/ads/zzef;Z)V

    const/16 v4, 0xc

    .line 15
    invoke-virtual {v14, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 16
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v12

    const/4 v13, -0x1

    add-int/2addr v12, v13

    .line 17
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v16

    .line 18
    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v5

    if-eqz v0, :cond_6

    .line 19
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 20
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v18

    goto :goto_4

    :cond_6
    const/16 v18, 0x0

    :goto_4
    if-eqz v15, :cond_8

    .line 21
    invoke-virtual {v15, v4}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 22
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v4

    if-lez v4, :cond_7

    .line 23
    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v45, v15

    move v15, v4

    move-object/from16 v4, v45

    goto :goto_5

    :cond_7
    move v15, v4

    move/from16 v19, v13

    const/4 v4, 0x0

    goto :goto_5

    :cond_8
    move/from16 v19, v13

    move-object v4, v15

    const/4 v15, 0x0

    :goto_5
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahs;->zzb()I

    move-result v8

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzais;->zzg:Lcom/google/android/gms/internal/ads/zzu;

    if-eq v8, v13, :cond_f

    iget-object v10, v9, Lcom/google/android/gms/internal/ads/zzu;->zzo:Ljava/lang/String;

    const-string v11, "audio/raw"

    .line 24
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-mlaw"

    .line 25
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    const-string v11, "audio/g711-alaw"

    .line 26
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    :cond_9
    if-nez v12, :cond_f

    if-nez v18, :cond_e

    if-nez v15, :cond_e

    iget v0, v7, Lcom/google/android/gms/internal/ads/zzaho;->zza:I

    new-array v4, v0, [J

    new-array v6, v0, [I

    .line 48
    :goto_6
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaho;->zza()Z

    move-result v10

    if-eqz v10, :cond_a

    iget v10, v7, Lcom/google/android/gms/internal/ads/zzaho;->zzb:I

    iget-wide v11, v7, Lcom/google/android/gms/internal/ads/zzaho;->zzd:J

    .line 49
    aput-wide v11, v4, v10

    iget v11, v7, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    .line 50
    aput v11, v6, v10

    goto :goto_6

    :cond_a
    int-to-long v10, v5

    const/16 v5, 0x2000

    .line 51
    div-int/2addr v5, v8

    const/4 v7, 0x0

    const/4 v12, 0x0

    :goto_7
    if-ge v7, v0, :cond_b

    .line 52
    aget v14, v6, v7

    .line 53
    sget-object v15, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    add-int/2addr v14, v5

    add-int/2addr v14, v13

    .line 54
    div-int/2addr v14, v5

    add-int/2addr v12, v14

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 55
    :cond_b
    new-array v7, v12, [J

    .line 56
    new-array v14, v12, [I

    .line 57
    new-array v15, v12, [J

    .line 58
    new-array v12, v12, [I

    move-object/from16 p3, v9

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    :goto_8
    if-ge v13, v0, :cond_d

    .line 59
    aget v19, v6, v13

    .line 60
    aget-wide v21, v4, v13

    move/from16 v45, v18

    move/from16 v18, v0

    move/from16 v0, v16

    move/from16 v16, v45

    move/from16 v46, v19

    move-object/from16 v19, v4

    move/from16 v4, v46

    :goto_9
    if-lez v4, :cond_c

    .line 61
    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v23

    .line 62
    aput-wide v21, v7, v16

    move/from16 v24, v5

    mul-int v5, v8, v23

    .line 63
    aput v5, v14, v16

    add-int/2addr v9, v5

    .line 64
    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    move-object/from16 v25, v6

    int-to-long v5, v2

    mul-long/2addr v5, v10

    .line 65
    aput-wide v5, v15, v16

    const/4 v5, 0x1

    .line 66
    aput v5, v12, v16

    .line 67
    aget v5, v14, v16

    int-to-long v5, v5

    add-long v21, v21, v5

    add-int v2, v2, v23

    sub-int v4, v4, v23

    add-int/lit8 v16, v16, 0x1

    move/from16 v5, v24

    move-object/from16 v6, v25

    goto :goto_9

    :cond_c
    move/from16 v24, v5

    move-object/from16 v25, v6

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v4, v19

    move/from16 v45, v16

    move/from16 v16, v0

    move/from16 v0, v18

    move/from16 v18, v45

    goto :goto_8

    :cond_d
    int-to-long v4, v2

    mul-long/2addr v10, v4

    int-to-long v4, v9

    move-object v9, v1

    move-wide v0, v10

    move-object v8, v12

    move-object v2, v14

    move-object v6, v15

    move/from16 v34, v16

    goto/16 :goto_1b

    :cond_e
    move-object/from16 p3, v9

    const/4 v12, 0x0

    goto :goto_a

    :cond_f
    move-object/from16 p3, v9

    .line 87
    :goto_a
    new-array v2, v3, [J

    new-array v8, v3, [I

    new-array v9, v3, [J

    new-array v10, v3, [I

    move-object/from16 v23, v1

    move/from16 v22, v18

    move/from16 v1, v19

    const/4 v11, 0x0

    const/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    move/from16 v18, v12

    const/4 v12, 0x0

    :goto_b
    const-string v13, "BoxParsers"

    if-ge v11, v3, :cond_1d

    move-wide/from16 v31, v24

    move/from16 v24, v19

    const/16 v19, 0x1

    :goto_c
    if-nez v24, :cond_11

    .line 27
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzaho;->zza()Z

    move-result v19

    if-eqz v19, :cond_10

    move-object/from16 v25, v14

    move/from16 v33, v15

    iget-wide v14, v7, Lcom/google/android/gms/internal/ads/zzaho;->zzd:J

    move/from16 v34, v3

    iget v3, v7, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    move/from16 v24, v3

    move-wide/from16 v31, v14

    move-object/from16 v14, v25

    move/from16 v15, v33

    move/from16 v3, v34

    goto :goto_c

    :cond_10
    move/from16 v34, v3

    move-object/from16 v25, v14

    move/from16 v33, v15

    const/4 v3, 0x0

    goto :goto_d

    :cond_11
    move/from16 v34, v3

    move-object/from16 v25, v14

    move/from16 v33, v15

    move/from16 v3, v24

    :goto_d
    if-nez v19, :cond_12

    const-string v1, "Unexpected end of chunk data"

    .line 39
    invoke-static {v13, v1}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {v2, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 41
    invoke-static {v8, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    .line 42
    invoke-static {v9, v11}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v3

    .line 43
    invoke-static {v10, v11}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    move-object v7, v1

    move-object v14, v2

    move-object v15, v3

    move v3, v11

    move/from16 v19, v24

    move/from16 v1, v30

    goto/16 :goto_14

    :cond_12
    move/from16 v13, v30

    if-nez v0, :cond_13

    goto :goto_10

    :cond_13
    :goto_e
    if-nez v21, :cond_15

    if-lez v22, :cond_14

    add-int/lit8 v22, v22, -0x1

    .line 28
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v21

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v13

    goto :goto_e

    :cond_14
    const/4 v14, -0x1

    const/16 v21, 0x0

    goto :goto_f

    :cond_15
    const/4 v14, -0x1

    :goto_f
    add-int/lit8 v21, v21, -0x1

    .line 30
    :goto_10
    invoke-interface {v6}, Lcom/google/android/gms/internal/ads/zzahs;->zzc()I

    move-result v14

    move-object v15, v6

    move-object/from16 v24, v7

    int-to-long v6, v14

    add-long v28, v28, v6

    if-le v14, v12, :cond_16

    move v12, v14

    .line 31
    :cond_16
    aput-wide v31, v2, v11

    .line 32
    aput v14, v8, v11

    move-object/from16 v35, v15

    int-to-long v14, v13

    add-long v14, v26, v14

    .line 33
    aput-wide v14, v9, v11

    if-nez v4, :cond_17

    const/4 v14, 0x1

    goto :goto_11

    :cond_17
    const/4 v14, 0x0

    .line 34
    :goto_11
    aput v14, v10, v11

    if-ne v11, v1, :cond_18

    const/4 v14, 0x1

    .line 35
    aput v14, v10, v11

    :cond_18
    if-eqz v4, :cond_1a

    if-ne v11, v1, :cond_1a

    add-int/lit8 v15, v33, -0x1

    if-lez v15, :cond_19

    .line 36
    move-object v1, v4

    check-cast v1, Lcom/google/android/gms/internal/ads/zzef;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v1

    const/4 v14, -0x1

    add-int/2addr v1, v14

    :cond_19
    move/from16 v19, v1

    move-object v14, v2

    goto :goto_12

    :cond_1a
    move/from16 v19, v1

    move-object v14, v2

    move/from16 v15, v33

    :goto_12
    int-to-long v1, v5

    add-long v26, v26, v1

    add-int/lit8 v16, v16, -0x1

    if-nez v16, :cond_1c

    if-lez v18, :cond_1b

    .line 37
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v1

    .line 38
    invoke-virtual/range {v25 .. v25}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v2

    add-int/lit8 v18, v18, -0x1

    move/from16 v16, v1

    move v5, v2

    goto :goto_13

    :cond_1b
    const/16 v16, 0x0

    :cond_1c
    :goto_13
    add-long v1, v31, v6

    const/4 v6, -0x1

    add-int/2addr v3, v6

    add-int/lit8 v11, v11, 0x1

    move/from16 v30, v13

    move-object/from16 v7, v24

    move-object/from16 v6, v35

    move/from16 v45, v19

    move/from16 v19, v3

    move/from16 v3, v34

    move-wide/from16 v46, v1

    move-object v2, v14

    move/from16 v1, v45

    move-object/from16 v14, v25

    move-wide/from16 v24, v46

    goto/16 :goto_b

    :cond_1d
    move-object v14, v2

    move/from16 v34, v3

    move/from16 v33, v15

    move-object v15, v9

    move-object v4, v10

    move-object v7, v14

    move/from16 v1, v30

    move-object v14, v8

    :goto_14
    int-to-long v1, v1

    add-long v10, v26, v1

    if-eqz v0, :cond_1f

    :goto_15
    if-lez v22, :cond_1f

    .line 44
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v1

    if-eqz v1, :cond_1e

    const/4 v0, 0x0

    goto :goto_16

    .line 45
    :cond_1e
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    add-int/lit8 v22, v22, -0x1

    goto :goto_15

    :cond_1f
    const/4 v0, 0x1

    :goto_16
    if-nez v33, :cond_25

    if-nez v16, :cond_24

    if-nez v19, :cond_23

    if-nez v18, :cond_22

    if-nez v21, :cond_21

    if-nez v0, :cond_20

    move/from16 v16, v3

    move-object/from16 v9, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_18

    :cond_20
    move/from16 v16, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v7

    move-object/from16 v9, v23

    goto/16 :goto_1a

    :cond_21
    move v8, v0

    move/from16 v16, v3

    move/from16 v6, v21

    move-object/from16 v9, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto :goto_18

    :cond_22
    move v8, v0

    move/from16 v16, v3

    move/from16 v5, v18

    move/from16 v6, v21

    move-object/from16 v9, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    goto :goto_18

    :cond_23
    move v8, v0

    move/from16 v16, v3

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v6, v21

    move-object/from16 v9, v23

    const/4 v0, 0x0

    const/4 v1, 0x0

    goto :goto_18

    :cond_24
    move v8, v0

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v6, v21

    move-object/from16 v9, v23

    const/4 v0, 0x0

    goto :goto_17

    :cond_25
    move v8, v0

    move/from16 v1, v16

    move/from16 v5, v18

    move/from16 v2, v19

    move/from16 v6, v21

    move-object/from16 v9, v23

    move/from16 v0, v33

    :goto_17
    move/from16 v16, v3

    .line 44
    :goto_18
    iget v3, v9, Lcom/google/android/gms/internal/ads/zzais;->zza:I

    .line 46
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x42

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x23

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x1a

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x21

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    add-int v18, v18, v19

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    add-int/lit8 v18, v18, 0x24

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v21, v4

    const/4 v4, 0x1

    if-eq v4, v8, :cond_26

    const-string v4, ", ctts invalid"

    goto :goto_19

    .line 47
    :cond_26
    const-string v4, ""

    :goto_19
    add-int v18, v18, v19

    .line 46
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v19

    move-object/from16 v22, v7

    add-int v7, v18, v19

    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Inconsistent stbl box for track "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ": remainingSynchronizationSamples "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampDelta "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesInChunk "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingTimestampDeltaChanges "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", remainingSamplesAtTimestampOffset "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v13, v0}, Lcom/google/android/gms/internal/ads/zzds;->zzc(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1a
    move-wide v0, v10

    move/from16 v34, v12

    move-object v2, v14

    move-object v6, v15

    move/from16 v3, v16

    move-object/from16 v8, v21

    move-object/from16 v7, v22

    move-wide/from16 v4, v28

    .line 67
    :goto_1b
    iget-wide v14, v9, Lcom/google/android/gms/internal/ads/zzais;->zzf:J

    const-wide/16 v10, 0x0

    cmp-long v12, v14, v10

    const-wide/32 v18, 0x7fffffff

    if-lez v12, :cond_27

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v4

    const-wide/32 v12, 0xf4240

    sget-object v16, Ljava/math/RoundingMode;->HALF_DOWN:Ljava/math/RoundingMode;

    .line 68
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v12, v4, v10

    if-lez v12, :cond_27

    cmp-long v10, v4, v18

    if-gez v10, :cond_27

    invoke-virtual/range {p3 .. p3}, Lcom/google/android/gms/internal/ads/zzu;->zza()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v10

    long-to-int v4, v4

    .line 69
    invoke-virtual {v10, v4}, Lcom/google/android/gms/internal/ads/zzs;->zzh(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/google/android/gms/internal/ads/zzais;->zzb(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v4

    goto :goto_1c

    :cond_27
    move-object v4, v9

    :goto_1c
    iget-wide v14, v4, Lcom/google/android/gms/internal/ads/zzais;->zzc:J

    const-wide/32 v12, 0xf4240

    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v10, v0

    move-wide/from16 v21, v14

    .line 70
    invoke-static/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v37

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzais;->zzi:[J

    const-wide/32 v13, 0xf4240

    if-nez v5, :cond_28

    move-wide/from16 v11, v21

    .line 71
    invoke-static {v6, v13, v14, v11, v12}, Lcom/google/android/gms/internal/ads/zzeo;->zzu([JJJ)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    move-object/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v32, v7

    move-object/from16 v33, v2

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move/from16 v39, v3

    .line 72
    invoke-direct/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzais;[J[II[J[IJI)V

    return-object v0

    :cond_28
    move-wide/from16 v11, v21

    array-length v9, v5

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2d

    iget v9, v4, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    if-ne v9, v10, :cond_2c

    .line 73
    array-length v15, v6

    const/4 v9, 0x2

    if-lt v15, v9, :cond_2c

    iget-object v9, v4, Lcom/google/android/gms/internal/ads/zzais;->zzj:[J

    .line 134
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 74
    check-cast v9, [J

    const/4 v10, 0x0

    aget-wide v21, v9, v10

    .line 75
    aget-wide v23, v5, v10

    iget-wide v9, v4, Lcom/google/android/gms/internal/ads/zzais;->zzd:J

    sget-object v16, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v29, v9

    move-wide/from16 v9, v23

    move-wide/from16 v23, v11

    move-object/from16 v33, v2

    move/from16 p3, v3

    move-wide v2, v13

    move-wide/from16 v13, v29

    move/from16 v25, v15

    move-object/from16 v15, v16

    .line 76
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    add-long v9, v21, v9

    add-int/lit8 v15, v25, -0x1

    const/4 v11, 0x4

    .line 77
    invoke-static {v11, v15}, Ljava/lang/Math;->min(II)I

    move-result v11

    const/4 v12, 0x0

    invoke-static {v12, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    add-int/lit8 v13, v25, -0x4

    .line 78
    invoke-static {v13, v15}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 79
    aget-wide v14, v6, v12

    cmp-long v12, v14, v21

    if-gtz v12, :cond_2b

    aget-wide v11, v6, v11

    cmp-long v11, v21, v11

    if-gez v11, :cond_2b

    aget-wide v11, v6, v13

    cmp-long v11, v11, v9

    if-gez v11, :cond_2b

    const-wide/16 v11, 0x2

    add-long/2addr v11, v0

    cmp-long v11, v9, v11

    if-gtz v11, :cond_2b

    sub-long v9, v0, v9

    const-wide/16 v11, 0x0

    .line 80
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    const/4 v9, 0x0

    .line 81
    aget-wide v10, v6, v9

    sub-long v9, v21, v10

    iget-object v11, v4, Lcom/google/android/gms/internal/ads/zzais;->zzg:Lcom/google/android/gms/internal/ads/zzu;

    iget v11, v11, Lcom/google/android/gms/internal/ads/zzu;->zzH:I

    int-to-long v13, v11

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v11, v13

    move-wide/from16 v21, v13

    move-wide/from16 v13, v23

    .line 82
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v27

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide/from16 v9, v25

    move-wide/from16 v11, v21

    .line 83
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v27, v11

    if-nez v13, :cond_29

    cmp-long v13, v9, v11

    if-eqz v13, :cond_2b

    const-wide/16 v11, 0x0

    goto :goto_1d

    :cond_29
    move-wide/from16 v11, v27

    :goto_1d
    cmp-long v13, v11, v18

    if-gtz v13, :cond_2b

    cmp-long v13, v9, v18

    if-lez v13, :cond_2a

    goto :goto_1e

    :cond_2a
    long-to-int v0, v11

    move-object/from16 v1, p2

    .line 124
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzadk;->zza:I

    long-to-int v0, v9

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzadk;->zzb:I

    move-wide/from16 v13, v23

    .line 84
    invoke-static {v6, v2, v3, v13, v14}, Lcom/google/android/gms/internal/ads/zzeo;->zzu([JJJ)V

    const/4 v0, 0x0

    .line 85
    aget-wide v25, v5, v0

    const-wide/32 v27, 0xf4240

    sget-object v31, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 86
    invoke-static/range {v25 .. v31}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v37

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    move-object/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v32, v7

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move/from16 v39, p3

    .line 87
    invoke-direct/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzais;[J[II[J[IJI)V

    return-object v0

    :cond_2b
    :goto_1e
    move-wide/from16 v13, v23

    goto :goto_1f

    :cond_2c
    move-object/from16 v33, v2

    move/from16 p3, v3

    move-wide v13, v11

    :goto_1f
    const/4 v2, 0x1

    const/4 v9, 0x1

    goto :goto_20

    :cond_2d
    move-object/from16 v33, v2

    move/from16 p3, v3

    move-wide v13, v11

    move v2, v10

    :goto_20
    if-ne v9, v2, :cond_2f

    const/4 v2, 0x0

    .line 88
    aget-wide v10, v5, v2

    const-wide/16 v15, 0x0

    cmp-long v3, v10, v15

    if-nez v3, :cond_2f

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzais;->zzj:[J

    .line 133
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 126
    check-cast v3, [J

    aget-wide v18, v3, v2

    const/4 v5, 0x0

    .line 127
    :goto_21
    array-length v2, v6

    if-ge v5, v2, :cond_2e

    .line 128
    aget-wide v2, v6, v5

    sub-long v9, v2, v18

    const-wide/32 v11, 0xf4240

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-wide v2, v13

    .line 129
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    .line 130
    aput-wide v9, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_2e
    move-wide v2, v13

    sub-long v9, v0, v18

    const-wide/32 v11, 0xf4240

    sget-object v15, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 131
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v37

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    move-object/from16 v30, v0

    move-object/from16 v31, v4

    move-object/from16 v32, v7

    move-object/from16 v35, v6

    move-object/from16 v36, v8

    move/from16 v39, p3

    .line 132
    invoke-direct/range {v30 .. v39}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzais;[J[II[J[IJI)V

    return-object v0

    :cond_2f
    move-wide v2, v13

    iget v0, v4, Lcom/google/android/gms/internal/ads/zzais;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_30

    const/4 v1, 0x1

    goto :goto_22

    :cond_30
    const/4 v1, 0x0

    :goto_22
    iget-object v15, v4, Lcom/google/android/gms/internal/ads/zzais;->zzj:[J

    new-array v13, v9, [I

    new-array v14, v9, [I

    .line 125
    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    move-object/from16 v16, v15

    check-cast v16, [J

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v18, 0x0

    :goto_23
    array-length v10, v5

    if-ge v11, v10, :cond_37

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    .line 90
    aget-wide v7, v16, v11

    const-wide/16 v22, -0x1

    cmp-long v10, v7, v22

    if-eqz v10, :cond_36

    .line 91
    aget-wide v22, v5, v11

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    iget-wide v13, v4, Lcom/google/android/gms/internal/ads/zzais;->zzd:J

    sget-object v26, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v27, v4

    move v4, v9

    move-wide/from16 v9, v22

    move-object/from16 v23, v5

    move/from16 v22, v11

    move v5, v12

    move-wide v11, v2

    move-object/from16 v28, v15

    move-object/from16 v15, v26

    .line 92
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 93
    invoke-static {v6, v7, v8, v11, v11}, Lcom/google/android/gms/internal/ads/zzeo;->zzm([JJZZ)I

    move-result v12

    aput v12, v24, v22

    add-long/2addr v7, v9

    const/4 v15, 0x0

    .line 94
    invoke-static {v6, v7, v8, v1, v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzo([JJZZ)I

    move-result v9

    aput v9, v25, v22

    .line 95
    aget v9, v24, v22

    .line 96
    :goto_24
    aget v10, v24, v22

    if-ltz v10, :cond_31

    aget v12, v21, v10

    and-int/2addr v12, v11

    if-nez v12, :cond_31

    add-int/lit8 v10, v10, -0x1

    .line 97
    aput v10, v24, v22

    const/4 v11, 0x1

    goto :goto_24

    :cond_31
    if-gez v10, :cond_32

    .line 98
    aput v9, v24, v22

    .line 99
    :goto_25
    aget v10, v24, v22

    aget v9, v25, v22

    if-ge v10, v9, :cond_32

    aget v9, v21, v10

    const/4 v11, 0x1

    and-int/2addr v9, v11

    if-nez v9, :cond_32

    add-int/lit8 v10, v10, 0x1

    .line 100
    aput v10, v24, v22

    goto :goto_25

    :cond_32
    const/4 v9, 0x2

    if-ne v0, v9, :cond_33

    .line 101
    aget v11, v25, v22

    if-eq v10, v11, :cond_33

    .line 102
    :goto_26
    aget v10, v25, v22

    array-length v11, v6

    const/4 v12, -0x1

    add-int/2addr v11, v12

    if-ge v10, v11, :cond_34

    add-int/lit8 v10, v10, 0x1

    aget-wide v13, v6, v10

    cmp-long v11, v13, v7

    if-gtz v11, :cond_34

    .line 103
    aput v10, v25, v22

    goto :goto_26

    :cond_33
    const/4 v12, -0x1

    .line 104
    :cond_34
    aget v7, v25, v22

    aget v8, v24, v22

    sub-int v10, v7, v8

    add-int/2addr v5, v10

    if-eq v4, v8, :cond_35

    const/4 v4, 0x1

    goto :goto_27

    :cond_35
    move v4, v15

    :goto_27
    or-int v4, v18, v4

    move/from16 v18, v4

    move v4, v7

    goto :goto_28

    :cond_36
    move-object/from16 v27, v4

    move-object/from16 v23, v5

    move v4, v9

    move/from16 v22, v11

    move v5, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v28, v15

    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v15, 0x0

    :goto_28
    add-int/lit8 v11, v22, 0x1

    move v9, v4

    move v12, v5

    move-object/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v5, v23

    move-object/from16 v13, v24

    move-object/from16 v14, v25

    move-object/from16 v4, v27

    move-object/from16 v15, v28

    goto/16 :goto_23

    :cond_37
    move-object/from16 v27, v4

    move-object/from16 v23, v5

    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move v5, v12

    move-object/from16 v24, v13

    move-object/from16 v25, v14

    move-object/from16 v28, v15

    const/4 v15, 0x0

    move/from16 v4, p3

    if-eq v5, v4, :cond_38

    const/4 v0, 0x1

    goto :goto_29

    :cond_38
    move v0, v15

    :goto_29
    or-int v0, v18, v0

    if-eqz v0, :cond_39

    .line 105
    new-array v1, v5, [J

    goto :goto_2a

    :cond_39
    move-object/from16 v1, v19

    :goto_2a
    if-eqz v0, :cond_3a

    .line 106
    new-array v4, v5, [I

    goto :goto_2b

    :cond_3a
    move-object/from16 v4, v33

    :goto_2b
    const/4 v7, 0x1

    if-ne v7, v0, :cond_3b

    move/from16 v34, v15

    :cond_3b
    if-eqz v0, :cond_3c

    .line 107
    new-array v7, v5, [I

    goto :goto_2c

    :cond_3c
    move-object/from16 v7, v21

    .line 108
    :goto_2c
    new-array v5, v5, [J

    move v8, v15

    move v9, v8

    move v10, v9

    move-object/from16 v13, v23

    move/from16 v11, v34

    const-wide/16 v16, 0x0

    :goto_2d
    array-length v12, v13

    if-ge v8, v12, :cond_41

    .line 109
    aget-wide v22, v28, v8

    .line 110
    aget v12, v24, v8

    .line 111
    aget v14, v25, v8

    if-eqz v0, :cond_3d

    sub-int v15, v14, v12

    move/from16 p1, v11

    move-object/from16 v11, v19

    .line 112
    invoke-static {v11, v12, v1, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v11, v33

    .line 113
    invoke-static {v11, v12, v4, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v11, v21

    .line 114
    invoke-static {v11, v12, v7, v9, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2e

    :cond_3d
    move/from16 p1, v11

    move-object/from16 v11, v21

    :goto_2e
    move/from16 v15, p1

    move/from16 v20, v9

    move/from16 v21, v10

    :goto_2f
    if-ge v12, v14, :cond_40

    move-object/from16 v26, v11

    move-object/from16 v9, v27

    iget-wide v10, v9, Lcom/google/android/gms/internal/ads/zzais;->zzd:J

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v36, 0xf4240

    move-wide/from16 v34, v16

    move-wide/from16 v38, v10

    .line 115
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v29

    .line 116
    aget-wide v10, v6, v12

    sub-long v10, v10, v22

    const-wide/32 v31, 0xf4240

    sget-object v27, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    move-object/from16 v34, v6

    move-object v6, v9

    move-wide v9, v10

    move/from16 v35, v12

    move-object/from16 v45, v33

    move-object/from16 v33, v26

    move-object/from16 v26, v45

    move-wide/from16 v11, v31

    move-object/from16 v31, v13

    move/from16 v32, v14

    move-wide v13, v2

    move-wide/from16 p2, v2

    move v2, v15

    const/4 v3, 0x0

    move-object/from16 v15, v27

    .line 117
    invoke-static/range {v9 .. v15}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-gez v13, :cond_3e

    move v13, v3

    goto :goto_30

    :cond_3e
    const/4 v13, 0x1

    :goto_30
    const/4 v14, 0x1

    xor-int/2addr v13, v14

    or-int v21, v13, v21

    add-long v29, v29, v9

    .line 118
    aput-wide v29, v5, v20

    if-eqz v0, :cond_3f

    .line 119
    aget v9, v4, v20

    if-le v9, v2, :cond_3f

    .line 120
    aget v2, v26, v35

    :cond_3f
    move v15, v2

    add-int/lit8 v20, v20, 0x1

    add-int/lit8 v2, v35, 0x1

    move v12, v2

    move-object/from16 v27, v6

    move-object/from16 v13, v31

    move/from16 v14, v32

    move-object/from16 v11, v33

    move-object/from16 v6, v34

    move-wide/from16 v2, p2

    move-object/from16 v33, v26

    goto :goto_2f

    :cond_40
    move-wide/from16 p2, v2

    move-object/from16 v34, v6

    move-object/from16 v31, v13

    move v2, v15

    move-object/from16 v6, v27

    move-object/from16 v26, v33

    const/4 v3, 0x0

    move-object/from16 v33, v11

    const-wide/16 v11, 0x0

    .line 121
    aget-wide v9, v31, v8

    add-long v16, v16, v9

    add-int/lit8 v8, v8, 0x1

    move v11, v2

    move v15, v3

    move/from16 v9, v20

    move/from16 v10, v21

    move-object/from16 v21, v33

    move-object/from16 v6, v34

    move-wide/from16 v2, p2

    move-object/from16 v33, v26

    goto/16 :goto_2d

    :cond_41
    move/from16 p1, v11

    move-object/from16 v6, v27

    iget-wide v2, v6, Lcom/google/android/gms/internal/ads/zzais;->zzd:J

    sget-object v40, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    const-wide/32 v36, 0xf4240

    move-wide/from16 v34, v16

    move-wide/from16 v38, v2

    .line 122
    invoke-static/range {v34 .. v40}, Lcom/google/android/gms/internal/ads/zzeo;->zzt(JJJLjava/math/RoundingMode;)J

    move-result-wide v42

    if-eqz v10, :cond_42

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzais;->zzg:Lcom/google/android/gms/internal/ads/zzu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzu;->zza()Lcom/google/android/gms/internal/ads/zzs;

    move-result-object v0

    const/4 v2, 0x1

    .line 123
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzs;->zzs(Z)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzais;->zzb(Lcom/google/android/gms/internal/ads/zzu;)Lcom/google/android/gms/internal/ads/zzais;

    move-result-object v0

    move-object/from16 v36, v0

    goto :goto_31

    :cond_42
    move-object/from16 v36, v6

    :goto_31
    new-instance v0, Lcom/google/android/gms/internal/ads/zzaiv;

    .line 124
    array-length v2, v1

    move-object/from16 v35, v0

    move-object/from16 v37, v1

    move-object/from16 v38, v4

    move/from16 v39, p1

    move-object/from16 v40, v5

    move-object/from16 v41, v7

    move/from16 v44, v2

    invoke-direct/range {v35 .. v44}, Lcom/google/android/gms/internal/ads/zzaiv;-><init>(Lcom/google/android/gms/internal/ads/zzais;[J[II[J[IJI)V

    return-object v0

    .line 3
    :cond_43
    const-string v0, "Track has no sample table size information"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzas;

    move-result-object v0

    throw v0
.end method

.method private static zzh(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzao;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 3
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2b

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x2d

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 8
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzao;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/android/gms/internal/ads/zzan;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzew;

    .line 9
    invoke-direct {v4, v2, p0}, Lcom/google/android/gms/internal/ads/zzew;-><init>(FF)V

    aput-object v4, v3, v1

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzao;-><init>(J[Lcom/google/android/gms/internal/ads/zzan;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static zzi(Lcom/google/android/gms/internal/ads/zzef;)I
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result p0

    return p0
.end method

.method private static zzj([BII)Ljava/lang/String;
    .locals 11

    .line 1
    array-length v0, p0

    const/16 v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzghc;->zzh(Z)V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x10

    .line 2
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v3

    .line 3
    :goto_1
    array-length v5, p0

    add-int/lit8 v5, v5, -0x3

    if-ge v4, v5, :cond_1

    .line 4
    aget-byte v5, p0, v4

    add-int/lit8 v6, v4, 0x1

    aget-byte v6, p0, v6

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, p0, v7

    add-int/lit8 v8, v4, 0x3

    aget-byte v8, p0, v8

    invoke-static {v5, v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzgne;->zze(BBBB)I

    move-result v5

    shr-int/lit8 v6, v5, 0x10

    .line 5
    sget-object v7, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    shr-int/lit8 v7, v5, 0x8

    const/16 v8, 0xff

    and-int/2addr v7, v8

    add-int/lit8 v7, v7, -0x80

    mul-int/lit16 v9, v7, 0x36fb

    and-int/2addr v6, v8

    div-int/lit16 v9, v9, 0x2710

    add-int/2addr v9, v6

    .line 6
    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    shl-int/2addr v9, v1

    and-int/2addr v5, v8

    add-int/lit8 v5, v5, -0x80

    mul-int/lit16 v7, v7, 0x1c01

    mul-int/lit16 v10, v5, 0xd7f

    div-int/lit16 v10, v10, 0x2710

    sub-int v10, v6, v10

    div-int/lit16 v7, v7, 0x2710

    sub-int/2addr v10, v7

    .line 7
    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    mul-int/lit16 v5, v5, 0x457e

    div-int/lit16 v5, v5, 0x2710

    add-int/2addr v6, v5

    .line 8
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    or-int v6, v9, v7

    or-int/2addr v5, v6

    .line 9
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v2, [Ljava/lang/Object;

    aput-object v5, v6, v3

    const-string v5, "%06x"

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x4

    goto :goto_1

    .line 10
    :cond_1
    const-string p0, ", "

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 11
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzggw;->zzd(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\npalette: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zzk(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzh;
    .locals 15

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzg;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzee;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzf(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    const/4 v3, 0x3

    .line 4
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v4

    const/4 v5, 0x6

    .line 5
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v5

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v6

    const/16 v7, 0xc

    const/16 v8, 0xa

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v4, v10, :cond_2

    if-eqz v5, :cond_1

    if-eq p0, v6, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    .line 10
    :goto_0
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zze(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 11
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zzf(I)Lcom/google/android/gms/internal/ads/zzg;

    goto :goto_1

    :cond_1
    move v5, v9

    move v4, v10

    :cond_2
    if-gt v4, v10, :cond_4

    if-eq p0, v5, :cond_3

    move v8, v2

    .line 8
    :cond_3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zze(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 9
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zzf(I)Lcom/google/android/gms/internal/ads/zzg;

    :cond_4
    :goto_1
    const/16 v4, 0xd

    .line 12
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 13
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    const/4 v5, 0x4

    .line 14
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v6

    const-string v8, "BoxParsers"

    if-eq v6, p0, :cond_5

    .line 15
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x16

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unsupported obu_type: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    .line 17
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v6

    if-eqz v6, :cond_6

    const-string p0, "Unsupported obu_extension_flag"

    .line 18
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    .line 20
    :cond_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v6

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    if-eqz v6, :cond_8

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v6

    const/16 v11, 0x7f

    if-gt v6, v11, :cond_7

    goto :goto_2

    .line 48
    :cond_7
    const-string p0, "Excessive obu_size"

    .line 65
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    .line 23
    :cond_8
    :goto_2
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v6

    .line 24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    .line 25
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v11

    if-eqz v11, :cond_9

    const-string p0, "Unsupported reduced_still_picture_header"

    .line 26
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    .line 28
    :cond_9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v11

    if-eqz v11, :cond_a

    const-string p0, "Unsupported timing_info_present_flag"

    .line 29
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    .line 31
    :cond_a
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v11

    if-eqz v11, :cond_b

    const-string p0, "Unsupported initial_display_delay_present_flag"

    .line 32
    invoke-static {v8, p0}, Lcom/google/android/gms/internal/ads/zzds;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 v8, 0x5

    .line 34
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v11

    move v12, v9

    :goto_3
    const/4 v13, 0x7

    if-gt v12, v11, :cond_d

    .line 35
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 36
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v14

    if-le v14, v13, :cond_c

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    :cond_c
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 38
    :cond_d
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v7

    .line 39
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v5

    add-int/2addr v7, p0

    .line 40
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    add-int/2addr v5, p0

    .line 41
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 43
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 44
    :cond_e
    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 45
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 46
    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 47
    :cond_f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v7

    if-eqz v7, :cond_10

    goto :goto_4

    .line 48
    :cond_10
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v7

    if-lez v7, :cond_11

    .line 49
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v7

    if-nez v7, :cond_11

    .line 50
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    :cond_11
    if-eqz v5, :cond_12

    .line 51
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 52
    :cond_12
    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 53
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v3

    if-ne v6, v10, :cond_13

    if-eqz v3, :cond_14

    .line 54
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    goto :goto_5

    :cond_13
    if-ne v6, p0, :cond_14

    goto :goto_6

    .line 55
    :cond_14
    :goto_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v3

    if-eqz v3, :cond_15

    move v9, p0

    .line 56
    :cond_15
    :goto_6
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 57
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v3

    .line 58
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v5

    .line 59
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v2

    if-nez v9, :cond_18

    if-ne v3, p0, :cond_18

    if-ne v5, v4, :cond_17

    if-nez v2, :cond_16

    move v1, p0

    move v3, v1

    goto :goto_8

    :cond_16
    move v3, p0

    goto :goto_7

    :cond_17
    move v3, p0

    :cond_18
    move v4, v5

    .line 60
    :goto_7
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v1

    .line 61
    :goto_8
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzg;->zza(I)Lcom/google/android/gms/internal/ads/zzg;

    if-ne v1, p0, :cond_19

    goto :goto_9

    :cond_19
    move p0, v10

    .line 62
    :goto_9
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzg;->zzb(I)Lcom/google/android/gms/internal/ads/zzg;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)I

    move-result p0

    .line 63
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzg;->zzc(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 64
    :cond_1a
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0
.end method

.method private static zzl(Lcom/google/android/gms/internal/ads/zzef;)Lcom/google/android/gms/internal/ads/zzh;
    .locals 11

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzg;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzee;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzi()[B

    move-result-object v2

    array-length v3, v2

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzee;-><init>([BI)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result p0

    const/16 v2, 0x8

    mul-int/2addr p0, v2

    .line 2
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzf(I)V

    const/4 p0, 0x1

    .line 3
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    .line 4
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    .line 5
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v6

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_2

    const/4 v8, 0x6

    .line 7
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v8

    .line 9
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzg()V

    const/16 v9, 0xb

    .line 10
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    const/4 v9, 0x4

    .line 11
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzee;->zzh(I)V

    .line 12
    invoke-virtual {v1, v9}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v9

    add-int/2addr v9, v2

    .line 13
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzg;->zze(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 14
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzg;->zzf(I)Lcom/google/android/gms/internal/ads/zzg;

    .line 15
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    if-eqz v8, :cond_1

    .line 16
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v8

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzee;->zzj(I)I

    move-result v9

    .line 18
    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzee;->zzo(I)V

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzee;->zzi()Z

    move-result v10

    .line 20
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzh;->zzb(I)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zza(I)Lcom/google/android/gms/internal/ads/zzg;

    if-eq p0, v10, :cond_0

    const/4 v8, 0x2

    goto :goto_2

    :cond_0
    move v8, p0

    .line 21
    :goto_2
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zzb(I)Lcom/google/android/gms/internal/ads/zzg;

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzh;->zzc(I)I

    move-result v8

    .line 22
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzg;->zzc(I)Lcom/google/android/gms/internal/ads/zzg;

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzg;->zzg()Lcom/google/android/gms/internal/ads/zzh;

    move-result-object p0

    return-object p0
.end method

.method private static zzm()Ljava/nio/ByteBuffer;
    .locals 2

    const/16 v0, 0x19

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static zzn(Lcom/google/android/gms/internal/ads/zzet;)Landroid/util/Pair;
    .locals 8

    const v0, 0x656c7374

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzet;->zzc(I)Lcom/google/android/gms/internal/ads/zzeu;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeu;->zza:Lcom/google/android/gms/internal/ads/zzef;

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzahy;->zza(I)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v1

    new-array v2, v1, [J

    new-array v3, v1, [J

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_4

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzJ()J

    move-result-wide v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v6

    :goto_1
    aput-wide v6, v2, v4

    if-ne v0, v5, :cond_2

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzD()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v6

    int-to-long v6, v6

    :goto_2
    aput-wide v6, v3, v4

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzv()S

    move-result v6

    if-ne v6, v5, :cond_3

    const/4 v5, 0x2

    .line 8
    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unsupported media rate."

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static zzo(Lcom/google/android/gms/internal/ads/zzef;IIIILjava/lang/String;ZLcom/google/android/gms/internal/ads/zzp;Lcom/google/android/gms/internal/ads/zzahu;I)V
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzas;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    add-int/lit8 v8, v2, 0x10

    .line 1
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v8, 0x6

    const/16 v9, 0x8

    if-eqz p6, :cond_0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v11

    .line 3
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    const/4 v11, 0x0

    :goto_0
    const/16 v14, 0x20

    const/4 v15, 0x4

    const/4 v12, 0x2

    const/4 v10, 0x1

    const/16 v13, 0x10

    if-eqz v11, :cond_a

    if-ne v11, v10, :cond_1

    goto :goto_2

    :cond_1
    if-ne v11, v12, :cond_54

    .line 11
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzD()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v18

    .line 13
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v8, v10

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v10

    .line 15
    invoke-virtual {v0, v15}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v11

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v18

    and-int/lit8 v19, v18, 0x1

    and-int/lit8 v18, v18, 0x2

    if-nez v19, :cond_8

    if-ne v11, v9, :cond_2

    const/4 v11, 0x3

    goto :goto_1

    :cond_2
    if-ne v11, v13, :cond_4

    if-eqz v18, :cond_3

    const/high16 v11, 0x10000000

    goto :goto_1

    :cond_3
    move v11, v12

    goto :goto_1

    :cond_4
    const/16 v13, 0x18

    if-ne v11, v13, :cond_6

    if-eqz v18, :cond_5

    const/high16 v11, 0x50000000

    goto :goto_1

    :cond_5
    const/16 v11, 0x15

    goto :goto_1

    :cond_6
    if-ne v11, v14, :cond_9

    if-eqz v18, :cond_7

    const/high16 v11, 0x60000000

    goto :goto_1

    :cond_7
    const/16 v11, 0x16

    goto :goto_1

    :cond_8
    if-ne v11, v14, :cond_9

    move v11, v15

    goto :goto_1

    :cond_9
    const/4 v11, -0x1

    .line 18
    :goto_1
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    move v9, v10

    const/4 v10, 0x0

    goto :goto_3

    .line 5
    :cond_a
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v9

    .line 6
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzF()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    .line 8
    invoke-virtual {v0, v10}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v10

    const/4 v14, 0x1

    if-ne v11, v14, :cond_b

    .line 10
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :cond_b
    const/4 v11, -0x1

    :goto_3
    const v13, 0x73616d72

    const v14, 0x73617762

    const v15, 0x69616d66

    if-ne v1, v15, :cond_c

    const/4 v8, -0x1

    const/4 v9, -0x1

    goto :goto_5

    :cond_c
    if-ne v1, v13, :cond_d

    const/16 v8, 0x1f40

    :goto_4
    const/4 v9, 0x1

    goto :goto_5

    :cond_d
    if-ne v1, v14, :cond_e

    const/16 v1, 0x3e80

    move v8, v1

    move v1, v14

    goto :goto_4

    :cond_e
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v12

    const v15, 0x656e6361

    if-ne v1, v15, :cond_11

    .line 19
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzahy;->zzr(Lcom/google/android/gms/internal/ads/zzef;II)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 20
    iget-object v15, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    if-nez v6, :cond_f

    const/4 v6, 0x0

    goto :goto_6

    .line 21
    :cond_f
    iget-object v14, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Lcom/google/android/gms/internal/ads/zzait;

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzait;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v14}, Lcom/google/android/gms/internal/ads/zzp;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzp;

    move-result-object v6

    .line 20
    :goto_6
    iget-object v14, v7, Lcom/google/android/gms/internal/ads/zzahu;->zza:[Lcom/google/android/gms/internal/ads/zzait;

    .line 22
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzait;

    aput-object v1, v14, p9

    :cond_10
    move v1, v15

    .line 23
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    :cond_11
    const v14, 0x61632d33

    const-string v15, "audio/mhm1"

    const-string v23, "audio/raw"

    if-ne v1, v14, :cond_12

    const-string v13, "audio/ac3"

    goto/16 :goto_a

    :cond_12
    const v14, 0x65632d33

    if-ne v1, v14, :cond_13

    .line 132
    const-string v13, "audio/eac3"

    goto/16 :goto_a

    :cond_13
    const v14, 0x61632d34

    if-ne v1, v14, :cond_14

    const-string v13, "audio/ac4"

    goto/16 :goto_a

    :cond_14
    const v14, 0x64747363

    if-ne v1, v14, :cond_15

    const-string v13, "audio/vnd.dts"

    goto/16 :goto_a

    :cond_15
    const v14, 0x64747368

    if-eq v1, v14, :cond_2a

    const v14, 0x6474736c

    if-ne v1, v14, :cond_16

    goto/16 :goto_9

    :cond_16
    const v14, 0x64747365

    if-ne v1, v14, :cond_17

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    goto/16 :goto_a

    :cond_17
    const v14, 0x64747378

    if-ne v1, v14, :cond_18

    const-string v13, "audio/vnd.dts.uhd;profile=p2"

    goto/16 :goto_a

    :cond_18
    if-ne v1, v13, :cond_19

    const-string v13, "audio/3gpp"

    goto/16 :goto_a

    :cond_19
    const v13, 0x73617762

    if-ne v1, v13, :cond_1a

    const-string v13, "audio/amr-wb"

    goto/16 :goto_a

    :cond_1a
    const v13, 0x736f7774

    if-ne v1, v13, :cond_1b

    :goto_7
    move-object/from16 v13, v23

    const/4 v11, 0x2

    goto/16 :goto_a

    :cond_1b
    const v13, 0x74776f73

    if-ne v1, v13, :cond_1c

    move-object/from16 v13, v23

    const/high16 v11, 0x10000000

    goto/16 :goto_a

    :cond_1c
    const v13, 0x6c70636d

    if-ne v1, v13, :cond_1e

    const/4 v13, -0x1

    if-ne v11, v13, :cond_1d

    goto :goto_7

    :cond_1d
    move-object/from16 v13, v23

    goto/16 :goto_a

    :cond_1e
    const v13, 0x2e6d7032

    if-eq v1, v13, :cond_29

    const v13, 0x2e6d7033

    if-ne v1, v13, :cond_1f

    goto :goto_8

    :cond_1f
    const v13, 0x6d686131

    if-ne v1, v13, :cond_20

    const-string v13, "audio/mha1"

    goto :goto_a

    :cond_20
    const v13, 0x6d686d31

    if-ne v1, v13, :cond_21

    move-object v13, v15

    goto :goto_a

    :cond_21
    const v13, 0x616c6163

    if-ne v1, v13, :cond_22

    const-string v13, "audio/alac"

    goto :goto_a

    :cond_22
    const v13, 0x616c6177

    if-ne v1, v13, :cond_23

    const-string v13, "audio/g711-alaw"

    goto :goto_a

    :cond_23
    const v13, 0x756c6177

    if-ne v1, v13, :cond_24

    const-string v13, "audio/g711-mlaw"

    goto :goto_a

    :cond_24
    const v13, 0x4f707573

    if-ne v1, v13, :cond_25

    const-string v13, "audio/opus"

    goto :goto_a

    :cond_25
    const v13, 0x664c6143

    if-ne v1, v13, :cond_26

    const-string v13, "audio/flac"

    goto :goto_a

    :cond_26
    const v13, 0x6d6c7061

    if-ne v1, v13, :cond_27

    const-string v13, "audio/true-hd"

    goto :goto_a

    :cond_27
    const v13, 0x69616d66

    if-ne v1, v13, :cond_28

    const-string v1, "audio/iamf"

    move/from16 v27, v13

    move-object v13, v1

    move/from16 v1, v27

    goto :goto_a

    :cond_28
    const/4 v13, 0x0

    goto :goto_a

    :cond_29
    :goto_8
    const-string v13, "audio/mpeg"

    goto :goto_a

    :cond_2a
    :goto_9
    const-string v13, "audio/vnd.dts.hd"

    :goto_a
    move/from16 v16, v11

    const/16 p7, 0x0

    const/4 v11, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    :goto_b
    sub-int v14, v12, v2

    if-ge v14, v3, :cond_51

    .line 24
    invoke-virtual {v0, v12}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v14

    if-lez v14, :cond_2b

    const/4 v2, 0x1

    goto :goto_c

    :cond_2b
    const/4 v2, 0x0

    .line 26
    :goto_c
    const-string v3, "childAtomSize must be positive"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v2

    move/from16 p9, v8

    const v8, 0x6d686143

    if-ne v2, v8, :cond_2e

    add-int/lit8 v2, v12, 0x8

    .line 28
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v2, 0x1

    .line 29
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v3

    .line 31
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 32
    invoke-static {v13, v15}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 33
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v3, v8, v2

    const-string v3, "mhm1.%02X"

    invoke-static {v3, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v24, v15

    goto :goto_d

    :cond_2c
    const/4 v2, 0x0

    .line 34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v24, v15

    const/4 v8, 0x1

    new-array v15, v8, [Ljava/lang/Object;

    aput-object v3, v15, v2

    const-string v3, "mha1.%02X"

    invoke-static {v3, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 35
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzt()I

    move-result v8

    new-array v15, v8, [B

    .line 36
    invoke-virtual {v0, v15, v2, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    if-nez v11, :cond_2d

    .line 37
    invoke-static {v15}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move/from16 v8, p9

    move/from16 v25, v1

    move v1, v2

    goto :goto_10

    .line 38
    :cond_2d
    invoke-interface {v11, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzgjz;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    goto :goto_f

    :cond_2e
    move-object/from16 v24, v15

    const v8, 0x6d686150

    if-ne v2, v8, :cond_31

    add-int/lit8 v2, v12, 0x8

    .line 39
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 40
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v2

    if-lez v2, :cond_30

    new-array v3, v2, [B

    const/4 v8, 0x0

    .line 41
    invoke-virtual {v0, v3, v8, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    if-nez v11, :cond_2f

    .line 42
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move-object/from16 v3, p7

    move/from16 v25, v1

    move v1, v8

    const/16 v17, 0x3

    move/from16 v8, p9

    goto/16 :goto_22

    .line 43
    :cond_2f
    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzgjz;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    :goto_e
    move-object/from16 v3, p7

    :goto_f
    move/from16 v8, p9

    move/from16 v25, v1

    const/4 v1, 0x0

    :goto_10
    const/16 v17, 0x3

    goto/16 :goto_22

    :cond_30
    :goto_11
    move/from16 v8, p9

    move/from16 v25, v1

    const/4 v1, 0x0

    const/16 v17, 0x3

    goto/16 :goto_21

    :cond_31
    const v8, 0x65736473

    if-eq v2, v8, :cond_49

    if-eqz p6, :cond_36

    const v15, 0x77617665

    if-ne v2, v15, :cond_36

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v2

    if-lt v2, v12, :cond_32

    const/4 v8, 0x0

    const/4 v15, 0x1

    goto :goto_12

    :cond_32
    const/4 v8, 0x0

    const/4 v15, 0x0

    .line 95
    :goto_12
    invoke-static {v15, v8}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    :goto_13
    sub-int v8, v2, v12

    if-ge v8, v14, :cond_35

    .line 96
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    if-lez v8, :cond_33

    const/4 v15, 0x1

    goto :goto_14

    :cond_33
    const/4 v15, 0x0

    .line 98
    :goto_14
    invoke-static {v15, v3}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v15

    move-object/from16 v26, v3

    const v3, 0x65736473

    if-eq v15, v3, :cond_34

    add-int/2addr v2, v8

    move-object/from16 v3, v26

    goto :goto_13

    :cond_34
    move/from16 v8, p9

    goto :goto_15

    :cond_35
    move/from16 v8, p9

    const/4 v2, -0x1

    :goto_15
    const/4 v3, -0x1

    const/4 v15, 0x2

    const/16 v17, 0x3

    goto/16 :goto_1a

    :cond_36
    const v3, 0x62747274

    if-ne v2, v3, :cond_37

    .line 44
    invoke-static {v0, v12}, Lcom/google/android/gms/internal/ads/zzahy;->zzq(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahn;

    move-result-object v22

    goto :goto_e

    :cond_37
    const v3, 0x64616333

    if-ne v2, v3, :cond_38

    add-int/lit8 v2, v12, 0x8

    .line 45
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 46
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzabv;->zza(Lcom/google/android/gms/internal/ads/zzef;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto :goto_11

    :cond_38
    const v3, 0x64656333

    if-ne v2, v3, :cond_39

    add-int/lit8 v2, v12, 0x8

    .line 47
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 48
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzabv;->zzb(Lcom/google/android/gms/internal/ads/zzef;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto/16 :goto_11

    :cond_39
    const v3, 0x64616334

    if-ne v2, v3, :cond_3a

    add-int/lit8 v2, v12, 0x8

    .line 49
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 50
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzaby;->zza(Lcom/google/android/gms/internal/ads/zzef;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto/16 :goto_11

    :cond_3a
    const v3, 0x646d6c70

    if-ne v2, v3, :cond_3c

    if-lez v10, :cond_3b

    move-object/from16 v3, p7

    move/from16 v25, v1

    move v8, v10

    const/4 v1, 0x0

    const/4 v9, 0x2

    goto/16 :goto_10

    .line 118
    :cond_3b
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x31

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Invalid sample rate for Dolby TrueHD MLP stream: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ads/zzas;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzas;

    move-result-object v0

    throw v0

    :cond_3c
    const/4 v3, 0x0

    const v8, 0x64647473

    if-eq v2, v8, :cond_48

    const v8, 0x75647473

    if-ne v2, v8, :cond_3d

    goto/16 :goto_19

    :cond_3d
    const v8, 0x644f7073

    if-ne v2, v8, :cond_3e

    add-int/lit8 v2, v12, 0x8

    add-int/lit8 v8, v14, -0x8

    .line 58
    sget-object v11, Lcom/google/android/gms/internal/ads/zzahy;->zzb:[B

    .line 59
    array-length v15, v11

    add-int v3, v15, v8

    invoke-static {v11, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 60
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 61
    invoke-virtual {v0, v3, v15, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 62
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzadr;->zza([B)Ljava/util/List;

    move-result-object v11

    goto/16 :goto_e

    :cond_3e
    const v3, 0x64664c61

    if-ne v2, v3, :cond_3f

    add-int/lit8 v2, v12, 0xc

    add-int/lit8 v3, v14, -0xc

    add-int/lit8 v8, v14, -0x8

    .line 63
    new-array v8, v8, [B

    const/16 v11, 0x66

    const/4 v15, 0x0

    .line 64
    aput-byte v11, v8, v15

    const/16 v11, 0x4c

    const/4 v15, 0x1

    .line 65
    aput-byte v11, v8, v15

    const/16 v11, 0x61

    const/4 v15, 0x2

    .line 66
    aput-byte v11, v8, v15

    const/16 v11, 0x43

    const/16 v17, 0x3

    .line 67
    aput-byte v11, v8, v17

    .line 68
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v2, 0x4

    .line 69
    invoke-virtual {v0, v8, v2, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 70
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move-object/from16 v3, p7

    move/from16 v8, p9

    move/from16 v25, v1

    :goto_16
    const/4 v1, 0x0

    goto/16 :goto_22

    :cond_3f
    const/4 v3, 0x4

    const/4 v15, 0x2

    const/16 v17, 0x3

    const v8, 0x616c6163

    if-ne v2, v8, :cond_40

    add-int/lit8 v2, v12, 0xc

    add-int/lit8 v8, v14, -0xc

    .line 71
    new-array v9, v8, [B

    .line 72
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 v2, 0x0

    .line 73
    invoke-virtual {v0, v9, v2, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 74
    sget v2, Lcom/google/android/gms/internal/ads/zzdc;->zza:I

    new-instance v2, Lcom/google/android/gms/internal/ads/zzef;

    .line 75
    invoke-direct {v2, v9}, Lcom/google/android/gms/internal/ads/zzef;-><init>([B)V

    const/16 v8, 0x9

    .line 76
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 77
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v8

    const/16 v11, 0x14

    .line 78
    invoke-virtual {v2, v11}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 79
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzef;->zzH()I

    move-result v2

    .line 80
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    .line 81
    iget-object v8, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 82
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 83
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move-object/from16 v3, p7

    move/from16 v25, v1

    move v9, v2

    goto :goto_16

    :cond_40
    const v8, 0x69616362

    if-ne v2, v8, :cond_41

    add-int/lit8 v2, v12, 0x9

    .line 84
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzP()J

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Lcom/google/android/gms/internal/ads/zzgne;->zza(J)I

    move-result v2

    .line 86
    new-array v8, v2, [B

    const/4 v11, 0x0

    .line 87
    invoke-virtual {v0, v8, v11, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    .line 88
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdc;->zza([B)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move/from16 v8, p9

    move/from16 v25, v1

    move-object v3, v2

    goto :goto_16

    :cond_41
    const v8, 0x70636d43

    if-ne v2, v8, :cond_47

    add-int/lit8 v2, v12, 0xc

    .line 90
    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 91
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v2

    const/4 v8, 0x1

    and-int/2addr v2, v8

    if-eqz v2, :cond_42

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_17

    .line 94
    :cond_42
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 92
    :goto_17
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v8

    const v3, 0x6970636d

    if-ne v1, v3, :cond_43

    .line 93
    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzeo;->zzz(ILjava/nio/ByteOrder;)I

    move-result v2

    const/16 v3, 0x20

    goto :goto_18

    :cond_43
    const v3, 0x6670636d

    if-ne v1, v3, :cond_44

    const/16 v3, 0x20

    if-ne v8, v3, :cond_45

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 94
    invoke-virtual {v2, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x4

    goto :goto_18

    :cond_44
    const/16 v3, 0x20

    :cond_45
    move/from16 v2, v16

    :goto_18
    const/4 v8, -0x1

    move-object/from16 v3, p7

    if-eq v2, v8, :cond_46

    move/from16 v8, p9

    move/from16 v25, v1

    move/from16 v16, v2

    move-object/from16 v13, v23

    goto/16 :goto_16

    :cond_46
    move/from16 v8, p9

    move/from16 v25, v1

    move/from16 v16, v2

    goto/16 :goto_16

    :cond_47
    move/from16 v8, p9

    goto/16 :goto_20

    :cond_48
    :goto_19
    const/16 v3, 0x20

    const/4 v15, 0x2

    const/16 v17, 0x3

    .line 50
    new-instance v2, Lcom/google/android/gms/internal/ads/zzs;

    .line 51
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    .line 52
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 53
    invoke-virtual {v2, v13}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 54
    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzE(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v8, p9

    .line 55
    invoke-virtual {v2, v8}, Lcom/google/android/gms/internal/ads/zzs;->zzF(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 56
    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzs;->zzq(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzs;

    .line 57
    invoke-virtual {v2, v5}, Lcom/google/android/gms/internal/ads/zzs;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 58
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v2

    iput-object v2, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    goto/16 :goto_20

    :cond_49
    move/from16 v8, p9

    const/4 v15, 0x2

    const/16 v17, 0x3

    move v2, v12

    const/4 v3, -0x1

    :goto_1a
    if-eq v2, v3, :cond_50

    .line 100
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzahy;->zzp(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahp;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzahp;->zza()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzahp;->zzb()[B

    move-result-object v13

    if-eqz v13, :cond_4f

    const-string v11, "audio/vorbis"

    .line 101
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4d

    new-instance v11, Lcom/google/android/gms/internal/ads/zzef;

    .line 102
    invoke-direct {v11, v13}, Lcom/google/android/gms/internal/ads/zzef;-><init>([B)V

    const/4 v3, 0x1

    .line 103
    invoke-virtual {v11, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    const/4 v15, 0x0

    .line 104
    :goto_1b
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzd()I

    move-result v20

    const/16 v3, 0xff

    if-lez v20, :cond_4a

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzn()I

    move-result v0

    if-ne v0, v3, :cond_4a

    const/4 v0, 0x1

    .line 105
    invoke-virtual {v11, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    add-int/lit16 v15, v15, 0xff

    move-object/from16 v0, p0

    const/4 v3, 0x1

    goto :goto_1b

    .line 106
    :cond_4a
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    add-int/2addr v15, v0

    const/4 v0, 0x0

    .line 107
    :goto_1c
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzd()I

    move-result v25

    if-lez v25, :cond_4b

    move/from16 v25, v1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzn()I

    move-result v1

    if-ne v1, v3, :cond_4c

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v11, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    add-int/lit16 v0, v0, 0xff

    move/from16 v1, v25

    goto :goto_1c

    :cond_4b
    move/from16 v25, v1

    :cond_4c
    const/4 v1, 0x1

    .line 109
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v3

    add-int/2addr v0, v3

    .line 110
    new-array v3, v15, [B

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v11

    const/4 v1, 0x0

    .line 111
    invoke-static {v13, v11, v3, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v11, v15

    array-length v15, v13

    add-int/2addr v11, v0

    sub-int/2addr v15, v11

    .line 112
    new-array v0, v15, [B

    .line 113
    invoke-static {v13, v11, v0, v1, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/zzgjz;->zzk(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    goto :goto_1e

    :cond_4d
    move/from16 v25, v1

    const/4 v1, 0x0

    const-string v0, "audio/mp4a-latm"

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 116
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzabt;->zza([B)Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget v8, v0, Lcom/google/android/gms/internal/ads/zzabs;->zza:I

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzb:I

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:Ljava/lang/String;

    goto :goto_1d

    :cond_4e
    move-object/from16 v0, p7

    .line 117
    :goto_1d
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzgjz;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgjz;

    move-result-object v11

    move-object v3, v0

    goto :goto_1f

    :cond_4f
    move/from16 v25, v1

    const/4 v1, 0x0

    :goto_1e
    move-object/from16 v3, p7

    :goto_1f
    move-object v13, v2

    goto :goto_22

    :cond_50
    :goto_20
    move/from16 v25, v1

    const/4 v1, 0x0

    :goto_21
    move-object/from16 v3, p7

    :goto_22
    add-int/2addr v12, v14

    move-object/from16 v0, p0

    move/from16 v2, p2

    move-object/from16 p7, v3

    move-object/from16 v15, v24

    move/from16 v1, v25

    move/from16 v3, p3

    goto/16 :goto_b

    .line 94
    :cond_51
    iget-object v0, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    if-nez v0, :cond_54

    if-eqz v13, :cond_54

    new-instance v0, Lcom/google/android/gms/internal/ads/zzs;

    .line 119
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzs;-><init>()V

    .line 120
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/ads/zzs;->zzb(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 121
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzs;->zzm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    move-object/from16 v3, p7

    .line 122
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzs;->zzj(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    .line 123
    invoke-virtual {v0, v9}, Lcom/google/android/gms/internal/ads/zzs;->zzE(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 124
    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzs;->zzF(I)Lcom/google/android/gms/internal/ads/zzs;

    move/from16 v1, v16

    .line 125
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzG(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 126
    invoke-virtual {v0, v11}, Lcom/google/android/gms/internal/ads/zzs;->zzp(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzs;

    .line 127
    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzs;->zzq(Lcom/google/android/gms/internal/ads/zzp;)Lcom/google/android/gms/internal/ads/zzs;

    .line 128
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzs;->zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzs;

    if-eqz v21, :cond_52

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzahp;->zzc()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzh(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual/range {v21 .. v21}, Lcom/google/android/gms/internal/ads/zzahp;->zzd()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v1

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzi(I)Lcom/google/android/gms/internal/ads/zzs;

    goto :goto_23

    :cond_52
    if-eqz v22, :cond_53

    .line 133
    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzahn;->zza()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v1

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzh(I)Lcom/google/android/gms/internal/ads/zzs;

    invoke-virtual/range {v22 .. v22}, Lcom/google/android/gms/internal/ads/zzahn;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgne;->zzb(J)I

    move-result v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzs;->zzi(I)Lcom/google/android/gms/internal/ads/zzs;

    .line 133
    :cond_53
    :goto_23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzs;->zzM()Lcom/google/android/gms/internal/ads/zzu;

    move-result-object v0

    iput-object v0, v7, Lcom/google/android/gms/internal/ads/zzahu;->zzb:Lcom/google/android/gms/internal/ads/zzu;

    :cond_54
    return-void
.end method

.method private static zzp(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahp;
    .locals 11

    add-int/lit8 p1, p1, 0xc

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 3
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahy;->zzs(Lcom/google/android/gms/internal/ads/zzef;)I

    const/4 v0, 0x2

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :cond_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    :cond_1
    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 9
    :cond_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 10
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahy;->zzs(Lcom/google/android/gms/internal/ads/zzef;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    .line 12
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzar;->zzf(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "audio/mpeg"

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts"

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "audio/vnd.dts.hd"

    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x4

    .line 16
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v3

    .line 19
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 20
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzahy;->zzs(Lcom/google/android/gms/internal/ads/zzef;)I

    move-result p1

    .line 21
    new-array v5, p1, [B

    const/4 v6, 0x0

    .line 22
    invoke-virtual {p0, v5, v6, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    const-wide/16 p0, 0x0

    cmp-long v6, v3, p0

    const-wide/16 v7, -0x1

    if-gtz v6, :cond_4

    move-wide v9, v7

    goto :goto_0

    :cond_4
    move-wide v9, v3

    :goto_0
    cmp-long p0, v0, p0

    if-lez p0, :cond_5

    move-wide v6, v0

    goto :goto_1

    :cond_5
    move-wide v6, v7

    :goto_1
    new-instance p0, Lcom/google/android/gms/internal/ads/zzahp;

    move-object v1, p0

    move-object v3, v5

    move-wide v4, v9

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0

    .line 15
    :cond_6
    :goto_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzahp;

    const/4 v3, 0x0

    const-wide/16 v6, -0x1

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzahp;-><init>(Ljava/lang/String;[BJJ)V

    return-object p0
.end method

.method private static zzq(Lcom/google/android/gms/internal/ads/zzef;I)Lcom/google/android/gms/internal/ads/zzahn;
    .locals 3

    add-int/lit8 p1, p1, 0x8

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    const/4 p1, 0x4

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide v0

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzz()J

    move-result-wide p0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzahn;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzahn;-><init>(JJ)V

    return-object v2
.end method

.method private static zzr(Lcom/google/android/gms/internal/ads/zzef;II)Landroid/util/Pair;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzas;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzg()I

    move-result v1

    :goto_0
    sub-int v2, v1, p1

    move/from16 v4, p2

    if-ge v2, v4, :cond_11

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v2, :cond_0

    move v7, v5

    goto :goto_1

    :cond_0
    move v7, v6

    :goto_1
    const-string v8, "childAtomSize must be positive"

    .line 3
    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    const v8, 0x73696e66

    if-ne v7, v8, :cond_10

    add-int/lit8 v7, v1, 0x8

    const/4 v8, -0x1

    move v10, v6

    move v9, v8

    const/4 v11, 0x0

    const/4 v15, 0x0

    :goto_2
    sub-int v12, v7, v1

    const/4 v13, 0x4

    if-ge v12, v2, :cond_4

    .line 5
    invoke-virtual {v0, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v12

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v14

    const v3, 0x66726d61

    if-ne v14, v3, :cond_1

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    goto :goto_3

    :cond_1
    const v3, 0x7363686d

    if-ne v14, v3, :cond_2

    .line 9
    invoke-virtual {v0, v13}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    .line 10
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v13, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzK(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    :cond_2
    const v3, 0x73636869

    if-ne v14, v3, :cond_3

    move v9, v7

    move v10, v12

    :cond_3
    :goto_3
    add-int/2addr v7, v12

    goto :goto_2

    :cond_4
    const-string v3, "cenc"

    .line 11
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbc1"

    .line 12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cens"

    .line 13
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "cbcs"

    .line 14
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_d

    :cond_6
    :goto_4
    if-eqz v15, :cond_7

    move v3, v5

    goto :goto_5

    :cond_7
    move v3, v6

    :goto_5
    const-string v7, "frma atom is mandatory"

    .line 15
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    if-eq v9, v8, :cond_8

    move v3, v5

    goto :goto_6

    :cond_8
    move v3, v6

    :goto_6
    const-string v7, "schi atom is mandatory"

    .line 16
    invoke-static {v3, v7}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    add-int/lit8 v3, v9, 0x8

    :goto_7
    sub-int v7, v3, v9

    if-ge v7, v10, :cond_d

    .line 17
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzef;->zzh(I)V

    .line 18
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v7

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v8

    const v12, 0x74656e63

    if-ne v8, v12, :cond_c

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzB()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzahy;->zza(I)I

    move-result v3

    .line 21
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    if-nez v3, :cond_9

    .line 22
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/ads/zzef;->zzk(I)V

    move v3, v6

    move v14, v3

    goto :goto_8

    .line 23
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v3

    and-int/lit16 v7, v3, 0xf0

    shr-int/2addr v7, v13

    and-int/lit8 v3, v3, 0xf

    move v14, v7

    .line 24
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v7

    if-ne v7, v5, :cond_a

    move v10, v5

    goto :goto_9

    :cond_a
    move v10, v6

    .line 25
    :goto_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v12

    const/16 v7, 0x10

    new-array v13, v7, [B

    .line 26
    invoke-virtual {v0, v13, v6, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    if-eqz v10, :cond_b

    if-nez v12, :cond_b

    .line 27
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v7

    new-array v8, v7, [B

    .line 28
    invoke-virtual {v0, v8, v6, v7}, Lcom/google/android/gms/internal/ads/zzef;->zzm([BII)V

    move-object/from16 v16, v8

    goto :goto_a

    :cond_b
    const/16 v16, 0x0

    :goto_a
    new-instance v7, Lcom/google/android/gms/internal/ads/zzait;

    move-object v9, v7

    move-object v8, v15

    move v15, v3

    .line 29
    invoke-direct/range {v9 .. v16}, Lcom/google/android/gms/internal/ads/zzait;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object v3, v7

    goto :goto_b

    :cond_c
    move-object v8, v15

    add-int/2addr v3, v7

    goto :goto_7

    :cond_d
    move-object v8, v15

    const/4 v3, 0x0

    :goto_b
    if-eqz v3, :cond_e

    goto :goto_c

    :cond_e
    move v5, v6

    :goto_c
    const-string v6, "tenc atom is mandatory"

    .line 30
    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzacy;->zza(ZLjava/lang/String;)V

    .line 31
    sget-object v5, Lcom/google/android/gms/internal/ads/zzeo;->zza:Ljava/lang/String;

    move-object v5, v3

    check-cast v5, Lcom/google/android/gms/internal/ads/zzait;

    invoke-static {v8, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    :goto_d
    if-nez v3, :cond_f

    goto :goto_e

    :cond_f
    return-object v3

    :cond_10
    :goto_e
    add-int/2addr v1, v2

    goto/16 :goto_0

    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method private static zzs(Lcom/google/android/gms/internal/ads/zzef;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    and-int/lit8 v1, v0, 0x7f

    :goto_0
    const/16 v2, 0x80

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzef;->zzs()I

    move-result v0

    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v2, v0, 0x7f

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method
