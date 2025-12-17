.class public Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
.super Ljava/lang/Object;
.source "AkimaSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field private static final MINIMUM_NUMBER_POINTS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private differentiateThreePoint([D[DIIII)D
    .locals 14

    .line 148
    aget-wide v0, p2, p4

    .line 149
    aget-wide v2, p2, p5

    .line 150
    aget-wide v4, p2, p6

    .line 152
    aget-wide v6, p1, p3

    aget-wide v8, p1, p4

    sub-double/2addr v6, v8

    .line 153
    aget-wide v10, p1, p5

    sub-double/2addr v10, v8

    .line 154
    aget-wide v12, p1, p6

    sub-double/2addr v12, v8

    sub-double/2addr v4, v0

    div-double v8, v12, v10

    sub-double/2addr v2, v0

    mul-double/2addr v8, v2

    sub-double/2addr v4, v8

    mul-double v0, v12, v12

    mul-double/2addr v12, v10

    sub-double/2addr v0, v12

    div-double/2addr v4, v0

    mul-double v0, v4, v10

    mul-double/2addr v0, v10

    sub-double/2addr v2, v0

    div-double/2addr v2, v10

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v0

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    return-wide v4
.end method

.method private interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 28

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 175
    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_3

    .line 179
    array-length v3, v0

    array-length v4, v2

    if-ne v3, v4, :cond_2

    .line 185
    array-length v3, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-lt v3, v4, :cond_1

    .line 191
    array-length v3, v0

    sub-int/2addr v3, v5

    .line 192
    new-array v6, v3, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_0

    add-int/lit8 v9, v8, 0x1

    .line 196
    aget-wide v10, v0, v9

    aget-wide v12, v0, v8

    sub-double/2addr v10, v12

    mul-double v12, v10, v10

    .line 199
    aget-wide v14, v1, v8

    .line 200
    aget-wide v16, v1, v9

    .line 202
    aget-wide v18, v2, v8

    .line 203
    aget-wide v20, v2, v9

    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    sub-double v24, v16, v14

    mul-double v24, v24, v22

    div-double v24, v24, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v18, v22

    sub-double v24, v24, v26

    sub-double v24, v24, v20

    div-double v24, v24, v10

    sub-double v16, v14, v16

    mul-double v16, v16, v22

    div-double v16, v16, v10

    add-double v16, v16, v18

    add-double v16, v16, v20

    div-double v16, v16, v12

    const/4 v10, 0x4

    .line 208
    new-array v10, v10, [D

    aput-wide v14, v10, v7

    aput-wide v18, v10, v5

    aput-wide v24, v10, v4

    const/4 v11, 0x3

    aput-wide v16, v10, v11

    .line 209
    new-instance v11, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v11, v10}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v11, v6, v8

    move v8, v9

    goto :goto_0

    .line 212
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v1, v0, v6}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v1

    .line 186
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 180
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v2, v2

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 176
    :cond_3
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
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

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    if-eqz v7, :cond_6

    if-eqz v8, :cond_6

    .line 76
    array-length v0, v7

    array-length v1, v8

    if-ne v0, v1, :cond_5

    .line 80
    array-length v0, v7

    const/4 v1, 0x5

    const/4 v9, 0x1

    if-lt v0, v1, :cond_4

    .line 86
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 88
    array-length v0, v7

    sub-int/2addr v0, v9

    .line 90
    new-array v1, v0, [D

    .line 91
    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 v4, v3, 0x1

    .line 94
    aget-wide v5, v8, v4

    aget-wide v11, v8, v3

    sub-double/2addr v5, v11

    aget-wide v11, v7, v4

    aget-wide v13, v7, v3

    sub-double/2addr v11, v13

    div-double/2addr v5, v11

    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v9

    :goto_1
    if-ge v3, v0, :cond_1

    .line 98
    aget-wide v4, v1, v3

    add-int/lit8 v6, v3, -0x1

    aget-wide v11, v1, v6

    sub-double/2addr v4, v11

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102
    :cond_1
    array-length v0, v7

    new-array v11, v0, [D

    const/4 v12, 0x2

    move v3, v12

    :goto_2
    add-int/lit8 v4, v0, -0x2

    if-ge v3, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    .line 105
    aget-wide v5, v2, v4

    add-int/lit8 v13, v3, -0x1

    .line 106
    aget-wide v14, v2, v13

    const-wide/16 v9, 0x0

    .line 107
    invoke-static {v5, v6, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-static {v14, v15, v9, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 109
    aget-wide v5, v7, v3

    .line 110
    aget-wide v9, v7, v4

    .line 111
    aget-wide v14, v7, v13

    sub-double v16, v9, v5

    .line 112
    aget-wide v18, v1, v13

    mul-double v16, v16, v18

    sub-double/2addr v5, v14

    aget-wide v18, v1, v3

    mul-double v5, v5, v18

    add-double v16, v16, v5

    sub-double/2addr v9, v14

    div-double v16, v16, v9

    aput-wide v16, v11, v3

    goto :goto_3

    .line 114
    :cond_2
    aget-wide v9, v1, v13

    mul-double/2addr v9, v5

    aget-wide v16, v1, v3

    mul-double v16, v16, v14

    add-double v9, v9, v16

    add-double/2addr v5, v14

    div-double/2addr v9, v5

    aput-wide v9, v11, v3

    :goto_3
    move v3, v4

    const/4 v9, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 118
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v0

    const/4 v2, 0x0

    aput-wide v0, v11, v2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 119
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v0

    const/4 v9, 0x1

    aput-wide v0, v11, v9

    .line 120
    array-length v0, v7

    add-int/lit8 v10, v0, -0x2

    array-length v0, v7

    add-int/lit8 v3, v0, -0x2

    array-length v0, v7

    add-int/lit8 v4, v0, -0x3

    array-length v0, v7

    add-int/lit8 v5, v0, -0x2

    array-length v0, v7

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v0

    aput-wide v0, v11, v10

    .line 123
    array-length v0, v7

    add-int/lit8 v10, v0, -0x1

    array-length v0, v7

    add-int/lit8 v3, v0, -0x1

    array-length v0, v7

    add-int/lit8 v4, v0, -0x3

    array-length v0, v7

    add-int/lit8 v5, v0, -0x2

    array-length v0, v7

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v0

    aput-wide v0, v11, v10

    move-object/from16 v0, p0

    .line 127
    invoke-direct {v0, v7, v8, v11}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v1

    return-object v1

    :cond_4
    move-object/from16 v0, p0

    .line 81
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    :cond_5
    move-object/from16 v0, p0

    .line 77
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v7

    array-length v3, v8

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_6
    move-object/from16 v0, p0

    .line 73
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1
.end method
