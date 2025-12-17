.class public Lorg/apache/commons/math3/transform/FastCosineTransformer;
.super Ljava/lang/Object;
.source "FastCosineTransformer.java"

# interfaces
.implements Lorg/apache/commons/math3/transform/RealTransformer;
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = 0x1330294L


# instance fields
.field private final normalization:Lorg/apache/commons/math3/transform/DctNormalization;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/transform/DctNormalization;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    return-void
.end method


# virtual methods
.method protected fct([D)[D
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 138
    array-length v1, v0

    new-array v1, v1, [D

    .line 140
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    int-to-long v4, v2

    .line 141
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/ArithmeticUtils;->isPowerOfTwo(J)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    if-ne v2, v3, :cond_0

    .line 147
    aget-wide v8, v0, v5

    aget-wide v10, v0, v3

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    aput-wide v8, v1, v5

    .line 148
    aget-wide v4, v0, v5

    sub-double/2addr v4, v10

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    return-object v1

    .line 153
    :cond_0
    new-array v4, v2, [D

    .line 154
    aget-wide v8, v0, v5

    aget-wide v10, v0, v2

    add-double/2addr v8, v10

    mul-double/2addr v8, v6

    aput-wide v8, v4, v5

    shr-int/lit8 v8, v2, 0x1

    .line 155
    aget-wide v9, v0, v8

    aput-wide v9, v4, v8

    .line 157
    aget-wide v9, v0, v5

    aget-wide v11, v0, v2

    sub-double/2addr v9, v11

    mul-double/2addr v9, v6

    move v11, v3

    :goto_0
    if-ge v11, v8, :cond_1

    .line 159
    aget-wide v12, v0, v11

    sub-int v14, v2, v11

    aget-wide v15, v0, v14

    add-double/2addr v12, v15

    mul-double/2addr v12, v6

    int-to-double v6, v11

    const-wide v17, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v6, v17

    move-object/from16 v18, v4

    int-to-double v3, v2

    div-double/2addr v6, v3

    .line 160
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v3

    aget-wide v19, v0, v11

    aget-wide v21, v0, v14

    sub-double v19, v19, v21

    mul-double v3, v3, v19

    .line 161
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    aget-wide v19, v0, v11

    aget-wide v21, v0, v14

    sub-double v19, v19, v21

    mul-double v6, v6, v19

    sub-double v19, v12, v3

    .line 162
    aput-wide v19, v18, v11

    add-double/2addr v12, v3

    .line 163
    aput-wide v12, v18, v14

    add-double/2addr v9, v6

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v4, v18

    const/4 v3, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    goto :goto_0

    :cond_1
    move-object/from16 v18, v4

    .line 167
    new-instance v0, Lorg/apache/commons/math3/transform/FastFourierTransformer;

    sget-object v3, Lorg/apache/commons/math3/transform/DftNormalization;->STANDARD:Lorg/apache/commons/math3/transform/DftNormalization;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;-><init>(Lorg/apache/commons/math3/transform/DftNormalization;)V

    .line 168
    sget-object v3, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    invoke-virtual {v0, v4, v3}, Lorg/apache/commons/math3/transform/FastFourierTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    .line 171
    aget-object v3, v0, v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v1, v5

    const/16 v17, 0x1

    .line 172
    aput-wide v9, v1, v17

    move/from16 v3, v17

    :goto_1
    if-ge v3, v8, :cond_2

    mul-int/lit8 v4, v3, 0x2

    .line 174
    aget-object v5, v0, v3

    invoke-virtual {v5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v5

    aput-wide v5, v1, v4

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v4, v4, -0x1

    .line 175
    aget-wide v6, v1, v4

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v9

    sub-double/2addr v6, v9

    aput-wide v6, v1, v5

    add-int/lit8 v3, v3, 0x1

    const/16 v17, 0x1

    goto :goto_1

    .line 177
    :cond_2
    aget-object v0, v0, v8

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    aput-wide v3, v1, v2

    return-object v1

    .line 142
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POWER_OF_TWO_PLUS_ONE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public transform(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDILorg/apache/commons/math3/transform/TransformType;)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 123
    invoke-static/range {p1 .. p6}, Lorg/apache/commons/math3/analysis/FunctionUtils;->sample(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDI)[D

    move-result-object p1

    .line 124
    invoke-virtual {p0, p1, p7}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->transform([DLorg/apache/commons/math3/transform/TransformType;)[D

    move-result-object p1

    return-object p1
.end method

.method public transform([DLorg/apache/commons/math3/transform/TransformType;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 92
    sget-object v0, Lorg/apache/commons/math3/transform/TransformType;->FORWARD:Lorg/apache/commons/math3/transform/TransformType;

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    if-ne p2, v0, :cond_1

    .line 93
    iget-object p2, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne p2, v0, :cond_0

    .line 94
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v3, p2

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 95
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p1

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p1

    return-object p1

    .line 99
    :cond_1
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    int-to-double v3, p2

    div-double/2addr v1, v3

    .line 101
    iget-object p2, p0, Lorg/apache/commons/math3/transform/FastCosineTransformer;->normalization:Lorg/apache/commons/math3/transform/DctNormalization;

    sget-object v0, Lorg/apache/commons/math3/transform/DctNormalization;->ORTHOGONAL_DCT_I:Lorg/apache/commons/math3/transform/DctNormalization;

    if-ne p2, v0, :cond_2

    .line 102
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 106
    :cond_2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/transform/FastCosineTransformer;->fct([D)[D

    move-result-object p1

    invoke-static {p1, v1, v2}, Lorg/apache/commons/math3/transform/TransformUtils;->scaleArray([DD)[D

    move-result-object p1

    return-object p1
.end method
