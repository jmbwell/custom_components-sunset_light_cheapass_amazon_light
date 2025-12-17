.class public final Lorg/apache/commons/math3/util/CombinatoricsUtils;
.super Ljava/lang/Object;
.source "CombinatoricsUtils.java"


# static fields
.field static final FACTORIALS:[J

.field static final STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[J>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x15

    .line 35
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    return-void

    :array_0
    .array-data 8
        0x1
        0x1
        0x2
        0x6
        0x18
        0x78
        0x2d0
        0x13b0
        0x9d80
        0x58980
        0x375f00
        0x2611500
        0x1c8cfc00
        0x17328cc00L
        0x144c3b2800L
        0x13077775800L
        0x130777758000L
        0x1437eeecd8000L
        0x16beecca730000L
        0x1b02b9306890000L
        0x21c3677c82b40000L
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binomialCoefficient(II)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 79
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/16 v0, 0x1

    if-eq p0, p1, :cond_7

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_3

    .line 87
    :cond_1
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_2

    sub-int p1, p0, p1

    .line 88
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x3d

    if-gt p0, v3, :cond_3

    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    move v3, v2

    :goto_0
    if-gt v3, p1, :cond_5

    int-to-long v4, p0

    mul-long/2addr v0, v4

    int-to-long v4, v3

    .line 101
    div-long/2addr v0, v4

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/16 v3, 0x42

    if-gt p0, v3, :cond_4

    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    move v3, v2

    :goto_1
    if-gt v3, p1, :cond_5

    .line 115
    invoke-static {p0, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    .line 116
    div-long/2addr v6, v4

    div-long/2addr v0, v6

    int-to-long v6, p0

    div-long/2addr v6, v4

    mul-long/2addr v0, v6

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    sub-int/2addr p0, p1

    add-int/2addr p0, v2

    move v3, v2

    :goto_2
    if-gt v3, p1, :cond_5

    .line 125
    invoke-static {p0, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    .line 126
    div-long/2addr v6, v4

    div-long/2addr v0, v6

    int-to-long v6, p0

    div-long/2addr v6, v4

    invoke-static {v0, v1, v6, v7}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(JJ)J

    move-result-wide v0

    add-int/2addr p0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-wide v0

    :cond_6
    :goto_3
    int-to-long p0, p0

    return-wide p0

    :cond_7
    :goto_4
    return-wide v0
.end method

.method public static binomialCoefficientDouble(II)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 160
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-eq p0, p1, :cond_6

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_1

    .line 167
    :cond_1
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_2

    sub-int p1, p0, p1

    .line 168
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x43

    if-ge p0, v3, :cond_3

    .line 171
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    long-to-double p0, p0

    return-wide p0

    :cond_3
    :goto_0
    if-gt v2, p1, :cond_4

    sub-int v3, p0, p1

    add-int/2addr v3, v2

    int-to-double v3, v3

    int-to-double v5, v2

    div-double/2addr v3, v5

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, p0

    .line 179
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_1
    int-to-double p0, p0

    return-wide p0

    :cond_6
    :goto_2
    return-wide v0
.end method

.method public static binomialCoefficientLog(II)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 205
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->checkBinomial(II)V

    const-wide/16 v0, 0x0

    if-eq p0, p1, :cond_8

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x1

    if-eq p1, v2, :cond_7

    add-int/lit8 v3, p0, -0x1

    if-ne p1, v3, :cond_1

    goto :goto_2

    :cond_1
    const/16 v3, 0x43

    if-ge p0, v3, :cond_2

    .line 218
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide p0

    long-to-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_2
    const/16 v3, 0x406

    if-ge p0, v3, :cond_3

    .line 226
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    .line 229
    :cond_3
    div-int/lit8 v3, p0, 0x2

    if-le p1, v3, :cond_4

    sub-int p1, p0, p1

    .line 230
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientLog(II)D

    move-result-wide p0

    return-wide p0

    :cond_4
    sub-int v3, p0, p1

    add-int/2addr v3, v2

    :goto_0
    if-gt v3, p0, :cond_5

    int-to-double v4, v3

    .line 240
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_1
    if-gt p0, p1, :cond_6

    int-to-double v2, p0

    .line 245
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_6
    return-wide v0

    :cond_7
    :goto_2
    int-to-double p0, p0

    .line 210
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0

    :cond_8
    :goto_3
    return-wide v0
.end method

.method public static checkBinomial(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-lt p0, p1, :cond_1

    if-ltz p0, :cond_0

    return-void

    .line 459
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 455
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->BINOMIAL_INVALID_PARAMETERS_ORDER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public static combinationsIterator(II)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Iterator<",
            "[I>;"
        }
    .end annotation

    .line 439
    new-instance v0, Lorg/apache/commons/math3/util/Combinations;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Combinations;-><init>(II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Combinations;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static factorial(I)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    if-ltz p0, :cond_1

    const/16 v0, 0x14

    if-gt p0, v0, :cond_0

    .line 283
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    return-wide v1

    .line 281
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>()V

    throw p0

    .line 277
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialDouble(I)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p0, :cond_1

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 305
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    long-to-double v0, v1

    return-wide v0

    .line 307
    :cond_0
    invoke-static {p0}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v0

    return-wide v0

    .line 301
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static factorialLog(I)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p0, :cond_2

    const/16 v0, 0x15

    if-ge p0, v0, :cond_0

    .line 323
    sget-object v0, Lorg/apache/commons/math3/util/CombinatoricsUtils;->FACTORIALS:[J

    aget-wide v1, v0, p0

    long-to-double v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    :goto_0
    if-gt v2, p0, :cond_1

    int-to-double v3, v2

    .line 327
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0

    .line 319
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACTORIAL_NEGATIVE_PARAMETER:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public static stirlingS2(II)J
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    move/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_d

    const/4 v2, 0x1

    if-gt v1, v0, :cond_c

    .line 360
    sget-object v3, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[J

    const/4 v4, 0x2

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    if-nez v3, :cond_2

    const/16 v3, 0x1a

    .line 369
    new-array v10, v3, [[J

    .line 370
    new-array v11, v2, [J

    aput-wide v8, v11, v7

    aput-object v11, v10, v7

    move v11, v2

    :goto_0
    if-ge v11, v3, :cond_1

    add-int/lit8 v12, v11, 0x1

    .line 372
    new-array v13, v12, [J

    aput-object v13, v10, v11

    .line 373
    aput-wide v5, v13, v7

    .line 374
    aput-wide v8, v13, v2

    .line 375
    aput-wide v8, v13, v11

    move v13, v4

    :goto_1
    if-ge v13, v11, :cond_0

    .line 377
    aget-object v14, v10, v11

    int-to-long v7, v13

    add-int/lit8 v9, v11, -0x1

    aget-object v9, v10, v9

    aget-wide v15, v9, v13

    mul-long/2addr v7, v15

    add-int/lit8 v15, v13, -0x1

    aget-wide v15, v9, v15

    add-long/2addr v7, v15

    aput-wide v7, v14, v13

    add-int/lit8 v13, v13, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    goto :goto_1

    :cond_0
    move v11, v12

    goto :goto_0

    .line 382
    :cond_1
    sget-object v3, Lorg/apache/commons/math3/util/CombinatoricsUtils;->STIRLING_S2:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v7, 0x0

    invoke-static {v3, v7, v10}, Landroidx/lifecycle/AtomicReference$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-object v3, v10

    .line 386
    :cond_2
    array-length v7, v3

    if-ge v0, v7, :cond_3

    .line 388
    aget-object v0, v3, v0

    aget-wide v1, v0, v1

    return-wide v1

    :cond_3
    if-nez v1, :cond_4

    return-wide v5

    :cond_4
    if-eq v1, v2, :cond_b

    if-ne v1, v0, :cond_5

    goto :goto_4

    :cond_5
    if-ne v1, v4, :cond_6

    sub-int/2addr v0, v2

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    sub-long/2addr v3, v1

    return-wide v3

    :cond_6
    add-int/lit8 v7, v0, -0x1

    if-ne v1, v7, :cond_7

    .line 398
    invoke-static {v0, v4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v0

    return-wide v0

    :cond_7
    and-int/lit8 v7, v1, 0x1

    if-nez v7, :cond_8

    const-wide/16 v8, 0x1

    goto :goto_2

    :cond_8
    const-wide/16 v8, -0x1

    :goto_2
    move v7, v2

    move-wide v10, v5

    :goto_3
    if-gt v7, v1, :cond_a

    neg-long v8, v8

    .line 405
    invoke-static {v1, v7}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficient(II)J

    move-result-wide v12

    mul-long/2addr v12, v8

    invoke-static {v7, v0}, Lorg/apache/commons/math3/util/ArithmeticUtils;->pow(II)I

    move-result v14

    move-object/from16 v16, v3

    int-to-long v2, v14

    mul-long/2addr v12, v2

    add-long/2addr v10, v12

    cmp-long v2, v10, v5

    if-ltz v2, :cond_9

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v3, v16

    const/4 v2, 0x1

    goto :goto_3

    .line 408
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARGUMENT_OUTSIDE_DOMAIN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v10, v16

    array-length v6, v10

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v3

    aput-object v5, v8, v7

    aput-object v6, v8, v4

    invoke-direct {v1, v2, v8}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 412
    :cond_a
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v0

    div-long/2addr v10, v0

    return-wide v10

    :cond_b
    :goto_4
    const-wide/16 v0, 0x1

    return-wide v0

    .line 357
    :cond_c
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v2, v1, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 354
    :cond_d
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
