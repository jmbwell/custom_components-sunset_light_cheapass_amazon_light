.class public Lorg/apache/commons/math3/fraction/Fraction;
.super Ljava/lang/Number;
.source "Fraction.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/fraction/Fraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-5

.field public static final FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

.field public static final ZERO:Lorg/apache/commons/math3/fraction/Fraction;

.field private static final serialVersionUID:J = 0x3352326b0f0153fbL


# instance fields
.field private final denominator:I

.field private final numerator:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 41
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 44
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE:Lorg/apache/commons/math3/fraction/Fraction;

    .line 47
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    .line 50
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v3, 0x4

    const/4 v4, 0x5

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->FOUR_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_FIFTH:Lorg/apache/commons/math3/fraction/Fraction;

    .line 56
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/Fraction;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_QUARTER:Lorg/apache/commons/math3/fraction/Fraction;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->ONE_THIRD:Lorg/apache/commons/math3/fraction/Fraction;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v5, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 68
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v5, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->THREE_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 71
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_FIFTHS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 74
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_QUARTERS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 77
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->TWO_THIRDS:Lorg/apache/commons/math3/fraction/Fraction;

    .line 80
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    sput-object v0, Lorg/apache/commons/math3/fraction/Fraction;->MINUS_ONE:Lorg/apache/commons/math3/fraction/Fraction;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    const-wide v3, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v5, 0x64

    move-object v0, p0

    move-wide v1, p1

    .line 101
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move v6, p5

    .line 123
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    return-void
.end method

.method private constructor <init>(DDII)V
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v2, p1

    move/from16 v1, p5

    move/from16 v4, p6

    .line 179
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 182
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v5

    double-to-long v5, v5

    .line 183
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v7

    const-wide/32 v9, 0x7fffffff

    cmp-long v7, v7, v9

    if-gtz v7, :cond_8

    long-to-double v7, v5

    sub-double/2addr v7, v2

    .line 188
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, p3

    const/4 v8, 0x1

    if-gez v7, :cond_0

    long-to-int v1, v5

    .line 189
    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 190
    iput v8, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    return-void

    :cond_0
    const/4 v7, 0x0

    const-wide/16 v11, 0x1

    const-wide/16 v13, 0x0

    move-wide/from16 v20, v2

    move-wide/from16 v16, v11

    move-wide/from16 v18, v13

    move v13, v7

    move-wide/from16 v14, v16

    move-wide v11, v5

    :goto_0
    add-int/2addr v7, v8

    long-to-double v8, v5

    sub-double v8, v20, v8

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    div-double v24, v24, v8

    .line 207
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v8

    double-to-long v8, v8

    mul-long v26, v8, v11

    move-wide/from16 v28, v5

    add-long v5, v26, v14

    mul-long v26, v8, v16

    move-wide/from16 v30, v8

    add-long v8, v26, v18

    .line 211
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v26

    const-wide/32 v22, 0x7fffffff

    cmp-long v10, v26, v22

    if-gtz v10, :cond_4

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v26

    cmp-long v10, v26, v22

    if-lez v10, :cond_1

    goto :goto_2

    :cond_1
    move-wide/from16 v26, v11

    long-to-double v10, v5

    move/from16 v32, v13

    long-to-double v12, v8

    div-double/2addr v10, v12

    if-ge v7, v4, :cond_2

    sub-double/2addr v10, v2

    .line 221
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpl-double v10, v10, p3

    if-lez v10, :cond_2

    int-to-long v10, v1

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    move-wide v11, v5

    move-wide/from16 v18, v16

    move-wide/from16 v20, v24

    move-wide/from16 v14, v26

    move-wide/from16 v28, v30

    move/from16 v13, v32

    move-wide/from16 v16, v8

    goto :goto_1

    :cond_2
    move-wide/from16 v11, v26

    const/4 v13, 0x1

    :goto_1
    if-eqz v13, :cond_3

    move-wide/from16 v13, v16

    goto :goto_3

    :cond_3
    move-wide/from16 v9, v22

    move-wide/from16 v5, v28

    const/4 v8, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    move-wide/from16 v26, v11

    const-wide/16 v10, 0x0

    cmpl-double v10, p3, v10

    if-nez v10, :cond_7

    .line 214
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide v10

    int-to-long v12, v1

    cmp-long v10, v10, v12

    if-gez v10, :cond_7

    move-wide/from16 v13, v16

    move-wide/from16 v11, v26

    :goto_3
    if-ge v7, v4, :cond_6

    int-to-long v1, v1

    cmp-long v1, v8, v1

    if-gez v1, :cond_5

    long-to-int v1, v5

    .line 238
    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    long-to-int v1, v8

    .line 239
    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    goto :goto_4

    :cond_5
    long-to-int v1, v11

    .line 241
    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    long-to-int v1, v13

    .line 242
    iput v1, v0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    :goto_4
    return-void

    .line 234
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/fraction/FractionConversionException;

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DI)V

    throw v1

    .line 217
    :cond_7
    new-instance v10, Lorg/apache/commons/math3/fraction/FractionConversionException;

    move-object v1, v10

    move-wide/from16 v2, p1

    move-wide v4, v5

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v10

    .line 184
    :cond_8
    new-instance v8, Lorg/apache/commons/math3/fraction/FractionConversionException;

    const-wide/16 v9, 0x1

    move-object v1, v8

    move-wide/from16 v2, p1

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/fraction/FractionConversionException;-><init>(DJJ)V

    throw v8
.end method

.method public constructor <init>(DI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    const-wide/16 v3, 0x0

    const/16 v6, 0x64

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 143
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(DDII)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 253
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 5

    .line 263
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p2, :cond_4

    if-gez p2, :cond_1

    const/high16 v3, -0x80000000

    if-eq p1, v3, :cond_0

    if-eq p2, v3, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    goto :goto_0

    .line 271
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v2

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 278
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    if-le v0, v2, :cond_2

    .line 280
    div-int/2addr p1, v0

    .line 281
    div-int/2addr p2, v0

    :cond_2
    if-gez p2, :cond_3

    neg-int p1, p1

    neg-int p2, p2

    .line 289
    :cond_3
    iput p1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    .line 290
    iput p2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    return-void

    .line 265
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v2

    invoke-direct {v3, v4, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method private addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 488
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    :goto_0
    return-object p1

    .line 491
    :cond_1
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v1, :cond_2

    return-object p0

    .line 496
    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 499
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v0

    .line 500
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v1

    .line 501
    new-instance v2, Lorg/apache/commons/math3/fraction/Fraction;

    if-eqz p2, :cond_3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->addAndCheck(II)I

    move-result p2

    goto :goto_1

    :cond_3
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->subAndCheck(II)I

    move-result p2

    :goto_1
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result p1

    invoke-direct {v2, p2, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v2

    .line 509
    :cond_4
    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v4, v1

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 511
    iget v4, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    iget v5, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v5, v1

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    if-eqz p2, :cond_5

    .line 513
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    goto :goto_2

    :cond_5
    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    :goto_2
    int-to-long v3, v1

    .line 516
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    if-nez v3, :cond_6

    move v3, v1

    goto :goto_3

    .line 517
    :cond_6
    invoke-static {v3, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v3

    :goto_3
    int-to-long v4, v3

    .line 520
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    .line 521
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_7

    .line 525
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v2, v1

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr p1, v3

    invoke-static {v2, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result p1

    invoke-direct {v0, p2, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0

    .line 522
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMERATOR_OVERFLOW_AFTER_MULTIPLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    invoke-direct {p1, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 485
    :cond_8
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_4

    if-nez p0, :cond_0

    .line 624
    sget-object p0, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    return-object p0

    :cond_0
    const/high16 v3, -0x80000000

    if-ne p1, v3, :cond_1

    and-int/lit8 v4, p0, 0x1

    if-nez v4, :cond_1

    .line 628
    div-int/lit8 p0, p0, 0x2

    div-int/lit8 p1, p1, 0x2

    :cond_1
    if-gez p1, :cond_3

    if-eq p0, v3, :cond_2

    if-eq p1, v3, :cond_2

    neg-int p0, p0

    neg-int p1, p1

    goto :goto_0

    .line 633
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v1

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 640
    :cond_3
    :goto_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 641
    div-int/2addr p0, v0

    .line 642
    div-int/2addr p1, v0

    .line 643
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0

    .line 620
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_DENOMINATOR_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v0

    aput-object p1, v2, v1

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method


# virtual methods
.method public abs()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1

    .line 299
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ltz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 302
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public add(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .line 447
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr p1, v2

    add-int/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1

    const/4 v0, 0x1

    .line 438
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/fraction/Fraction;)I
    .locals 6

    .line 314
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v0, v0

    iget v2, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    .line 315
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-long v2, v2

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-long v4, p1

    mul-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public divide(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .line 592
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 579
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {p1}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1

    .line 580
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_FRACTION_TO_DIVIDE_BY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v0

    const/4 v0, 0x1

    aput-object p1, v4, v0

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 577
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public doubleValue()D
    .locals 4

    .line 326
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    int-to-double v0, v0

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 343
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/fraction/Fraction;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 346
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    .line 347
    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public floatValue()F
    .locals 2

    .line 360
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getDenominator()I
    .locals 1

    .line 368
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    return v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->getField()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/fraction/FractionField;
    .locals 1

    .line 670
    invoke-static {}, Lorg/apache/commons/math3/fraction/FractionField;->getInstance()Lorg/apache/commons/math3/fraction/FractionField;

    move-result-object v0

    return-object v0
.end method

.method public getNumerator()I
    .locals 1

    .line 376
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 385
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    add-int/lit16 v0, v0, 0x275

    mul-int/lit8 v0, v0, 0x25

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    add-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .locals 2

    .line 395
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .locals 2

    .line 405
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v0

    double-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(I)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 2

    .line 562
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    mul-int/2addr v1, p1

    iget p1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 4

    if-eqz p1, :cond_2

    .line 544
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-eqz v0, :cond_1

    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 549
    :cond_0
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v0

    .line 550
    iget v1, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/ArithmeticUtils;->gcd(II)I

    move-result v1

    .line 551
    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v2, v0

    iget v3, p1, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    div-int/2addr v3, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr v3, v1

    iget p1, p1, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    div-int/2addr p1, v0

    invoke-static {v3, p1}, Lorg/apache/commons/math3/util/ArithmeticUtils;->mulAndCheck(II)I

    move-result p1

    invoke-static {v2, p1}, Lorg/apache/commons/math3/fraction/Fraction;->getReducedFraction(II)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1

    .line 545
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/fraction/Fraction;->ZERO:Lorg/apache/commons/math3/fraction/Fraction;

    return-object p1

    .line 542
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->negate()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 6

    .line 413
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    .line 416
    new-instance v1, Lorg/apache/commons/math3/fraction/Fraction;

    neg-int v0, v0

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-direct {v1, v0, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v1

    .line 414
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW_IN_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v3, v4, v2

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public percentageValue()D
    .locals 4

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 604
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->doubleValue()D

    move-result-wide v2

    mul-double/2addr v2, v0

    return-wide v2
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/Fraction;->reciprocal()Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .line 424
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 36
    check-cast p1, Lorg/apache/commons/math3/fraction/Fraction;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/Fraction;->subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public subtract(I)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 3

    .line 470
    new-instance v0, Lorg/apache/commons/math3/fraction/Fraction;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    iget v2, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    mul-int/2addr p1, v2

    sub-int/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/fraction/Fraction;-><init>(II)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/fraction/Fraction;)Lorg/apache/commons/math3/fraction/Fraction;
    .locals 1

    const/4 v0, 0x0

    .line 461
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/fraction/Fraction;->addSub(Lorg/apache/commons/math3/fraction/Fraction;Z)Lorg/apache/commons/math3/fraction/Fraction;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 658
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 659
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 660
    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    if-nez v0, :cond_1

    .line 661
    const-string v0, "0"

    goto :goto_0

    .line 663
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->numerator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/apache/commons/math3/fraction/Fraction;->denominator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
