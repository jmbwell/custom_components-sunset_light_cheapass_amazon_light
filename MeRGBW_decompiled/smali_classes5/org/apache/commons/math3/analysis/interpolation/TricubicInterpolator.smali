.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;
.super Ljava/lang/Object;
.source "TricubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
    .locals 48
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v5, p4

    .line 41
    array-length v0, v13

    if-eqz v0, :cond_6

    array-length v0, v14

    if-eqz v0, :cond_6

    array-length v0, v15

    if-eqz v0, :cond_6

    array-length v0, v5

    if-eqz v0, :cond_6

    .line 44
    array-length v0, v13

    array-length v1, v5

    if-ne v0, v1, :cond_5

    .line 48
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 49
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 50
    invoke-static/range {p3 .. p3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 52
    array-length v0, v13

    .line 53
    array-length v1, v14

    .line 54
    array-length v2, v15

    const/4 v3, 0x3

    .line 57
    new-array v4, v3, [I

    const/4 v6, 0x2

    aput v2, v4, v6

    const/4 v7, 0x1

    aput v1, v4, v7

    const/4 v8, 0x0

    aput v0, v4, v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, [[[D

    .line 58
    new-array v4, v3, [I

    aput v2, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, [[[D

    .line 59
    new-array v4, v3, [I

    aput v2, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, [[[D

    .line 60
    new-array v4, v3, [I

    aput v2, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object v12, v4

    check-cast v12, [[[D

    .line 61
    new-array v4, v3, [I

    aput v2, v4, v6

    aput v1, v4, v7

    aput v0, v4, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, [[[D

    .line 62
    new-array v4, v3, [I

    aput v2, v4, v6

    aput v1, v4, v7

    const/4 v8, 0x0

    aput v0, v4, v8

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, [[[D

    .line 63
    new-array v3, v3, [I

    aput v2, v3, v6

    aput v1, v3, v7

    const/4 v4, 0x0

    aput v0, v3, v4

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, [[[D

    move v3, v7

    :goto_0
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_4

    .line 66
    array-length v4, v14

    aget-object v6, v5, v3

    array-length v6, v6

    if-ne v4, v6, :cond_3

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v6, v3, -0x1

    .line 73
    aget-wide v19, v13, v4

    .line 74
    aget-wide v21, v13, v6

    sub-double v19, v19, v21

    move/from16 v21, v0

    move v8, v7

    :goto_1
    add-int/lit8 v0, v1, -0x1

    if-ge v8, v0, :cond_2

    .line 79
    array-length v0, v15

    aget-object v22, v5, v3

    aget-object v7, v22, v8

    array-length v7, v7

    if-ne v0, v7, :cond_1

    add-int/lit8 v0, v8, 0x1

    add-int/lit8 v7, v8, -0x1

    .line 86
    aget-wide v24, v14, v0

    .line 87
    aget-wide v26, v14, v7

    sub-double v24, v24, v26

    mul-double v26, v19, v24

    move/from16 v22, v1

    const/4 v1, 0x1

    const/16 v23, 0x1

    :goto_2
    add-int/lit8 v13, v2, -0x1

    if-ge v1, v13, :cond_0

    add-int/lit8 v13, v1, 0x1

    add-int/lit8 v28, v1, -0x1

    .line 96
    aget-wide v29, v15, v13

    .line 97
    aget-wide v31, v15, v28

    sub-double v29, v29, v31

    .line 101
    aget-object v31, v9, v3

    aget-object v31, v31, v8

    aget-object v32, v5, v4

    aget-object v33, v32, v8

    aget-wide v34, v33, v1

    aget-object v36, v5, v6

    aget-object v37, v36, v8

    aget-wide v38, v37, v1

    sub-double v34, v34, v38

    div-double v34, v34, v19

    aput-wide v34, v31, v1

    .line 102
    aget-object v31, v10, v3

    aget-object v31, v31, v8

    aget-object v34, v5, v3

    aget-object v35, v34, v0

    aget-wide v38, v35, v1

    aget-object v40, v34, v7

    aget-wide v41, v40, v1

    sub-double v38, v38, v41

    div-double v38, v38, v24

    aput-wide v38, v31, v1

    .line 103
    aget-object v31, v11, v3

    aget-object v31, v31, v8

    aget-object v34, v34, v8

    aget-wide v38, v34, v13

    aget-wide v41, v34, v28

    sub-double v38, v38, v41

    div-double v38, v38, v29

    aput-wide v38, v31, v1

    mul-double v38, v19, v29

    mul-double v41, v24, v29

    .line 108
    aget-object v31, v12, v3

    aget-object v31, v31, v8

    aget-object v34, v32, v0

    aget-wide v43, v34, v1

    aget-object v32, v32, v7

    aget-wide v45, v32, v1

    sub-double v43, v43, v45

    aget-object v45, v36, v0

    aget-wide v46, v45, v1

    sub-double v43, v43, v46

    aget-object v36, v36, v7

    aget-wide v46, v36, v1

    add-double v43, v43, v46

    div-double v43, v43, v26

    aput-wide v43, v31, v1

    .line 109
    aget-object v31, v17, v3

    aget-object v31, v31, v8

    aget-wide v43, v33, v13

    aget-wide v46, v33, v28

    sub-double v43, v43, v46

    aget-wide v46, v37, v13

    sub-double v43, v43, v46

    aget-wide v46, v37, v28

    add-double v43, v43, v46

    div-double v43, v43, v38

    aput-wide v43, v31, v1

    .line 110
    aget-object v31, v18, v3

    aget-object v31, v31, v8

    aget-wide v37, v35, v13

    aget-wide v43, v35, v28

    sub-double v37, v37, v43

    aget-wide v43, v40, v13

    sub-double v37, v37, v43

    aget-wide v39, v40, v28

    add-double v37, v37, v39

    div-double v37, v37, v41

    aput-wide v37, v31, v1

    mul-double v29, v29, v26

    .line 114
    aget-object v31, v16, v3

    aget-object v31, v31, v8

    aget-wide v37, v34, v13

    aget-wide v39, v32, v13

    sub-double v37, v37, v39

    aget-wide v39, v45, v13

    sub-double v37, v37, v39

    aget-wide v39, v36, v13

    add-double v37, v37, v39

    aget-wide v33, v34, v28

    sub-double v37, v37, v33

    aget-wide v33, v32, v28

    add-double v37, v37, v33

    aget-wide v32, v45, v28

    add-double v37, v37, v32

    aget-wide v32, v36, v28

    sub-double v37, v37, v32

    div-double v37, v37, v29

    aput-wide v37, v31, v1

    move v1, v13

    goto/16 :goto_2

    :cond_0
    move-object/from16 v13, p1

    move v8, v0

    move/from16 v1, v22

    move/from16 v7, v23

    goto/16 :goto_1

    .line 80
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v15

    aget-object v2, v5, v3

    aget-object v2, v2, v8

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_2
    move-object/from16 v13, p1

    move v3, v4

    move/from16 v0, v21

    goto/16 :goto_0

    .line 67
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v14

    aget-object v2, v5, v3

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 123
    :cond_4
    new-instance v19, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v9

    move-object v7, v10

    move-object v8, v11

    move-object v9, v12

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v16

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V

    return-object v19

    .line 45
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v1, p1

    array-length v1, v1

    array-length v2, v5

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 42
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
