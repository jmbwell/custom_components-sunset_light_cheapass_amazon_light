.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SingularValueDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;
    }
.end annotation


# static fields
.field private static final EPS:D = 2.220446049250313E-16

.field private static final TINY:D = 1.6033346880071782E-291


# instance fields
.field private cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final m:I

.field private final n:I

.field private final singularValues:[D

.field private final tol:D

.field private final transposed:Z


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 34

    move-object/from16 v0, p0

    .line 87
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    .line 92
    iput-boolean v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 93
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 94
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 95
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    goto :goto_0

    .line 97
    :cond_0
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    .line 98
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    .line 99
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    .line 100
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    .line 103
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v5, v2, [D

    iput-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    .line 104
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v2, v7, v4

    aput v5, v7, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 105
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v7, v6, [I

    aput v5, v7, v4

    aput v5, v7, v3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 106
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    new-array v8, v7, [D

    .line 107
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    new-array v10, v9, [D

    sub-int/2addr v9, v4

    .line 110
    invoke-static {v9, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 111
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    sub-int/2addr v9, v6

    invoke-static {v3, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v9

    move v11, v3

    .line 112
    :goto_1
    invoke-static {v7, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    const-wide/16 v15, 0x0

    if-ge v11, v12, :cond_14

    if-ge v11, v7, :cond_5

    .line 117
    iget-object v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v15, v12, v11

    move v12, v11

    .line 118
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v12, v3, :cond_1

    .line 119
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    move-object/from16 p1, v5

    aget-wide v4, v3, v11

    aget-object v18, v1, v12

    move/from16 v20, v7

    aget-wide v6, v18, v11

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v4

    aput-wide v4, v3, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p1

    move/from16 v7, v20

    const/4 v4, 0x1

    const/4 v6, 0x2

    goto :goto_2

    :cond_1
    move-object/from16 p1, v5

    move/from16 v20, v7

    .line 121
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v11

    cmpl-double v6, v4, v15

    if-eqz v6, :cond_4

    .line 122
    aget-object v6, v1, v11

    aget-wide v21, v6, v11

    cmpg-double v6, v21, v15

    if-gez v6, :cond_2

    neg-double v4, v4

    .line 123
    aput-wide v4, v3, v11

    :cond_2
    move v3, v11

    .line 125
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_3

    .line 126
    aget-object v4, v1, v3

    aget-wide v5, v4, v11

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v21, v7, v11

    div-double v5, v5, v21

    aput-wide v5, v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 128
    :cond_3
    aget-object v3, v1, v11

    aget-wide v4, v3, v11

    add-double/2addr v4, v13

    aput-wide v4, v3, v11

    .line 130
    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v11

    neg-double v4, v4

    aput-wide v4, v3, v11

    goto :goto_4

    :cond_5
    move-object/from16 p1, v5

    move/from16 v20, v7

    :goto_4
    add-int/lit8 v3, v11, 0x1

    move v4, v3

    .line 132
    :goto_5
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_8

    move/from16 v5, v20

    if-ge v11, v5, :cond_7

    .line 133
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v20, v6, v11

    cmpl-double v6, v20, v15

    if-eqz v6, :cond_7

    move v6, v11

    move-wide v13, v15

    .line 137
    :goto_6
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_6

    .line 138
    aget-object v7, v1, v6

    aget-wide v22, v7, v11

    aget-wide v24, v7, v4

    mul-double v22, v22, v24

    add-double v13, v13, v22

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    neg-double v6, v13

    .line 140
    aget-object v12, v1, v11

    aget-wide v13, v12, v11

    div-double/2addr v6, v13

    move v12, v11

    .line 141
    :goto_7
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v12, v13, :cond_7

    .line 142
    aget-object v13, v1, v12

    aget-wide v22, v13, v4

    aget-wide v24, v13, v11

    mul-double v24, v24, v6

    add-double v22, v22, v24

    aput-wide v22, v13, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 147
    :cond_7
    aget-object v6, v1, v11

    aget-wide v12, v6, v4

    aput-wide v12, v8, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v20, v5

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_8
    move/from16 v5, v20

    if-ge v11, v5, :cond_9

    move v4, v11

    .line 152
    :goto_8
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_9

    .line 153
    aget-object v6, v2, v4

    aget-object v7, v1, v4

    aget-wide v12, v7, v11

    aput-wide v12, v6, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    if-ge v11, v9, :cond_13

    .line 160
    aput-wide v15, v8, v11

    move v4, v3

    .line 161
    :goto_9
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_a

    .line 162
    aget-wide v6, v8, v11

    aget-wide v12, v8, v4

    invoke-static {v6, v7, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v6

    aput-wide v6, v8, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 164
    :cond_a
    aget-wide v6, v8, v11

    cmpl-double v4, v6, v15

    if-eqz v4, :cond_d

    .line 165
    aget-wide v12, v8, v3

    cmpg-double v4, v12, v15

    if-gez v4, :cond_b

    neg-double v6, v6

    .line 166
    aput-wide v6, v8, v11

    :cond_b
    move v4, v3

    .line 168
    :goto_a
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_c

    .line 169
    aget-wide v6, v8, v4

    aget-wide v12, v8, v11

    div-double/2addr v6, v12

    aput-wide v6, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 171
    :cond_c
    aget-wide v6, v8, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v6, v12

    aput-wide v6, v8, v3

    .line 173
    :cond_d
    aget-wide v6, v8, v11

    neg-double v6, v6

    aput-wide v6, v8, v11

    .line 174
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v3, v4, :cond_12

    cmpl-double v4, v6, v15

    if-eqz v4, :cond_12

    move v4, v3

    .line 177
    :goto_b
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_e

    .line 178
    aput-wide v15, v10, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    move v4, v3

    .line 180
    :goto_c
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_10

    move v6, v3

    .line 181
    :goto_d
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_f

    .line 182
    aget-wide v12, v10, v6

    aget-wide v14, v8, v4

    aget-object v7, v1, v6

    aget-wide v20, v7, v4

    mul-double v14, v14, v20

    add-double/2addr v12, v14

    aput-wide v12, v10, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    move v4, v3

    .line 185
    :goto_e
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_12

    .line 186
    aget-wide v6, v8, v4

    neg-double v6, v6

    aget-wide v12, v8, v3

    div-double/2addr v6, v12

    move v12, v3

    .line 187
    :goto_f
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v12, v13, :cond_11

    .line 188
    aget-object v13, v1, v12

    aget-wide v14, v13, v4

    aget-wide v20, v10, v12

    mul-double v20, v20, v6

    add-double v14, v14, v20

    aput-wide v14, v13, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    move v4, v3

    .line 195
    :goto_10
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_13

    .line 196
    aget-object v6, p1, v4

    aget-wide v12, v8, v4

    aput-wide v12, v6, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_13
    move v11, v3

    move v7, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    move-object/from16 v5, p1

    goto/16 :goto_1

    :cond_14
    move-object/from16 p1, v5

    move v5, v7

    .line 201
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v5, v3, :cond_15

    .line 203
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-object v6, v1, v5

    aget-wide v10, v6, v5

    aput-wide v10, v4, v5

    .line 205
    :cond_15
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v3, :cond_16

    .line 206
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v6, v3, -0x1

    aput-wide v15, v4, v6

    :cond_16
    add-int/lit8 v4, v9, 0x1

    if-ge v4, v3, :cond_17

    .line 209
    aget-object v1, v1, v9

    add-int/lit8 v4, v3, -0x1

    aget-wide v6, v1, v4

    aput-wide v6, v8, v9

    :cond_17
    add-int/lit8 v1, v3, -0x1

    .line 211
    aput-wide v15, v8, v1

    move v4, v5

    .line 214
    :goto_11
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_19

    const/4 v6, 0x0

    .line 215
    :goto_12
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v7, :cond_18

    .line 216
    aget-object v7, v2, v6

    aput-wide v15, v7, v4

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 218
    :cond_18
    aget-object v6, v2, v4

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_19
    const/4 v4, 0x1

    add-int/lit8 v7, v5, -0x1

    :goto_13
    if-ltz v7, :cond_21

    .line 221
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v5, v4, v7

    cmpl-double v4, v5, v15

    if-eqz v4, :cond_1e

    add-int/lit8 v4, v7, 0x1

    .line 222
    :goto_14
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v5, :cond_1c

    move v5, v7

    move-wide v10, v15

    .line 224
    :goto_15
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v5, v6, :cond_1a

    .line 225
    aget-object v6, v2, v5

    aget-wide v12, v6, v7

    aget-wide v22, v6, v4

    mul-double v12, v12, v22

    add-double/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1a
    neg-double v5, v10

    .line 227
    aget-object v10, v2, v7

    aget-wide v11, v10, v7

    div-double/2addr v5, v11

    move v10, v7

    .line 228
    :goto_16
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v10, v11, :cond_1b

    .line 229
    aget-object v11, v2, v10

    aget-wide v12, v11, v4

    aget-wide v22, v11, v7

    mul-double v22, v22, v5

    add-double v12, v12, v22

    aput-wide v12, v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_16

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1c
    move v4, v7

    .line 232
    :goto_17
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_1d

    .line 233
    aget-object v5, v2, v4

    aget-wide v10, v5, v7

    neg-double v10, v10

    aput-wide v10, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .line 235
    :cond_1d
    aget-object v4, v2, v7

    aget-wide v5, v4, v7

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v10

    aput-wide v5, v4, v7

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, v7, -0x1

    if-ge v4, v5, :cond_20

    .line 237
    aget-object v5, v2, v4

    aput-wide v15, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1e
    const/4 v4, 0x0

    .line 240
    :goto_19
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v5, :cond_1f

    .line 241
    aget-object v5, v2, v4

    aput-wide v15, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 243
    :cond_1f
    aget-object v4, v2, v7

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v4, v7

    :cond_20
    add-int/lit8 v7, v7, -0x1

    goto :goto_13

    .line 248
    :cond_21
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1a
    if-ltz v4, :cond_26

    if-ge v4, v9, :cond_24

    .line 249
    aget-wide v5, v8, v4

    cmpl-double v5, v5, v15

    if-eqz v5, :cond_24

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    .line 251
    :goto_1b
    iget v7, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v6, v7, :cond_24

    move v7, v5

    move-wide v10, v15

    .line 253
    :goto_1c
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v7, v12, :cond_22

    .line 254
    aget-object v12, p1, v7

    aget-wide v13, v12, v4

    aget-wide v22, v12, v6

    mul-double v13, v13, v22

    add-double/2addr v10, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_22
    neg-double v10, v10

    .line 256
    aget-object v7, p1, v5

    aget-wide v12, v7, v4

    div-double/2addr v10, v12

    move v7, v5

    .line 257
    :goto_1d
    iget v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v7, v12, :cond_23

    .line 258
    aget-object v12, p1, v7

    aget-wide v13, v12, v6

    aget-wide v22, v12, v4

    mul-double v22, v22, v10

    add-double v13, v13, v22

    aput-wide v13, v12, v6

    add-int/lit8 v7, v7, 0x1

    goto :goto_1d

    :cond_23
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_24
    const/4 v5, 0x0

    .line 262
    :goto_1e
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v5, v6, :cond_25

    .line 263
    aget-object v6, p1, v5

    aput-wide v15, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    .line 265
    :cond_25
    aget-object v5, p1, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_26
    :goto_1f
    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    if-lez v3, :cond_45

    add-int/lit8 v6, v3, -0x2

    move v7, v6

    :goto_20
    const-wide/high16 v9, 0x390000000000000L

    if-ltz v7, :cond_28

    .line 283
    iget-object v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v12, v11, v7

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v14, v7, 0x1

    aget-wide v20, v13, v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double/2addr v11, v4

    add-double/2addr v11, v9

    .line 293
    aget-wide v13, v8, v7

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpl-double v11, v13, v11

    if-gtz v11, :cond_27

    .line 294
    aput-wide v15, v8, v7

    goto :goto_21

    :cond_27
    add-int/lit8 v7, v7, -0x1

    goto :goto_20

    :cond_28
    :goto_21
    const/4 v11, 0x3

    if-ne v7, v6, :cond_29

    const/4 v4, 0x4

    goto :goto_26

    :cond_29
    add-int/lit8 v12, v3, -0x1

    move v13, v12

    :goto_22
    if-lt v13, v7, :cond_2e

    if-ne v13, v7, :cond_2a

    goto :goto_25

    :cond_2a
    if-eq v13, v3, :cond_2b

    .line 308
    aget-wide v20, v8, v13

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    goto :goto_23

    :cond_2b
    move-wide/from16 v20, v15

    :goto_23
    add-int/lit8 v14, v7, 0x1

    if-eq v13, v14, :cond_2c

    add-int/lit8 v14, v13, -0x1

    aget-wide v22, v8, v14

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    goto :goto_24

    :cond_2c
    move-wide/from16 v22, v15

    :goto_24
    add-double v20, v20, v22

    .line 310
    iget-object v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v22, v14, v13

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    mul-double v20, v20, v4

    add-double v20, v20, v9

    cmpg-double v14, v22, v20

    if-gtz v14, :cond_2d

    .line 311
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v15, v4, v13

    goto :goto_25

    :cond_2d
    add-int/lit8 v13, v13, -0x1

    goto :goto_22

    :cond_2e
    :goto_25
    if-ne v13, v7, :cond_2f

    move v4, v11

    goto :goto_26

    :cond_2f
    if-ne v13, v12, :cond_30

    const/4 v4, 0x1

    goto :goto_26

    :cond_30
    move v7, v13

    const/4 v4, 0x2

    :goto_26
    add-int/lit8 v5, v7, 0x1

    const/4 v9, 0x1

    if-eq v4, v9, :cond_41

    const/4 v9, 0x2

    if-eq v4, v9, :cond_3f

    if-eq v4, v11, :cond_37

    .line 436
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v4, v5

    cmpg-double v10, v6, v15

    if-gtz v10, :cond_32

    cmpg-double v10, v6, v15

    if-gez v10, :cond_31

    neg-double v6, v6

    goto :goto_27

    :cond_31
    move-wide v6, v15

    .line 437
    :goto_27
    aput-wide v6, v4, v5

    const/4 v4, 0x0

    :goto_28
    if-gt v4, v1, :cond_32

    .line 440
    aget-object v6, p1, v4

    aget-wide v10, v6, v5

    neg-double v10, v10

    aput-wide v10, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_32
    :goto_29
    if-ge v5, v1, :cond_36

    .line 445
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v6, v4, v5

    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v4, v10

    cmpl-double v13, v6, v11

    if-ltz v13, :cond_33

    goto :goto_2c

    .line 449
    :cond_33
    aput-wide v11, v4, v5

    .line 450
    aput-wide v6, v4, v10

    .line 451
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ge v5, v4, :cond_34

    const/4 v4, 0x0

    .line 452
    :goto_2a
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v4, v6, :cond_34

    .line 453
    aget-object v6, p1, v4

    aget-wide v11, v6, v10

    .line 454
    aget-wide v13, v6, v5

    aput-wide v13, v6, v10

    .line 455
    aput-wide v11, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 458
    :cond_34
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/4 v6, 0x1

    sub-int/2addr v4, v6

    if-ge v5, v4, :cond_35

    const/4 v4, 0x0

    .line 459
    :goto_2b
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v4, v6, :cond_35

    .line 460
    aget-object v6, v2, v4

    aget-wide v11, v6, v10

    .line 461
    aget-wide v13, v6, v5

    aput-wide v13, v6, v10

    .line 462
    aput-wide v11, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_35
    move v5, v10

    goto :goto_29

    :cond_36
    :goto_2c
    add-int/lit8 v3, v3, -0x1

    move/from16 v25, v1

    move-object/from16 v20, v2

    goto/16 :goto_37

    .line 372
    :cond_37
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    add-int/lit8 v7, v3, -0x1

    aget-wide v10, v4, v7

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v12, v4, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    .line 374
    aget-wide v12, v8, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v12, v4, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    aget-wide v12, v8, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v10

    .line 378
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v12, v4, v7

    div-double/2addr v12, v10

    .line 379
    aget-wide v18, v4, v6

    div-double v18, v18, v10

    .line 380
    aget-wide v20, v8, v6

    div-double v20, v20, v10

    .line 381
    aget-wide v22, v4, v5

    div-double v22, v22, v10

    .line 382
    aget-wide v24, v8, v5

    div-double v24, v24, v10

    add-double v10, v18, v12

    sub-double v18, v18, v12

    mul-double v10, v10, v18

    mul-double v18, v20, v20

    add-double v10, v10, v18

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    div-double v10, v10, v18

    mul-double v20, v20, v12

    mul-double v20, v20, v20

    cmpl-double v4, v10, v15

    if-nez v4, :cond_39

    cmpl-double v4, v20, v15

    if-eqz v4, :cond_38

    goto :goto_2d

    :cond_38
    move v14, v3

    move-wide/from16 v20, v15

    goto :goto_2e

    :cond_39
    :goto_2d
    mul-double v18, v10, v10

    add-double v18, v18, v20

    move v14, v3

    .line 388
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    cmpg-double v18, v10, v15

    if-gez v18, :cond_3a

    neg-double v3, v3

    :cond_3a
    add-double/2addr v10, v3

    div-double v20, v20, v10

    :goto_2e
    add-double v3, v22, v12

    sub-double v10, v22, v12

    mul-double/2addr v3, v10

    add-double v3, v3, v20

    mul-double v22, v22, v24

    move v12, v5

    move-wide/from16 v10, v22

    :goto_2f
    if-ge v12, v7, :cond_3e

    .line 398
    invoke-static {v3, v4, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v18

    div-double v3, v3, v18

    div-double v10, v10, v18

    if-eq v12, v5, :cond_3b

    add-int/lit8 v13, v12, -0x1

    .line 402
    aput-wide v18, v8, v13

    .line 404
    :cond_3b
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v18, v13, v12

    mul-double v20, v3, v18

    aget-wide v22, v8, v12

    mul-double v24, v10, v22

    move/from16 v16, v14

    add-double v14, v20, v24

    mul-double v22, v22, v3

    mul-double v18, v18, v10

    sub-double v22, v22, v18

    .line 405
    aput-wide v22, v8, v12

    add-int/lit8 v18, v12, 0x1

    .line 406
    aget-wide v19, v13, v18

    move/from16 v22, v5

    move/from16 v21, v6

    mul-double v5, v10, v19

    mul-double v19, v19, v3

    .line 407
    aput-wide v19, v13, v18

    const/4 v13, 0x0

    .line 409
    :goto_30
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v13, v9, :cond_3c

    .line 410
    aget-object v9, p1, v13

    aget-wide v23, v9, v12

    mul-double v26, v3, v23

    aget-wide v28, v9, v18

    mul-double v30, v10, v28

    add-double v26, v26, v30

    move/from16 v25, v1

    move-object/from16 v20, v2

    neg-double v1, v10

    mul-double v1, v1, v23

    mul-double v28, v28, v3

    add-double v1, v1, v28

    .line 411
    aput-wide v1, v9, v18

    .line 412
    aput-wide v26, v9, v12

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v20

    move/from16 v1, v25

    goto :goto_30

    :cond_3c
    move/from16 v25, v1

    move-object/from16 v20, v2

    .line 414
    invoke-static {v14, v15, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v1

    div-double/2addr v14, v1

    div-double/2addr v5, v1

    .line 417
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aput-wide v1, v3, v12

    .line 418
    aget-wide v1, v8, v12

    mul-double v9, v14, v1

    aget-wide v23, v3, v18

    mul-double v26, v5, v23

    add-double v9, v9, v26

    move-wide/from16 v26, v9

    neg-double v9, v5

    mul-double/2addr v1, v9

    mul-double v23, v23, v14

    add-double v1, v1, v23

    .line 419
    aput-wide v1, v3, v18

    .line 420
    aget-wide v1, v8, v18

    mul-double v3, v5, v1

    mul-double/2addr v1, v14

    .line 421
    aput-wide v1, v8, v18

    .line 422
    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v12, v1, :cond_3d

    const/4 v1, 0x0

    .line 423
    :goto_31
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v1, v11, :cond_3d

    .line 424
    aget-object v11, v20, v1

    aget-wide v23, v11, v12

    mul-double v28, v14, v23

    aget-wide v30, v11, v18

    mul-double v32, v5, v30

    add-double v28, v28, v32

    mul-double v23, v23, v9

    mul-double v30, v30, v14

    add-double v23, v23, v30

    .line 425
    aput-wide v23, v11, v18

    .line 426
    aput-wide v28, v11, v12

    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_3d
    move-wide v10, v3

    move/from16 v14, v16

    move/from16 v12, v18

    move-object/from16 v2, v20

    move/from16 v6, v21

    move/from16 v5, v22

    move/from16 v1, v25

    move-wide/from16 v3, v26

    const/4 v9, 0x2

    const-wide/16 v15, 0x0

    goto/16 :goto_2f

    :cond_3e
    move/from16 v25, v1

    move-object/from16 v20, v2

    move/from16 v21, v6

    move/from16 v16, v14

    const/4 v2, 0x1

    .line 430
    aput-wide v3, v8, v21

    move/from16 v1, v16

    goto/16 :goto_36

    :cond_3f
    move/from16 v25, v1

    move-object/from16 v20, v2

    move/from16 v16, v3

    move/from16 v22, v5

    const/4 v2, 0x1

    .line 351
    aget-wide v3, v8, v7

    const-wide/16 v5, 0x0

    .line 352
    aput-wide v5, v8, v7

    move/from16 v1, v16

    move/from16 v5, v22

    :goto_32
    if-ge v5, v1, :cond_44

    .line 354
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v9, v6, v5

    invoke-static {v9, v10, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v9

    .line 355
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v11, v6, v5

    div-double/2addr v11, v9

    div-double/2addr v3, v9

    .line 357
    aput-wide v9, v6, v5

    neg-double v9, v3

    .line 358
    aget-wide v13, v8, v5

    mul-double v15, v9, v13

    mul-double/2addr v13, v11

    .line 359
    aput-wide v13, v8, v5

    const/4 v6, 0x0

    .line 361
    :goto_33
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ge v6, v13, :cond_40

    .line 362
    aget-object v13, v20, v6

    aget-wide v17, v13, v5

    mul-double v21, v11, v17

    aget-wide v23, v13, v7

    mul-double v26, v3, v23

    add-double v21, v21, v26

    mul-double v17, v17, v9

    mul-double v23, v23, v11

    add-double v17, v17, v23

    .line 363
    aput-wide v17, v13, v7

    .line 364
    aput-wide v21, v13, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_33

    :cond_40
    add-int/lit8 v5, v5, 0x1

    move-wide v3, v15

    goto :goto_32

    :cond_41
    move/from16 v25, v1

    move-object/from16 v20, v2

    move v1, v3

    move/from16 v22, v5

    move/from16 v21, v6

    move v2, v9

    .line 329
    aget-wide v3, v8, v21

    const-wide/16 v6, 0x0

    .line 330
    aput-wide v6, v8, v21

    move/from16 v5, v21

    move/from16 v9, v22

    :goto_34
    if-lt v5, v9, :cond_44

    .line 332
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v11, v10, v5

    invoke-static {v11, v12, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v10

    .line 333
    iget-object v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v13, v12, v5

    div-double/2addr v13, v10

    div-double v6, v3, v10

    .line 335
    aput-wide v10, v12, v5

    if-eq v5, v9, :cond_42

    neg-double v3, v6

    add-int/lit8 v10, v5, -0x1

    .line 337
    aget-wide v11, v8, v10

    mul-double/2addr v3, v11

    mul-double/2addr v11, v13

    .line 338
    aput-wide v11, v8, v10

    :cond_42
    const/4 v10, 0x0

    .line 341
    :goto_35
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    if-ge v10, v11, :cond_43

    .line 342
    aget-object v11, p1, v10

    aget-wide v15, v11, v5

    mul-double v17, v13, v15

    add-int/lit8 v12, v1, -0x1

    aget-wide v21, v11, v12

    mul-double v23, v6, v21

    add-double v17, v17, v23

    move-wide/from16 v26, v3

    neg-double v2, v6

    mul-double/2addr v2, v15

    mul-double v21, v21, v13

    add-double v2, v2, v21

    .line 343
    aput-wide v2, v11, v12

    .line 344
    aput-wide v17, v11, v5

    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v3, v26

    const/4 v2, 0x1

    goto :goto_35

    :cond_43
    move-wide/from16 v26, v3

    add-int/lit8 v5, v5, -0x1

    const/4 v2, 0x1

    const-wide/16 v6, 0x0

    goto :goto_34

    :cond_44
    :goto_36
    move v3, v1

    :goto_37
    move-object/from16 v2, v20

    move/from16 v1, v25

    const-wide/16 v15, 0x0

    goto/16 :goto_1f

    :cond_45
    move-object/from16 v20, v2

    .line 474
    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    int-to-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    mul-double/2addr v1, v6

    mul-double/2addr v1, v4

    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    .line 477
    iget-boolean v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->transposed:Z

    if-nez v1, :cond_46

    .line 478
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 479
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_38

    .line 481
    :cond_46
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 482
    invoke-static/range {v20 .. v20}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    :goto_38
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D
    .locals 0

    .line 53
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    return-object p0
.end method


# virtual methods
.method public getConditionNumber()D
    .locals 5

    .line 616
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v3, v3, -0x1

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 574
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 576
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, v3, v2

    cmpl-double v3, v4, p1

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x2

    .line 586
    new-array p1, p1, [I

    aput v0, p1, v3

    aput v2, p1, v1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    .line 587
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;

    invoke-direct {v5, p0, p1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;-><init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    .line 596
    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p2, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 597
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1

    .line 582
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_CUTOFF_SINGULAR_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    aget-wide v4, p2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {v0, v2, p1, p2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public getInverseConditionNumber()D
    .locals 5

    .line 627
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    iget v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->n:I

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, v0, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getNorm()D
    .locals 3

    .line 608
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method public getRank()I
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 640
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 641
    aget-wide v3, v2, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    cmpl-double v2, v3, v5

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getS()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 519
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 521
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 523
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedS:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getSingularValues()[D
    .locals 1

    .line 533
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 9

    .line 653
    new-instance v8, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getUT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getRank()I

    move-result v0

    iget v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->m:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->tol:D

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$Solver;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$1;)V

    return-object v8
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 494
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getUT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 505
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getU()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 509
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedUt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 554
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 555
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 558
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->cachedVt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
