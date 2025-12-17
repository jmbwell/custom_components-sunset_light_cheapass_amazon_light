.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "PiecewiseBicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final MIN_NUM_POINTS:I = 0x5


# instance fields
.field private final fval:[[D

.field private final xval:[D

.field private final yval:[D


# direct methods
.method public constructor <init>([D[D[[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    .line 71
    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    .line 78
    array-length v2, p1

    .line 79
    array-length v3, p2

    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 81
    array-length v4, p3

    if-eqz v4, :cond_3

    array-length v4, v1

    if-eqz v4, :cond_3

    const/4 v4, 0x5

    if-lt v2, v4, :cond_2

    if-lt v3, v4, :cond_2

    .line 88
    array-length v5, p3

    if-lt v5, v4, :cond_2

    array-length v5, v1

    if-lt v5, v4, :cond_2

    .line 95
    array-length v4, p3

    if-ne v2, v4, :cond_1

    .line 99
    array-length v1, v1

    if-ne v3, v1, :cond_0

    .line 103
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 104
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 106
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    .line 107
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    .line 108
    invoke-virtual {p3}, [[D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    return-void

    .line 100
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v0

    array-length p2, p2

    invoke-direct {p1, v3, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 96
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    invoke-direct {p1, v2, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    .line 92
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw p1

    .line 85
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 75
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method private searchIndex(D[DII)I
    .locals 3

    .line 183
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    .line 185
    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    if-gez v0, :cond_0

    neg-int p1, v0

    sub-int/2addr p1, p4

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    sub-int p1, v0, p4

    :goto_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, p1

    :goto_1
    add-int p1, v2, p5

    .line 202
    array-length p2, p3

    if-lt p1, p2, :cond_2

    .line 205
    array-length p1, p3

    sub-int v2, p1, p5

    :cond_2
    return v2

    .line 186
    :cond_3
    new-instance p4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aget-wide v0, p3, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    array-length p5, p3

    add-int/lit8 p5, p5, -0x1

    aget-wide v0, p3, p5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p4, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p4
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 6

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

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

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 117
    new-instance v7, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;-><init>()V

    .line 120
    iget-object v3, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    const/4 v4, 0x2

    const/4 v5, 0x5

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v8

    .line 121
    iget-object v3, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    move-wide/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v0

    const/4 v1, 0x5

    .line 123
    new-array v2, v1, [D

    .line 124
    new-array v3, v1, [D

    .line 125
    new-array v4, v1, [D

    .line 126
    new-array v5, v1, [D

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v1, :cond_0

    .line 129
    iget-object v11, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    add-int v12, v8, v10

    aget-wide v12, v11, v12

    aput-wide v12, v2, v10

    .line 130
    iget-object v11, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    add-int v12, v0, v10

    aget-wide v12, v11, v12

    aput-wide v12, v3, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    move v10, v9

    :goto_1
    if-ge v10, v1, :cond_2

    move v11, v9

    :goto_2
    if-ge v11, v1, :cond_1

    .line 135
    iget-object v12, v6, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    add-int v13, v8, v11

    aget-object v12, v12, v13

    add-int v13, v0, v10

    aget-wide v13, v12, v13

    aput-wide v13, v4, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 137
    :cond_1
    invoke-virtual {v7, v2, v4}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v11

    move-wide/from16 v12, p1

    .line 138
    invoke-virtual {v11, v12, v13}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v14

    aput-wide v14, v5, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 141
    :cond_2
    invoke-virtual {v7, v3, v5}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v0

    move-wide/from16 v1, p3

    .line 143
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v0

    return-wide v0
.end method
