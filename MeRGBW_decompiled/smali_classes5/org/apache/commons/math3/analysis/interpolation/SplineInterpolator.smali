.class public Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
.super Ljava/lang/Object;
.source "SplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 69
    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_5

    .line 73
    array-length v2, v0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 79
    array-length v2, v0

    add-int/lit8 v5, v2, -0x1

    .line 81
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 84
    new-array v6, v5, [D

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v5, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 86
    aget-wide v10, v0, v9

    aget-wide v12, v0, v8

    sub-double/2addr v10, v12

    aput-wide v10, v6, v8

    move v8, v9

    goto :goto_0

    .line 89
    :cond_0
    new-array v8, v5, [D

    .line 90
    new-array v9, v2, [D

    const-wide/16 v10, 0x0

    .line 91
    aput-wide v10, v8, v7

    .line 92
    aput-wide v10, v9, v7

    const/4 v12, 0x1

    :goto_1
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const-wide/high16 v15, 0x4008000000000000L    # 3.0

    if-ge v12, v5, :cond_1

    add-int/lit8 v17, v12, 0x1

    .line 95
    aget-wide v18, v0, v17

    add-int/lit8 v20, v12, -0x1

    aget-wide v21, v0, v20

    sub-double v18, v18, v21

    mul-double v18, v18, v13

    aget-wide v13, v6, v20

    aget-wide v21, v8, v20

    mul-double v13, v13, v21

    sub-double v18, v18, v13

    .line 96
    aget-wide v13, v6, v12

    div-double v13, v13, v18

    aput-wide v13, v8, v12

    .line 97
    aget-wide v13, v1, v17

    aget-wide v21, v6, v20

    mul-double v13, v13, v21

    aget-wide v23, v1, v12

    aget-wide v25, v0, v17

    aget-wide v27, v0, v20

    sub-double v25, v25, v27

    mul-double v23, v23, v25

    sub-double v13, v13, v23

    aget-wide v23, v1, v20

    aget-wide v25, v6, v12

    mul-double v23, v23, v25

    add-double v13, v13, v23

    mul-double/2addr v13, v15

    mul-double v25, v25, v21

    div-double v13, v13, v25

    aget-wide v15, v9, v20

    mul-double v21, v21, v15

    sub-double v13, v13, v21

    div-double v13, v13, v18

    aput-wide v13, v9, v12

    move/from16 v12, v17

    goto :goto_1

    .line 102
    :cond_1
    new-array v12, v5, [D

    .line 103
    new-array v3, v2, [D

    .line 104
    new-array v4, v5, [D

    .line 106
    aput-wide v10, v9, v5

    .line 107
    aput-wide v10, v3, v5

    const/4 v10, 0x2

    sub-int/2addr v2, v10

    :goto_2
    if-ltz v2, :cond_2

    .line 110
    aget-wide v19, v9, v2

    aget-wide v21, v8, v2

    add-int/lit8 v11, v2, 0x1

    aget-wide v23, v3, v11

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    aput-wide v19, v3, v2

    .line 111
    aget-wide v21, v1, v11

    aget-wide v23, v1, v2

    sub-double v21, v21, v23

    aget-wide v23, v6, v2

    div-double v21, v21, v23

    aget-wide v25, v3, v11

    mul-double v19, v19, v13

    add-double v25, v25, v19

    mul-double v23, v23, v25

    div-double v23, v23, v15

    sub-double v21, v21, v23

    aput-wide v21, v12, v2

    .line 112
    aget-wide v19, v3, v11

    aget-wide v21, v3, v2

    sub-double v19, v19, v21

    aget-wide v21, v6, v2

    mul-double v21, v21, v15

    div-double v19, v19, v21

    aput-wide v19, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 115
    :cond_2
    new-array v2, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move v6, v7

    :goto_3
    if-ge v6, v5, :cond_3

    .line 118
    aget-wide v8, v1, v6

    .line 119
    aget-wide v13, v12, v6

    .line 120
    aget-wide v15, v3, v6

    .line 121
    aget-wide v19, v4, v6

    const/4 v11, 0x4

    new-array v11, v11, [D

    aput-wide v8, v11, v7

    const/4 v8, 0x1

    aput-wide v13, v11, v8

    aput-wide v15, v11, v10

    const/4 v8, 0x3

    aput-wide v19, v11, v8

    .line 122
    new-instance v8, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v8, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v8, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 125
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1

    .line 74
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 70
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
