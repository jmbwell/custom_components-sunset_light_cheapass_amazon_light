.class public Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;
.super Ljava/lang/Object;
.source "HermiteInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableVectorFunction;


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    return-void
.end method

.method private checkInterpolation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method private varargs polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 1

    .line 236
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method


# virtual methods
.method public varargs addSamplePoint(D[[D)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    move v3, v2

    .line 89
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 91
    aget-object v4, v1, v3

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/4 v7, 0x1

    if-le v3, v7, :cond_0

    .line 93
    invoke-static {v3}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v8

    long-to-double v8, v8

    div-double v8, v5, v8

    move v10, v2

    .line 94
    :goto_1
    array-length v11, v4

    if-ge v10, v11, :cond_0

    .line 95
    aget-wide v11, v4, v10

    mul-double/2addr v11, v8

    aput-wide v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 100
    :cond_0
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 101
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v10, v8, v3

    invoke-interface {v9, v10, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v9, v3

    move-object v10, v4

    :goto_2
    if-ge v9, v8, :cond_3

    .line 104
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v9, v9, 0x1

    sub-int v12, v8, v9

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    .line 105
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Double;

    invoke-virtual {v12}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v12

    sub-double v12, p1, v12

    div-double v12, v5, v12

    .line 106
    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v14

    if-nez v14, :cond_2

    move v14, v2

    .line 109
    :goto_3
    array-length v15, v4

    if-ge v14, v15, :cond_1

    .line 110
    aget-wide v15, v10, v14

    aget-wide v17, v11, v14

    sub-double v15, v15, v17

    mul-double/2addr v15, v12

    aput-wide v15, v11, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_1
    move-object v10, v11

    goto :goto_2

    .line 107
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-direct {v1, v3, v5}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 116
    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public getPolynomials()[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    const/4 v0, 0x1

    .line 136
    new-array v1, v0, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v1

    .line 137
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [D

    array-length v3, v3

    new-array v4, v3, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move v5, v2

    :goto_0
    if-ge v5, v3, :cond_0

    .line 139
    aput-object v1, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 141
    :cond_0
    new-array v1, v0, [D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v1

    move v7, v2

    .line 144
    :goto_1
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 145
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    move v9, v2

    :goto_2
    if-ge v9, v3, :cond_1

    .line 147
    aget-object v10, v4, v9

    aget-wide v11, v8, v9

    new-array v13, v0, [D

    aput-wide v11, v13, v2

    invoke-direct {p0, v13}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v10

    aput-object v10, v4, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 149
    :cond_1
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    neg-double v8, v8

    const/4 v10, 0x2

    new-array v10, v10, [D

    aput-wide v8, v10, v2

    aput-wide v5, v10, v0

    invoke-direct {p0, v10}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->polynomial([D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v8

    invoke-virtual {v1, v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    return-object v4
.end method

.method public value(D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 173
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    new-array v2, v0, [D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move v5, v1

    .line 175
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 176
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [D

    move v7, v1

    :goto_1
    if-ge v7, v0, :cond_0

    .line 178
    aget-wide v8, v2, v7

    aget-wide v10, v6, v7

    mul-double/2addr v10, v3

    add-double/2addr v8, v10

    aput-wide v8, v2, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 180
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    sub-double v6, p1, v6

    mul-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 203
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->checkInterpolation()V

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    array-length v0, v0

    new-array v2, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 206
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 207
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v4, v1

    .line 208
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 209
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    move v6, v1

    :goto_1
    if-ge v6, v0, :cond_0

    .line 211
    aget-object v7, v2, v6

    aget-wide v8, v5, v6

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v7

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 213
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/HermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v5

    .line 214
    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method
