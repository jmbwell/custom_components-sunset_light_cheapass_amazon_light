.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "BicubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/16 v0, 0x10

    .line 42
    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    new-array v10, v0, [D

    fill-array-data v10, :array_9

    new-array v11, v0, [D

    fill-array-data v11, :array_a

    new-array v12, v0, [D

    fill-array-data v12, :array_b

    new-array v13, v0, [D

    fill-array-data v13, :array_c

    new-array v14, v0, [D

    fill-array-data v14, :array_d

    new-array v15, v0, [D

    fill-array-data v15, :array_e

    move-object/from16 v16, v15

    new-array v15, v0, [D

    fill-array-data v15, :array_f

    new-array v0, v0, [[D

    const/16 v17, 0x0

    aput-object v1, v0, v17

    const/4 v1, 0x1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v4, v0, v1

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    aput-object v6, v0, v1

    const/4 v1, 0x6

    aput-object v7, v0, v1

    const/4 v1, 0x7

    aput-object v8, v0, v1

    const/16 v1, 0x8

    aput-object v9, v0, v1

    const/16 v1, 0x9

    aput-object v10, v0, v1

    const/16 v1, 0xa

    aput-object v11, v0, v1

    const/16 v1, 0xb

    aput-object v12, v0, v1

    const/16 v1, 0xc

    aput-object v13, v0, v1

    const/16 v1, 0xd

    aput-object v14, v0, v1

    const/16 v1, 0xe

    aput-object v16, v0, v1

    const/16 v1, 0xf

    aput-object v15, v0, v1

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    return-void

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    .line 92
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v5, p1

    .line 93
    array-length v6, v5

    move-object/from16 v7, p2

    .line 94
    array-length v8, v7

    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    .line 96
    array-length v9, v1

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    aget-object v10, v1, v9

    array-length v10, v10

    if-eqz v10, :cond_a

    .line 99
    array-length v10, v1

    if-ne v6, v10, :cond_9

    .line 102
    array-length v10, v2

    if-ne v6, v10, :cond_8

    .line 105
    array-length v10, v3

    if-ne v6, v10, :cond_7

    .line 108
    array-length v10, v4

    if-ne v6, v10, :cond_6

    .line 112
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 113
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 115
    invoke-virtual/range {p1 .. p1}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    .line 116
    invoke-virtual/range {p2 .. p2}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    iput-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    const/4 v5, 0x1

    sub-int/2addr v6, v5

    add-int/lit8 v7, v8, -0x1

    const/4 v10, 0x2

    .line 120
    new-array v11, v10, [I

    aput v7, v11, v5

    aput v6, v11, v9

    const-class v12, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-static {v12, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    move v11, v9

    :goto_0
    if-ge v11, v6, :cond_5

    .line 123
    aget-object v12, v1, v11

    array-length v12, v12

    if-ne v12, v8, :cond_4

    .line 126
    aget-object v12, v2, v11

    array-length v12, v12

    if-ne v12, v8, :cond_3

    .line 129
    aget-object v12, v3, v11

    array-length v12, v12

    if-ne v12, v8, :cond_2

    .line 132
    aget-object v12, v4, v11

    array-length v12, v12

    if-ne v12, v8, :cond_1

    add-int/lit8 v12, v11, 0x1

    .line 136
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v14, v13, v12

    aget-wide v16, v13, v11

    sub-double v14, v14, v16

    move v13, v9

    :goto_1
    if-ge v13, v7, :cond_0

    add-int/lit8 v16, v13, 0x1

    .line 139
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v17, v10, v16

    aget-wide v19, v10, v13

    sub-double v17, v17, v19

    mul-double v19, v14, v17

    .line 141
    aget-object v10, v1, v11

    aget-wide v21, v10, v13

    aget-object v23, v1, v12

    aget-wide v24, v23, v13

    aget-wide v26, v10, v16

    aget-wide v28, v23, v16

    aget-object v10, v2, v11

    aget-wide v30, v10, v13

    mul-double v30, v30, v14

    aget-object v23, v2, v12

    aget-wide v32, v23, v13

    mul-double v32, v32, v14

    aget-wide v34, v10, v16

    mul-double v34, v34, v14

    aget-wide v36, v23, v16

    mul-double v36, v36, v14

    aget-object v10, v3, v11

    aget-wide v38, v10, v13

    mul-double v38, v38, v17

    aget-object v23, v3, v12

    aget-wide v40, v23, v13

    mul-double v40, v40, v17

    aget-wide v42, v10, v16

    mul-double v42, v42, v17

    aget-wide v44, v23, v16

    mul-double v44, v44, v17

    aget-object v10, v4, v11

    aget-wide v17, v10, v13

    mul-double v17, v17, v19

    aget-object v23, v4, v12

    aget-wide v46, v23, v13

    mul-double v46, v46, v19

    aget-wide v48, v10, v16

    mul-double v48, v48, v19

    aget-wide v50, v23, v16

    mul-double v50, v50, v19

    const/16 v10, 0x10

    new-array v10, v10, [D

    aput-wide v21, v10, v9

    aput-wide v24, v10, v5

    const/16 v19, 0x2

    aput-wide v26, v10, v19

    const/16 v20, 0x3

    aput-wide v28, v10, v20

    const/16 v20, 0x4

    aput-wide v30, v10, v20

    const/16 v20, 0x5

    aput-wide v32, v10, v20

    const/16 v20, 0x6

    aput-wide v34, v10, v20

    const/16 v20, 0x7

    aput-wide v36, v10, v20

    const/16 v20, 0x8

    aput-wide v38, v10, v20

    const/16 v20, 0x9

    aput-wide v40, v10, v20

    const/16 v20, 0xa

    aput-wide v42, v10, v20

    const/16 v20, 0xb

    aput-wide v44, v10, v20

    const/16 v20, 0xc

    aput-wide v17, v10, v20

    const/16 v17, 0xd

    aput-wide v46, v10, v17

    const/16 v17, 0xe

    aput-wide v48, v10, v17

    const/16 v17, 0xf

    aput-wide v50, v10, v17

    .line 148
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v5, v5, v11

    new-instance v9, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-direct {v0, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;-><init>([D)V

    aput-object v9, v5, v13

    move/from16 v13, v16

    move/from16 v10, v19

    const/4 v5, 0x1

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_0
    move v11, v12

    goto/16 :goto_0

    .line 133
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 130
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 127
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v2, v11

    array-length v2, v2

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 124
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v11

    array-length v1, v1

    invoke-direct {v2, v1, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_5
    return-void

    .line 109
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 106
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 103
    :cond_8
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v2

    invoke-direct {v1, v6, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 100
    :cond_9
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v2, v6, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 97
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeSplineCoefficients([D)[D
    .locals 12

    const/16 v0, 0x10

    .line 247
    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 251
    sget-object v4, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    aget-object v4, v4, v3

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_0

    .line 253
    aget-wide v8, v4, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 255
    :cond_0
    aput-wide v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private searchIndex(D[D)I
    .locals 3

    .line 194
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 196
    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    if-gez v0, :cond_0

    neg-int p1, v0

    add-int/lit8 p1, p1, -0x2

    return p1

    .line 206
    :cond_0
    array-length p1, p3

    add-int/lit8 p2, p1, -0x1

    if-ne v0, p2, :cond_1

    add-int/lit8 p1, p1, -0x2

    return p1

    :cond_1
    return v0

    .line 198
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aget-wide v1, p3, p2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    aget-wide v1, p3, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 6

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v2, p1, v2

    if-ltz v2, :cond_1

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double p1, p1, v4

    if-gtz p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v4, p1, v1

    cmpg-double p2, p3, v4

    if-ltz p2, :cond_1

    array-length p2, p1

    sub-int/2addr p2, v3

    aget-wide v4, p1, p2

    cmpl-double p1, p3, v4

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    .line 159
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    invoke-direct {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    .line 161
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v3, v2, v0

    sub-double/2addr p1, v3

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p1, v5

    .line 162
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v3, v2, v1

    sub-double/2addr p3, v3

    add-int/lit8 v5, v1, 0x1

    aget-wide v5, v2, v5

    sub-double/2addr v5, v3

    div-double/2addr p3, v5

    .line 164
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v0, v2, v0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method
