.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.super Ljava/lang/Object;
.source "PolynomialFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b3a15b67b0ea49fL


# instance fields
.field private final coefficients:[D


# direct methods
.method public constructor <init>([D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    array-length v0, p1

    if-eqz v0, :cond_1

    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 74
    aget-wide v1, p1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_0
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    .line 78
    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    .line 72
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method

.method protected static differentiate([D)[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    array-length v0, p0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    new-array p0, v1, [D

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    aput-wide v0, p0, v2

    return-object p0

    :cond_0
    sub-int/2addr v0, v1

    .line 267
    new-array v1, v0, [D

    :goto_0
    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    int-to-double v3, v0

    .line 269
    aget-wide v5, p0, v0

    mul-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-object v1

    .line 262
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method protected static evaluate([DD)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    array-length v0, p0

    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 134
    aget-wide v1, p0, v1

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    mul-double/2addr v1, p1

    .line 136
    aget-wide v3, p0, v0

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 132
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method private static toString(D)Ljava/lang/String;
    .locals 1

    .line 356
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    .line 357
    const-string p1, ".0"

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 358
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 9

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 171
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 174
    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 176
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v5, v4, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v4, v3

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v3

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, p1

    if-ge v4, v5, :cond_1

    move-object v3, p1

    :cond_1
    sub-int/2addr v1, v0

    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public degree()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 382
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 383
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v1, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p1

    if-nez p1, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public getCoefficients()[D
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 369
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([D)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 13

    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    const-wide/16 v4, 0x0

    .line 238
    aput-wide v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    .line 239
    iget-object v5, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, v5

    sub-int v5, v4, v5

    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    .line 240
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v6, v6

    invoke-static {v6, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 242
    aget-wide v6, v1, v3

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v9, v8, v5

    iget-object v8, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    sub-int v11, v3, v5

    aget-wide v11, v8, v11

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    aput-wide v6, v1, v3

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v3, v4

    goto :goto_0

    .line 246
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public negate()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 5

    .line 221
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 222
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 223
    aget-wide v3, v2, v1

    neg-double v2, v3

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v1
.end method

.method public polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 280
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->differentiate([D)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 9

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 196
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 199
    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 201
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v5, v4, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v4, v3

    sub-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v3

    iget-object v5, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v5, v5

    if-ge v4, v5, :cond_1

    :goto_1
    if-ge v0, v1, :cond_2

    .line 205
    iget-object v3, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v3, v0

    neg-double v3, v4

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    sub-int/2addr v1, v0

    .line 208
    invoke-static {v3, v0, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {p1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    aget-wide v2, v1, v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    const/4 v7, 0x1

    if-nez v6, :cond_0

    .line 311
    array-length v1, v1

    if-ne v1, v7, :cond_1

    .line 312
    const-string v0, "0"

    return-object v0

    .line 315
    :cond_0
    invoke-static {v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v1, v7

    .line 318
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v2

    if-ge v1, v3, :cond_7

    .line 319
    aget-wide v8, v2, v1

    cmpl-double v2, v8, v4

    if-eqz v2, :cond_6

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 321
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    cmpg-double v2, v8, v4

    if-gez v2, :cond_2

    .line 322
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :cond_2
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    cmpg-double v2, v8, v4

    if-gez v2, :cond_4

    .line 328
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v8, v2, v1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double v8, v2, v8

    cmpl-double v6, v8, v4

    if-eqz v6, :cond_5

    .line 334
    invoke-static {v2, v3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_5
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-le v1, v7, :cond_6

    const/16 v2, 0x5e

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->evaluate([DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v4, v5

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_0

    .line 157
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v3, v2, v0

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 152
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method
