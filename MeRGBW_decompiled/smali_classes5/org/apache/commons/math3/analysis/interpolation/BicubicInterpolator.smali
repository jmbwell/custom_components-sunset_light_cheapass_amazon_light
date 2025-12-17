.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;
.super Ljava/lang/Object;
.source "BicubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
    .locals 28
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v4, p3

    .line 52
    array-length v0, v8

    if-eqz v0, :cond_3

    array-length v0, v9

    if-eqz v0, :cond_3

    array-length v0, v4

    if-eqz v0, :cond_3

    .line 55
    array-length v0, v8

    array-length v1, v4

    if-ne v0, v1, :cond_2

    .line 59
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 60
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 62
    array-length v0, v8

    .line 63
    array-length v1, v9

    const/4 v2, 0x2

    .line 66
    new-array v3, v2, [I

    const/4 v5, 0x1

    aput v1, v3, v5

    const/4 v6, 0x0

    aput v0, v3, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, [[D

    .line 67
    new-array v3, v2, [I

    aput v1, v3, v5

    aput v0, v3, v6

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, [[D

    .line 68
    new-array v2, v2, [I

    aput v1, v2, v5

    aput v0, v2, v6

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [[D

    move v2, v5

    :goto_0
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v6, v2, -0x1

    .line 73
    aget-wide v12, v8, v3

    .line 74
    aget-wide v14, v8, v6

    sub-double/2addr v12, v14

    move v14, v5

    :goto_1
    add-int/lit8 v15, v1, -0x1

    if-ge v14, v15, :cond_0

    add-int/lit8 v15, v14, 0x1

    add-int/lit8 v16, v14, -0x1

    .line 82
    aget-wide v17, v9, v15

    .line 83
    aget-wide v19, v9, v16

    sub-double v17, v17, v19

    .line 87
    aget-object v19, v7, v2

    aget-object v20, v4, v3

    aget-wide v21, v20, v14

    aget-object v23, v4, v6

    aget-wide v24, v23, v14

    sub-double v21, v21, v24

    div-double v21, v21, v12

    aput-wide v21, v19, v14

    .line 88
    aget-object v19, v10, v2

    aget-object v21, v4, v2

    aget-wide v24, v21, v15

    aget-wide v26, v21, v16

    sub-double v24, v24, v26

    div-double v24, v24, v17

    aput-wide v24, v19, v14

    mul-double v17, v17, v12

    .line 92
    aget-object v19, v11, v2

    aget-wide v21, v20, v15

    aget-wide v24, v20, v16

    sub-double v21, v21, v24

    aget-wide v24, v23, v15

    sub-double v21, v21, v24

    aget-wide v24, v23, v16

    add-double v21, v21, v24

    div-double v21, v21, v17

    aput-wide v21, v19, v14

    move v14, v15

    goto :goto_1

    :cond_0
    move v2, v3

    goto :goto_0

    .line 97
    :cond_1
    new-instance v12, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;

    move-object v0, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object v5, v7

    move-object v6, v10

    move-object v7, v11

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V

    return-object v12

    .line 56
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v8

    array-length v2, v4

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 53
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
