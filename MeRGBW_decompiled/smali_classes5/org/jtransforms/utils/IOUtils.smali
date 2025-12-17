.class public Lorg/jtransforms/utils/IOUtils;
.super Ljava/lang/Object;
.source "IOUtils.java"


# static fields
.field private static final FF:Ljava/lang/String; = "%.4f"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeRMSE(DD)D
    .locals 0

    sub-double/2addr p0, p2

    mul-double/2addr p0, p0

    .line 174
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static computeRMSE(FF)D
    .locals 0

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr p0, p0

    .line 65
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static computeRMSE(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)D
    .locals 8

    .line 209
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 214
    :goto_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 215
    invoke-virtual {p0, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {p1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->length()J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 210
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE(Lpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)D
    .locals 6

    .line 100
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v0

    invoke-virtual {p1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    .line 105
    :goto_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 106
    invoke-virtual {p0, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {p1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v4

    add-double/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->length()J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 101
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([D[D)D
    .locals 7

    .line 187
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 192
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 193
    aget-wide v3, p0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    mul-double/2addr v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 188
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([F[F)D
    .locals 5

    .line 78
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 83
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 84
    aget v3, p0, v2

    aget v4, p1, v2

    sub-float/2addr v3, v4

    float-to-double v3, v3

    mul-double/2addr v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_0
    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 79
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([[D[[D)D
    .locals 10

    .line 231
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    aget-object v2, p1, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x0

    move v3, v0

    .line 236
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    move v4, v0

    .line 237
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 238
    aget-object v5, p0, v3

    aget-wide v6, v5, v4

    aget-object v5, p1, v3

    aget-wide v8, v5, v4

    sub-double/2addr v6, v8

    mul-double/2addr v6, v6

    add-double/2addr v1, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 242
    :cond_1
    array-length p1, p0

    aget-object p0, p0, v0

    array-length p0, p0

    mul-int/2addr p1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 232
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([[F[[F)D
    .locals 7

    .line 122
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v1, v1

    aget-object v2, p1, v0

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const-wide/16 v1, 0x0

    move v3, v0

    .line 127
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_1

    move v4, v0

    .line 128
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_0

    .line 129
    aget-object v5, p0, v3

    aget v5, v5, v4

    aget-object v6, p1, v3

    aget v6, v6, v4

    sub-float/2addr v5, v6

    float-to-double v5, v5

    mul-double/2addr v5, v5

    add-double/2addr v1, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 133
    :cond_1
    array-length p1, p0

    aget-object p0, p0, v0

    array-length p0, p0

    mul-int/2addr p1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 123
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([[[D[[[D)D
    .locals 11

    .line 255
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, v1

    aget-object v3, p1, v0

    array-length v4, v3

    if-ne v2, v4, :cond_3

    aget-object v1, v1, v0

    array-length v1, v1

    aget-object v2, v3, v0

    array-length v2, v2

    if-ne v1, v2, :cond_3

    const-wide/16 v1, 0x0

    move v3, v0

    .line 260
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    move v4, v0

    .line 261
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    move v5, v0

    .line 262
    :goto_2
    aget-object v6, p0, v0

    aget-object v6, v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 263
    aget-object v6, p0, v3

    aget-object v6, v6, v4

    aget-wide v7, v6, v5

    aget-object v6, p1, v3

    aget-object v6, v6, v4

    aget-wide v9, v6, v5

    sub-double/2addr v7, v9

    mul-double/2addr v7, v7

    add-double/2addr v1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    :cond_2
    array-length p1, p0

    aget-object p0, p0, v0

    array-length v3, p0

    mul-int/2addr p1, v3

    aget-object p0, p0, v0

    array-length p0, p0

    mul-int/2addr p1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 256
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRMSE([[[F[[[F)D
    .locals 8

    .line 146
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, v1

    aget-object v3, p1, v0

    array-length v4, v3

    if-ne v2, v4, :cond_3

    aget-object v1, v1, v0

    array-length v1, v1

    aget-object v2, v3, v0

    array-length v2, v2

    if-ne v1, v2, :cond_3

    const-wide/16 v1, 0x0

    move v3, v0

    .line 151
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_2

    move v4, v0

    .line 152
    :goto_1
    aget-object v5, p0, v0

    array-length v5, v5

    if-ge v4, v5, :cond_1

    move v5, v0

    .line 153
    :goto_2
    aget-object v6, p0, v0

    aget-object v6, v6, v0

    array-length v6, v6

    if-ge v5, v6, :cond_0

    .line 154
    aget-object v6, p0, v3

    aget-object v6, v6, v4

    aget v6, v6, v5

    aget-object v7, p1, v3

    aget-object v7, v7, v4

    aget v7, v7, v5

    sub-float/2addr v6, v7

    float-to-double v6, v6

    mul-double/2addr v6, v6

    add-double/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    :cond_2
    array-length p1, p0

    aget-object p0, p0, v0

    array-length v3, p0

    mul-int/2addr p1, v3

    aget-object p0, p0, v0

    array-length p0, p0

    mul-int/2addr p1, p0

    int-to-double p0, p1

    div-double/2addr v1, p0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0

    .line 147
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Arrays are not the same size"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fillMatrix_1D(JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 5

    .line 293
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 295
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillMatrix_1D(JLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 5

    .line 307
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p0

    if-gez v3, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {p2, v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillMatrix_1D(J[D)V
    .locals 4

    .line 279
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    .line 281
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v2

    aput-wide v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillMatrix_1D(J[F)V
    .locals 4

    .line 321
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    :goto_0
    int-to-long v2, v1

    cmp-long v2, v2, p0

    if-gez v2, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fillMatrix_2D(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 14

    .line 370
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, p0

    if-gez v5, :cond_1

    move-wide v5, v1

    :goto_1
    cmp-long v7, v5, p2

    const-wide/16 v8, 0x1

    if-gez v7, :cond_0

    mul-long v10, v3, p2

    add-long/2addr v10, v5

    .line 373
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    move-object/from16 v7, p4

    invoke-virtual {v7, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v8

    goto :goto_1

    :cond_0
    move-object/from16 v7, p4

    add-long/2addr v3, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_2D(JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 13

    .line 353
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    cmp-long v5, v3, p0

    if-gez v5, :cond_1

    move-wide v5, v1

    :goto_1
    cmp-long v7, v5, p2

    const-wide/16 v8, 0x1

    if-gez v7, :cond_0

    mul-long v10, v3, p2

    add-long/2addr v10, v5

    .line 356
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v7

    move-object/from16 v12, p4

    invoke-virtual {v12, v10, v11, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v8

    goto :goto_1

    :cond_0
    move-object/from16 v12, p4

    add-long/2addr v3, v8

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_2D(JJ[D)V
    .locals 10

    .line 336
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, p0

    if-gez v5, :cond_1

    move v5, v1

    :goto_1
    int-to-long v6, v5

    cmp-long v8, v6, p2

    if-gez v8, :cond_0

    mul-long v8, v3, p2

    add-long/2addr v8, v6

    long-to-int v6, v8

    .line 339
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    aput-wide v7, p4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_2D(JJ[F)V
    .locals 10

    .line 387
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v5, v3, p0

    if-gez v5, :cond_1

    move v5, v1

    :goto_1
    int-to-long v6, v5

    cmp-long v8, v6, p2

    if-gez v8, :cond_0

    mul-long v8, v3, p2

    add-long/2addr v8, v6

    long-to-int v6, v8

    .line 390
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, p4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_2D(JJ[[D)V
    .locals 7

    .line 404
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p0

    if-gez v3, :cond_1

    move v3, v1

    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, p2

    if-gez v4, :cond_0

    .line 407
    aget-object v4, p4, v2

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_2D(JJ[[F)V
    .locals 6

    .line 421
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p0

    if-gez v3, :cond_1

    move v3, v1

    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, p2

    if-gez v4, :cond_0

    .line 424
    aget-object v4, p4, v2

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 18

    .line 461
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    mul-long v1, p2, p4

    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v7, v5, p0

    if-gez v7, :cond_2

    const-wide/16 v7, 0x0

    :goto_1
    cmp-long v9, v7, p2

    const-wide/16 v10, 0x1

    if-gez v9, :cond_1

    const-wide/16 v12, 0x0

    :goto_2
    cmp-long v9, v12, p4

    if-gez v9, :cond_0

    mul-long v14, v5, v1

    mul-long v16, v7, p4

    add-long v14, v14, v16

    add-long/2addr v14, v12

    .line 467
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v3

    move-object/from16 v9, p6

    invoke-virtual {v9, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v12, v10

    goto :goto_2

    :cond_0
    move-object/from16 v9, p6

    add-long/2addr v7, v10

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    add-long/2addr v5, v10

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fillMatrix_3D(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 18

    .line 483
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    mul-long v1, p2, p4

    const-wide/16 v5, 0x0

    :goto_0
    cmp-long v7, v5, p0

    if-gez v7, :cond_2

    const-wide/16 v7, 0x0

    :goto_1
    cmp-long v9, v7, p2

    const-wide/16 v10, 0x1

    if-gez v9, :cond_1

    const-wide/16 v12, 0x0

    :goto_2
    cmp-long v9, v12, p4

    if-gez v9, :cond_0

    mul-long v14, v5, v1

    mul-long v16, v7, p4

    add-long v14, v14, v16

    add-long/2addr v14, v12

    .line 489
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v9

    float-to-double v3, v9

    move-object/from16 v9, p6

    invoke-virtual {v9, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v12, v10

    goto :goto_2

    :cond_0
    move-object/from16 v9, p6

    add-long/2addr v7, v10

    goto :goto_1

    :cond_1
    move-object/from16 v9, p6

    add-long/2addr v5, v10

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fillMatrix_3D(JJJ[D)V
    .locals 17

    .line 439
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    mul-long v1, p2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p0

    if-gez v7, :cond_2

    move v7, v3

    :goto_1
    int-to-long v8, v7

    cmp-long v10, v8, p2

    if-gez v10, :cond_1

    move v10, v3

    :goto_2
    int-to-long v11, v10

    cmp-long v13, v11, p4

    if-gez v13, :cond_0

    mul-long v13, v5, v1

    mul-long v15, v8, p4

    add-long/2addr v13, v15

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 445
    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    aput-wide v12, p6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fillMatrix_3D(JJJ[F)V
    .locals 17

    .line 505
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    mul-long v1, p2, p4

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    int-to-long v5, v4

    cmp-long v7, v5, p0

    if-gez v7, :cond_2

    move v7, v3

    :goto_1
    int-to-long v8, v7

    cmp-long v10, v8, p2

    if-gez v10, :cond_1

    move v10, v3

    :goto_2
    int-to-long v11, v10

    cmp-long v13, v11, p4

    if-gez v13, :cond_0

    mul-long v13, v5, v1

    mul-long v15, v8, p4

    add-long/2addr v13, v15

    add-long/2addr v13, v11

    long-to-int v11, v13

    .line 511
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v12

    aput v12, p6, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fillMatrix_3D(JJJ[[[D)V
    .locals 8

    .line 527
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p0

    if-gez v3, :cond_2

    move v3, v1

    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    move v4, v1

    :goto_2
    int-to-long v5, v4

    cmp-long v5, v5, p4

    if-gez v5, :cond_0

    .line 531
    aget-object v5, p6, v2

    aget-object v5, v5, v3

    invoke-virtual {v0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static fillMatrix_3D(JJJ[[[F)V
    .locals 7

    .line 547
    new-instance v0, Ljava/util/Random;

    const-wide/16 v1, 0x2

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    int-to-long v3, v2

    cmp-long v3, v3, p0

    if-gez v3, :cond_2

    move v3, v1

    :goto_1
    int-to-long v4, v3

    cmp-long v4, v4, p2

    if-gez v4, :cond_1

    move v4, v1

    :goto_2
    int-to-long v5, v4

    cmp-long v5, v5, p4

    if-gez v5, :cond_0

    .line 551
    aget-object v5, p6, v2

    aget-object v5, v5, v3

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static showComplex_1D([DLjava/lang/String;)V
    .locals 11

    .line 567
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 568
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v0, p1

    .line 569
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    .line 570
    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    const-string v7, "%.4f"

    const/4 v8, 0x1

    if-nez v6, :cond_0

    .line 571
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v2, v3, p1

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 574
    :cond_0
    aget-wide v9, p0, v0

    cmpl-double v6, v9, v4

    const-string v9, "i"

    if-nez v6, :cond_1

    .line 575
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, p1

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 579
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p0, v1

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, p1

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 582
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, p1

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x2

    goto/16 :goto_0

    .line 584
    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static showComplex_2D(II[DLjava/lang/String;)V
    .locals 15

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": complex array 2D: %d rows, %d columns\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v3, v5, v2

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v1, p0

    move v3, v6

    :goto_0
    if-ge v3, v1, :cond_4

    move v5, v6

    :goto_1
    mul-int/lit8 v7, p1, 0x2

    if-ge v5, v7, :cond_3

    mul-int/lit8 v7, v3, 0x2

    mul-int v7, v7, p1

    add-int/2addr v7, v5

    add-int/lit8 v8, v7, 0x1

    .line 602
    aget-wide v9, p2, v8

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-nez v13, :cond_0

    .line 603
    aget-wide v7, p2, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v6

    const-string v7, "%.4f\t"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 606
    :cond_0
    aget-wide v13, p2, v7

    cmpl-double v7, v13, v11

    if-nez v7, :cond_1

    .line 607
    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v7, v8, v6

    const-string v7, "%.4fi\t"

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    cmpg-double v7, v9, v11

    if-gez v7, :cond_2

    .line 611
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aget-wide v8, p2, v8

    neg-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v6

    aput-object v8, v9, v2

    const-string v7, "%.4f - %.4fi\t"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 614
    :cond_2
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aget-wide v8, p2, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/Object;

    aput-object v7, v9, v6

    aput-object v8, v9, v2

    const-string v7, "%.4f + %.4fi\t"

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    .line 616
    :cond_3
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 618
    :cond_4
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static showComplex_2D([[DLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 631
    array-length v1, v0

    const/4 v2, 0x0

    .line 632
    aget-object v3, v0, v2

    array-length v3, v3

    .line 633
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": complex array 2D: %d rows, %d columns\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/Object;

    aput-object v6, v9, v2

    const/4 v6, 0x1

    aput-object v7, v9, v6

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_4

    move v7, v2

    :goto_1
    if-ge v7, v3, :cond_3

    .line 636
    aget-object v9, v0, v5

    add-int/lit8 v10, v7, 0x1

    aget-wide v11, v9, v10

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    if-nez v15, :cond_0

    .line 637
    aget-wide v10, v9, v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v2

    const-string v9, "%.4f\t"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 640
    :cond_0
    aget-wide v15, v9, v7

    cmpl-double v9, v15, v13

    if-nez v9, :cond_1

    .line 641
    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v9, v10, v2

    const-string v9, "%.4fi\t"

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    cmpg-double v9, v11, v13

    if-gez v9, :cond_2

    .line 645
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aget-object v11, v0, v5

    aget-wide v10, v11, v10

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v9, v11, v2

    aput-object v10, v11, v6

    const-string v9, "%.4f - %.4fi\t"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 648
    :cond_2
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aget-object v11, v0, v5

    aget-wide v10, v11, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v8, [Ljava/lang/Object;

    aput-object v9, v11, v2

    aput-object v10, v11, v6

    const-string v9, "%.4f + %.4fi\t"

    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v7, v7, 0x2

    goto :goto_1

    .line 650
    :cond_3
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 652
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static showComplex_3D(III[DLjava/lang/String;)V
    .locals 20

    move/from16 v0, p1

    mul-int/lit8 v1, v0, 0x2

    mul-int v1, v1, p2

    mul-int/lit8 v2, p2, 0x2

    .line 671
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 672
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    .line 674
    :goto_0
    const-string v5, ""

    if-ge v4, v2, :cond_5

    .line 675
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(:,:,"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v8, v4, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")=\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v6, p0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_4

    move v8, v3

    :goto_2
    if-ge v8, v0, :cond_3

    mul-int v9, v7, v1

    mul-int v10, v8, v2

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    add-int/lit8 v10, v9, 0x1

    .line 678
    aget-wide v11, p3, v10

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    const-string v13, "%.4f"

    const/4 v14, 0x1

    if-nez v15, :cond_0

    .line 679
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v15, p3, v9

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v9, v12, v3

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 682
    :cond_0
    aget-wide v18, p3, v9

    const-wide/16 v15, 0x0

    cmpl-double v18, v18, v15

    const-string v15, "i\t"

    if-nez v18, :cond_1

    .line 683
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v16, p3, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v10, v12, v3

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-wide/16 v16, 0x0

    cmpg-double v11, v11, v16

    if-gez v11, :cond_2

    .line 687
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v16, p3, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v0, v14, [Ljava/lang/Object;

    aput-object v9, v0, v3

    invoke-static {v13, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, p3, v10

    neg-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v0, v9, v3

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 690
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v16, p3, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v9, v12, v3

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " + "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, p3, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v9, v10, v3

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    goto/16 :goto_2

    .line 692
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x2

    move/from16 v0, p1

    goto/16 :goto_0

    .line 695
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static showComplex_3D(III[FLjava/lang/String;)V
    .locals 16

    move/from16 v0, p1

    mul-int/lit8 v1, v0, 0x2

    mul-int v1, v1, p2

    mul-int/lit8 v2, p2, 0x2

    .line 752
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v4, p4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v4, "-------------------"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    move v4, v3

    .line 755
    :goto_0
    const-string v5, ""

    if-ge v4, v2, :cond_5

    .line 756
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "(:,:,"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v8, v4, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")=\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move/from16 v6, p0

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_4

    move v8, v3

    :goto_2
    if-ge v8, v0, :cond_3

    mul-int v9, v7, v1

    mul-int v10, v8, v2

    add-int/2addr v9, v10

    add-int/2addr v9, v4

    add-int/lit8 v10, v9, 0x1

    .line 759
    aget v11, p3, v10

    const/4 v12, 0x0

    cmpl-float v13, v11, v12

    const-string v14, "%.4f"

    const/4 v15, 0x1

    if-nez v13, :cond_0

    .line 760
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, p3, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v12, v15, [Ljava/lang/Object;

    aput-object v9, v12, v3

    invoke-static {v14, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 763
    :cond_0
    aget v13, p3, v9

    cmpl-float v13, v13, v12

    const-string v12, "i\t"

    if-nez v13, :cond_1

    .line 764
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v10, p3, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v10, v13, v3

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const/4 v13, 0x0

    cmpg-float v11, v11, v13

    if-gez v11, :cond_2

    .line 768
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, p3, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v0, v15, [Ljava/lang/Object;

    aput-object v9, v0, v3

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p3, v10

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-array v9, v15, [Ljava/lang/Object;

    aput-object v0, v9, v3

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 771
    :cond_2
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget v9, p3, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v13, v15, [Ljava/lang/Object;

    aput-object v9, v13, v3

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " + "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v9, p3, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    new-array v10, v15, [Ljava/lang/Object;

    aput-object v9, v10, v3

    invoke-static {v14, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    move/from16 v0, p1

    goto/16 :goto_2

    .line 773
    :cond_3
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v0, p1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x2

    move/from16 v0, p1

    goto/16 :goto_0

    .line 776
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static showComplex_3D([[[DLjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 707
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 708
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "-------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 709
    array-length v1, v0

    const/4 v2, 0x0

    .line 710
    aget-object v3, v0, v2

    array-length v4, v3

    .line 711
    aget-object v3, v3, v2

    array-length v3, v3

    move v5, v2

    .line 712
    :goto_0
    const-string v6, ""

    if-ge v5, v3, :cond_5

    .line 713
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "(:,:,"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    div-int/lit8 v9, v5, 0x2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")=\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_4

    move v8, v2

    :goto_2
    if-ge v8, v4, :cond_3

    .line 716
    aget-object v9, v0, v7

    aget-object v9, v9, v8

    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v9, v10

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    const-string v13, "%.4f"

    const/4 v14, 0x1

    if-nez v15, :cond_0

    .line 717
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v15, v11, v5

    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v2

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\t"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    move/from16 v16, v1

    move v11, v2

    move v12, v3

    goto/16 :goto_4

    .line 720
    :cond_0
    aget-wide v18, v9, v5

    const-wide/16 v15, 0x0

    cmpl-double v9, v18, v15

    const-string v15, "i\t"

    if-nez v9, :cond_1

    .line 721
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v0, v7

    aget-object v12, v12, v8

    aget-wide v16, v12, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v10, v12, v2

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-wide/16 v16, 0x0

    cmpg-double v9, v11, v16

    if-gez v9, :cond_2

    .line 725
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v12, v0, v7

    aget-object v12, v12, v8

    aget-wide v16, v12, v5

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    move/from16 v16, v1

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v12, v1, v2

    invoke-static {v13, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v0, v7

    aget-object v1, v1, v8

    move v12, v3

    aget-wide v2, v1, v10

    neg-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v14, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v11, 0x0

    goto :goto_4

    :cond_2
    move/from16 v16, v1

    move v12, v3

    .line 728
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v0, v7

    aget-object v3, v3, v8

    aget-wide v17, v3, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v9, v14, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v9, v11

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v7

    aget-object v3, v3, v8

    aget-wide v9, v3, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v3, v9, v11

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move v2, v11

    move v3, v12

    move/from16 v1, v16

    goto/16 :goto_2

    :cond_3
    move/from16 v16, v1

    move v11, v2

    move v12, v3

    .line 730
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move/from16 v1, v16

    goto/16 :goto_1

    :cond_4
    move/from16 v16, v1

    move v11, v2

    move v12, v3

    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    .line 733
    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static showReal_1D([DLjava/lang/String;)V
    .locals 4

    .line 787
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 788
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    move v0, p1

    .line 789
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 790
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget-wide v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, p1

    const-string v2, "%.4f"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 792
    :cond_0
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static showReal_2D(II[DLjava/lang/String;)V
    .locals 7

    .line 806
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 807
    sget-object p3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------"

    invoke-virtual {p3, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    if-ge v0, p0, :cond_2

    move v1, p3

    :goto_1
    if-ge v1, p1, :cond_1

    mul-int v2, v0, p1

    add-int/2addr v2, v1

    .line 810
    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_0

    .line 811
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "0\t"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 813
    :cond_0
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v5, p2, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, p3

    const-string v2, "%.4f"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\t"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 816
    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 818
    :cond_2
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static showReal_3D(III[DLjava/lang/String;)V
    .locals 9

    mul-int v0, p1, p2

    .line 836
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, p4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 837
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "-------------------"

    invoke-virtual {p4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    move v1, p4

    :goto_0
    if-ge v1, p2, :cond_3

    .line 840
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/io/PrintStream;->println()V

    .line 841
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "(:,:,"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")=\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v2, p4

    :goto_1
    if-ge v2, p0, :cond_2

    move v3, p4

    :goto_2
    if-ge v3, p1, :cond_1

    mul-int v4, v2, v0

    mul-int v5, v3, p2

    add-int/2addr v4, v5

    add-int/2addr v4, v1

    .line 844
    aget-wide v5, p3, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    const-wide v7, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v5, v5, v7

    if-gtz v5, :cond_0

    .line 845
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "0\t"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 847
    :cond_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v7, p3, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, p4

    const-string v4, "%.4f"

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 850
    :cond_1
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 853
    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static showReal_3D([[[DLjava/lang/String;)V
    .locals 11

    .line 865
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 866
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "-------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 867
    array-length p1, p0

    const/4 v0, 0x0

    .line 868
    aget-object v1, p0, v0

    array-length v2, v1

    .line 869
    aget-object v1, v1, v0

    array-length v1, v1

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 871
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->println()V

    .line 872
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "(:,:,"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")=\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v4, v0

    :goto_1
    if-ge v4, p1, :cond_2

    move v5, v0

    :goto_2
    if-ge v5, v2, :cond_1

    .line 875
    aget-object v6, p0, v4

    aget-object v6, v6, v5

    aget-wide v7, v6, v3

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_0

    .line 876
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "0\t"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_3

    .line 878
    :cond_0
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, p0, v4

    aget-object v8, v8, v5

    aget-wide v9, v8, v3

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v8, v9, v0

    const-string v8, "%.4f"

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 881
    :cond_1
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/io/PrintStream;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 884
    :cond_3
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/io/PrintStream;->println()V

    return-void
.end method

.method public static writeFFTBenchmarkResultsToFile(Ljava/lang/String;IIZZ[J[D[D)V
    .locals 17

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    const-string v3, "\tscaling performed = "

    const-string v4, "\twarm-up performed = "

    const-string v5, "\tnumber of iterations = "

    const-string v6, "\tTHREADS_BEGIN_N_3D = "

    const-string v7, "\tTHREADS_BEGIN_N_2D = "

    const-string v8, "\tused processors = "

    const-string v9, "\tavailable processors = "

    const-string v10, "\tjava.version = "

    const-string v11, "\tjava.vendor = "

    const-string v12, "\tos.arch = "

    const-string v13, "\tos.version = "

    const-string v14, "\tos.name = "

    .line 1378
    const-string v15, "java.vendor"

    const-string v2, "java.version"

    const-string v1, "os.name"

    const-string v0, "os.version"

    move-object/from16 v16, v3

    const-string v3, "os.arch"

    filled-new-array {v1, v0, v3, v15, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 1380
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    const/4 v3, 0x0

    move-object/from16 v15, p0

    invoke-direct {v2, v15, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 1381
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1382
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1383
    const-string v2, "System properties:"

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1384
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v14, v0, v3

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1386
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    aget-object v14, v0, v13

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1388
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1389
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x2

    aget-object v12, v0, v12

    invoke-static {v12}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1390
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1391
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x3

    aget-object v11, v0, v11

    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1393
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x4

    aget-object v0, v0, v10

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1397
    const-string v0, "Settings:"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1398
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1400
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_2D()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lorg/jtransforms/utils/CommonUtils;->getThreadsBeginN_3D()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1406
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1407
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1408
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v2, p4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1410
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1411
    const-string v0, "--------------------------------------------------------------------------------------------------"

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1412
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1413
    const-string v0, "sizes=["

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p5

    move v2, v3

    .line 1414
    :goto_0
    array-length v4, v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ", "

    const-string v6, "]"

    if-ge v2, v4, :cond_1

    .line 1415
    :try_start_1
    aget-wide v7, v0, v2

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1416
    array-length v4, v0

    sub-int/2addr v4, v13

    if-ge v2, v4, :cond_0

    .line 1417
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1419
    :cond_0
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1422
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1423
    const-string v0, "times without constructor(in msec)=["

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move-object/from16 v0, p6

    move v2, v3

    .line 1424
    :goto_2
    array-length v4, v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v7, "%.2f"

    if-ge v2, v4, :cond_3

    .line 1425
    :try_start_2
    aget-wide v8, v0, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v8, v13, [Ljava/lang/Object;

    aput-object v4, v8, v3

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1426
    array-length v4, v0

    sub-int/2addr v4, v13

    if-ge v2, v4, :cond_2

    .line 1427
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1429
    :cond_2
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1432
    :cond_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1433
    const-string v2, "times with constructor(in msec)=["

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    move v2, v3

    .line 1434
    :goto_4
    array-length v4, v0

    if-ge v2, v4, :cond_5

    move-object/from16 v4, p7

    .line 1435
    aget-wide v8, v4, v2

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v8, v9, v3

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1436
    array-length v8, v4

    sub-int/2addr v8, v13

    if-ge v2, v8, :cond_4

    .line 1437
    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_5

    .line 1439
    :cond_4
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1442
    :cond_5
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1443
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1445
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_6
    return-void
.end method

.method public static writeToFileComplex_1D([DLjava/lang/String;)V
    .locals 12

    .line 898
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    move v1, p1

    .line 899
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 900
    aget-wide v3, p0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v5, 0x0

    cmpl-double v7, v3, v5

    const-string v8, "%.4f"

    const/4 v9, 0x1

    if-nez v7, :cond_0

    .line 901
    :try_start_1
    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    aput-object v2, v3, p1

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 902
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_1

    .line 905
    :cond_0
    aget-wide v10, p0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    cmpl-double v7, v10, v5

    const-string v10, "i"

    if-nez v7, :cond_1

    .line 906
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 907
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    :cond_1
    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    .line 911
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p0, v2

    neg-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 912
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 915
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    new-array v5, v9, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v8, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v4, p0, v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v4, v9, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 916
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 918
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 919
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 921
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static writeToFileComplex_1D([FLjava/lang/String;)V
    .locals 9

    .line 936
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    move v1, p1

    .line 937
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v1, 0x1

    .line 938
    aget v3, p0, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const-string v6, "%.4f"

    const/4 v7, 0x1

    if-nez v5, :cond_0

    .line 939
    :try_start_1
    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v2, v3, p1

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 940
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto/16 :goto_1

    .line 943
    :cond_0
    aget v5, p0, v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    cmpl-float v5, v5, v4

    const-string v8, "i"

    if-nez v5, :cond_1

    .line 944
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 945
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    :cond_1
    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 949
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v2

    neg-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 950
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_1

    .line 953
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, p0, v1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    new-array v5, v7, [Ljava/lang/Object;

    aput-object v4, v5, p1

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v2, p0, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, p1

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 954
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto/16 :goto_0

    .line 956
    :cond_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 957
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 959
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public static writeToFileComplex_2D(II[DLjava/lang/String;)V
    .locals 16

    .line 976
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    move/from16 v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    move v4, v1

    :goto_1
    mul-int/lit8 v5, p1, 0x2

    if-ge v4, v5, :cond_7

    mul-int/lit8 v5, v3, 0x2

    mul-int v5, v5, p1

    add-int/2addr v5, v4

    .line 979
    aget-wide v6, p2, v5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    const-wide v8, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v6, v6, v8

    const-wide/16 v10, 0x0

    if-gez v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, p2, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpg-double v7, v12, v8

    if-gez v7, :cond_1

    .line 980
    aget-wide v5, p2, v6

    cmpl-double v5, v5, v10

    if-ltz v5, :cond_0

    .line 981
    const-string v5, "0 + 0i\t"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 983
    :cond_0
    const-string v5, "0 - 0i\t"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 988
    aget-wide v12, p2, v6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v7, v12, v8

    const-string v12, "%.4f"

    const/4 v13, 0x1

    if-gez v7, :cond_3

    .line 989
    :try_start_1
    aget-wide v6, p2, v6

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_2

    .line 990
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v7, p2, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + 0i\t"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 992
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v7, p2, v5

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - 0i\t"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 996
    :cond_3
    aget-wide v14, p2, v5

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    cmpg-double v7, v14, v8

    const-string v8, "i\t"

    if-gez v7, :cond_5

    .line 997
    :try_start_2
    aget-wide v14, p2, v6

    cmpl-double v5, v14, v10

    if-ltz v5, :cond_4

    .line 998
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0 + "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1000
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0 - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v6, p2, v6

    neg-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1004
    :cond_5
    aget-wide v14, p2, v6

    cmpg-double v7, v14, v10

    if-gez v7, :cond_6

    .line 1005
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v9, p2, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p2, v6

    neg-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1008
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v9, p2, v5

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v5, p2, v6

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 1010
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1013
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1014
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1016
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static writeToFileComplex_2D(II[FLjava/lang/String;)V
    .locals 16

    .line 1033
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v2, p3

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v1, 0x0

    move/from16 v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_8

    move v4, v1

    :goto_1
    mul-int/lit8 v5, p1, 0x2

    if-ge v4, v5, :cond_7

    mul-int/lit8 v5, v3, 0x2

    mul-int v5, v5, p1

    add-int/2addr v5, v4

    .line 1036
    aget v6, p2, v5

    invoke-static {v6}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v6

    float-to-double v6, v6

    const-wide v8, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v6, v6, v8

    const-wide/16 v10, 0x0

    if-gez v6, :cond_1

    add-int/lit8 v6, v5, 0x1

    aget v7, p2, v6

    invoke-static {v7}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v7

    float-to-double v12, v7

    cmpg-double v7, v12, v8

    if-gez v7, :cond_1

    .line 1037
    aget v5, p2, v6

    float-to-double v5, v5

    cmpl-double v5, v5, v10

    if-ltz v5, :cond_0

    .line 1038
    const-string v5, "0 + 0i\t"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1040
    :cond_0
    const-string v5, "0 - 0i\t"

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v6, v5, 0x1

    .line 1045
    aget v7, p2, v6

    invoke-static {v7}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v12, v7

    cmpg-double v7, v12, v8

    const-string v12, "%.4f"

    const/4 v13, 0x1

    if-gez v7, :cond_3

    .line 1046
    :try_start_1
    aget v6, p2, v6

    float-to-double v6, v6

    cmpl-double v6, v6, v10

    if-ltz v6, :cond_2

    .line 1047
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + 0i\t"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1049
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v5, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - 0i\t"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1053
    :cond_3
    aget v7, p2, v5

    invoke-static {v7}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v7
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    float-to-double v14, v7

    cmpg-double v7, v14, v8

    const-string v8, "i\t"

    if-gez v7, :cond_5

    .line 1054
    :try_start_2
    aget v5, p2, v6

    float-to-double v14, v5

    cmpl-double v5, v14, v10

    if-ltz v5, :cond_4

    .line 1055
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0 + "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1057
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0 - "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, p2, v6

    neg-float v6, v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    new-array v7, v13, [Ljava/lang/Object;

    aput-object v6, v7, v1

    invoke-static {v12, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1061
    :cond_5
    aget v7, p2, v6

    const/4 v9, 0x0

    cmpg-float v7, v7, v9

    if-gez v7, :cond_6

    .line 1062
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " - "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, v6

    neg-float v5, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1065
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, p2, v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v5, v9, v1

    invoke-static {v12, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v5, p2, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-static {v12, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_1

    .line 1067
    :cond_7
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_8
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    .line 1071
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1073
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static writeToFileComplex_2D([[DLjava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1087
    array-length v1, v0

    const/4 v2, 0x0

    .line 1088
    aget-object v3, v0, v2

    array-length v3, v3

    .line 1090
    :try_start_0
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    move-object/from16 v6, p1

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_8

    move v6, v2

    :goto_1
    mul-int/lit8 v7, v3, 0x2

    if-ge v6, v7, :cond_7

    .line 1093
    aget-object v7, v0, v5

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v7, v7, v9

    const-wide/16 v11, 0x0

    if-gez v7, :cond_1

    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    aget-wide v13, v7, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v7, v13, v9

    if-gez v7, :cond_1

    .line 1094
    aget-object v7, v0, v5

    aget-wide v8, v7, v8

    cmpl-double v7, v8, v11

    if-ltz v7, :cond_0

    .line 1095
    const-string v7, "0 + 0i\t"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1097
    :cond_0
    const-string v7, "0 - 0i\t"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1102
    :cond_1
    aget-object v7, v0, v5

    add-int/lit8 v8, v6, 0x1

    aget-wide v13, v7, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    cmpg-double v7, v13, v9

    const-string v13, "%.4f"

    const/4 v14, 0x1

    if-gez v7, :cond_3

    .line 1103
    :try_start_1
    aget-object v7, v0, v5

    aget-wide v8, v7, v8

    cmpl-double v7, v8, v11

    if-ltz v7, :cond_2

    .line 1104
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    aget-wide v9, v8, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " + 0i\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1106
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v5

    aget-wide v9, v8, v6

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v9, v14, [Ljava/lang/Object;

    aput-object v8, v9, v2

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " - 0i\t"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1110
    :cond_3
    aget-object v7, v0, v5

    aget-wide v15, v7, v6

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    cmpg-double v7, v15, v9

    const-string v9, "i\t"

    if-gez v7, :cond_5

    .line 1111
    :try_start_2
    aget-object v7, v0, v5

    aget-wide v15, v7, v8

    cmpl-double v7, v15, v11

    if-ltz v7, :cond_4

    .line 1112
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0 + "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v5

    aget-wide v11, v10, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1114
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0 - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v5

    aget-wide v11, v10, v8

    neg-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1118
    :cond_5
    aget-object v7, v0, v5

    aget-wide v15, v7, v8

    cmpg-double v7, v15, v11

    if-gez v7, :cond_6

    .line 1119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v0, v5

    aget-wide v11, v10, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " - "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v5

    aget-wide v11, v10, v8

    neg-double v10, v11

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1122
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v0, v5

    aget-wide v11, v10, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " + "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v0, v5

    aget-wide v11, v10, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v8, v10, v2

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    .line 1124
    :cond_7
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 1127
    :cond_8
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1128
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 1130
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static writeToFileComplex_3D(III[DLjava/lang/String;)V
    .locals 20

    move/from16 v0, p1

    mul-int v1, v0, p2

    mul-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, p2, 0x2

    .line 1150
    :try_start_0
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    move-object/from16 v5, p4

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_5

    .line 1152
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1153
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(:,:,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v7, v5, 0x2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1154
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1155
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    move/from16 v6, p0

    move v7, v4

    :goto_1
    if-ge v7, v6, :cond_4

    move v8, v4

    :goto_2
    if-ge v8, v0, :cond_3

    mul-int v9, v7, v1

    mul-int v10, v8, v2

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    add-int/lit8 v10, v9, 0x1

    .line 1158
    aget-wide v11, p3, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    const-string v13, "%.4f"

    const/4 v14, 0x1

    if-nez v15, :cond_0

    .line 1159
    :try_start_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v11, p3, v9

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v9, v11, v4

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\t"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1162
    :cond_0
    aget-wide v18, p3, v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v15, 0x0

    cmpl-double v18, v18, v15

    const-string v15, "i\t"

    if-nez v18, :cond_1

    .line 1163
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v10, p3, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v4

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_1
    const-wide/16 v16, 0x0

    cmpg-double v11, v11, v16

    if-gez v11, :cond_2

    .line 1167
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v16, p3, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v9, v12, v4

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " - "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, p3, v10

    neg-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v9, v10, v4

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1170
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v16, p3, v9

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v9, v12, v4

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " + "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide v9, p3, v10

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    new-array v10, v14, [Ljava/lang/Object;

    aput-object v9, v10, v4

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1172
    :cond_3
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v5, v5, 0x2

    goto/16 :goto_0

    .line 1175
    :cond_5
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1176
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1178
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static writeToFileComplex_3D([[[DLjava/lang/String;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1192
    array-length v1, v0

    const/4 v2, 0x0

    .line 1193
    aget-object v3, v0, v2

    array-length v4, v3

    .line 1194
    aget-object v3, v3, v2

    array-length v3, v3

    .line 1196
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/FileWriter;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move v6, v2

    :goto_0
    mul-int/lit8 v7, v3, 0x2

    if-ge v6, v7, :cond_5

    .line 1198
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1199
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(:,:,"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit8 v8, v6, 0x2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1201
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    move v7, v2

    :goto_1
    if-ge v7, v1, :cond_4

    move v8, v2

    :goto_2
    if-ge v8, v4, :cond_3

    .line 1204
    aget-object v9, v0, v7

    aget-object v9, v9, v8

    add-int/lit8 v10, v6, 0x1

    aget-wide v11, v9, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v13, 0x0

    cmpl-double v15, v11, v13

    const-string v13, "%.4f"

    const/4 v14, 0x1

    if-nez v15, :cond_0

    .line 1205
    :try_start_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v0, v7

    aget-object v10, v10, v8

    aget-wide v11, v10, v6

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1208
    :cond_0
    aget-wide v18, v9, v6
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v15, 0x0

    cmpl-double v9, v18, v15

    const-string v15, "i\t"

    if-nez v9, :cond_1

    .line 1209
    :try_start_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v10, v11, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    const-wide/16 v16, 0x0

    cmpg-double v9, v11, v16

    if-gez v9, :cond_2

    .line 1213
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v16, v11, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v2

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v10, v11, v10

    neg-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_3

    .line 1216
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v16, v11, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    new-array v12, v14, [Ljava/lang/Object;

    aput-object v11, v12, v2

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " + "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v11, v0, v7

    aget-object v11, v11, v8

    aget-wide v10, v11, v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    new-array v11, v14, [Ljava/lang/Object;

    aput-object v10, v11, v2

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 1218
    :cond_3
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_0

    .line 1221
    :cond_5
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1222
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 1224
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    return-void
.end method

.method public static writeToFileReal_1D([DLjava/lang/String;)V
    .locals 5

    .line 1238
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    move v1, p1

    .line 1239
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1240
    const-string v2, "%.4f"

    aget-wide v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, p1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1241
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1243
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1245
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static writeToFileReal_1D([FLjava/lang/String;)V
    .locals 5

    .line 1259
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p1, 0x0

    move v1, p1

    .line 1260
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1261
    const-string v2, "%.4f"

    aget v3, p0, v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, p1

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1264
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1266
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static writeToFileReal_2D(II[DLjava/lang/String;)V
    .locals 8

    .line 1282
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p0, :cond_2

    move v2, p3

    :goto_1
    if-ge v2, p1, :cond_1

    mul-int v3, v1, p1

    add-int/2addr v3, v2

    .line 1285
    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1286
    const-string v3, "0\t"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1288
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.4f"

    aget-wide v6, p2, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, p3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1291
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1293
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1295
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static writeToFileReal_2D(II[FLjava/lang/String;)V
    .locals 8

    .line 1311
    :try_start_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, p3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p3, 0x0

    move v1, p3

    :goto_0
    if-ge v1, p0, :cond_2

    move v2, p3

    :goto_1
    if-ge v2, p1, :cond_1

    mul-int v3, v1, p1

    add-int/2addr v3, v2

    .line 1314
    aget v4, p2, v3

    invoke-static {v4}, Lorg/apache/commons/math3/util/FastMath;->abs(F)F

    move-result v4

    float-to-double v4, v4

    const-wide v6, 0x3f0a36e2eb1c432dL    # 5.0E-5

    cmpg-double v4, v4, v6

    if-gez v4, :cond_0

    .line 1315
    const-string v3, "0\t"

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1317
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.4f"

    aget v3, p2, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, p3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\t"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1320
    :cond_1
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1322
    :cond_2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1324
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static writeToFileReal_3D(III[DLjava/lang/String;)V
    .locals 9

    mul-int v0, p1, p2

    .line 1344
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    const/4 p4, 0x0

    move v2, p4

    :goto_0
    if-ge v2, p2, :cond_2

    .line 1346
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(:,:,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1348
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1349
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    move v3, p4

    :goto_1
    if-ge v3, p0, :cond_1

    move v4, p4

    :goto_2
    if-ge v4, p1, :cond_0

    .line 1352
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "%.4f"

    mul-int v7, v3, v0

    mul-int v8, v4, p2

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    aget-wide v7, p3, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, p4

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1354
    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1356
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1358
    :cond_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 1360
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    return-void
.end method
