.class public Lorg/apache/commons/math3/util/Decimal64;
.super Ljava/lang/Number;
.source "Decimal64.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAN:Lorg/apache/commons/math3/util/Decimal64;

.field public static final NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

.field public static final ONE:Lorg/apache/commons/math3/util/Decimal64;

.field public static final POSITIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

.field public static final ZERO:Lorg/apache/commons/math3/util/Decimal64;

.field private static final serialVersionUID:J = 0x13302a3L


# instance fields
.field private final value:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->ZERO:Lorg/apache/commons/math3/util/Decimal64;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->ONE:Lorg/apache/commons/math3/util/Decimal64;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->NEGATIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->POSITIVE_INFINITY:Lorg/apache/commons/math3/util/Decimal64;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64;->NAN:Lorg/apache/commons/math3/util/Decimal64;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    return-void
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->abs()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 358
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->acos()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 531
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->acosh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 580
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->add(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->add(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 316
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    add-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 94
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    add-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->asin()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 538
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->asinh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 587
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->atan()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 545
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->atan2(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 552
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->atanh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 594
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public byteValue()B
    .locals 2

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cbrt()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 435
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->ceil()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 365
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->compareTo(Lorg/apache/commons/math3/util/Decimal64;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/apache/commons/math3/util/Decimal64;)I
    .locals 4

    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v2, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->copySign(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->copySign(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 407
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public copySign(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 400
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cos()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 510
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->cosh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 559
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->divide(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->divide(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 337
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 148
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public doubleValue()D
    .locals 2

    .line 219
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 246
    instance-of v0, p1, Lorg/apache/commons/math3/util/Decimal64;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 247
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    .line 248
    iget-wide v2, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->exp()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 474
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->expm1()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 481
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public floatValue()F
    .locals 2

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->floor()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 372
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "Lorg/apache/commons/math3/util/Decimal64;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-static {}, Lorg/apache/commons/math3/util/Decimal64Field;->getInstance()Lorg/apache/commons/math3/util/Decimal64Field;

    move-result-object v0

    return-object v0
.end method

.method public getReal()D
    .locals 2

    .line 309
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->hypot(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 421
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public intValue()I
    .locals 2

    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 292
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    return v0
.end method

.method public isNaN()Z
    .locals 2

    .line 302
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p6, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p6, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p9, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual/range {p0 .. p9}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p6, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p9, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p12, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p2, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p4, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p2, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p4, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p5, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p6, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual/range {p0 .. p6}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p2, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p3, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p4, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p5, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p6, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p7, Lorg/apache/commons/math3/util/Decimal64;

    check-cast p8, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p2, [Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination([D[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p1, [Lorg/apache/commons/math3/util/Decimal64;

    check-cast p2, [Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->linearCombination([Lorg/apache/commons/math3/util/Decimal64;[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 9

    .line 643
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v3, p3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v7, p6, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide v1, p1

    move-wide v5, p4

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 13

    .line 664
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v1, p3

    iget-wide v3, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v1, p6

    iget-wide v7, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v1, p9

    iget-wide v11, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide v1, p1

    move-wide/from16 v5, p4

    move-wide/from16 v9, p7

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;DLorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 17

    .line 689
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v1, p3

    iget-wide v3, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v1, p6

    iget-wide v7, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v1, p9

    iget-wide v11, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v1, p12

    iget-wide v13, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide/from16 v1, p1

    move-wide/from16 v5, p4

    move-wide/from16 v9, p7

    move-wide v15, v13

    move-wide/from16 v13, p10

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 9

    .line 634
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p2, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v5, p3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v7, p4, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 13

    .line 653
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    move-object v1, p1

    iget-wide v1, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object v3, p2

    iget-wide v3, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v5, p3

    iget-wide v5, v5, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v7, p4

    iget-wide v7, v7, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v9, p5

    iget-wide v9, v9, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v11, p6

    iget-wide v11, v11, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static/range {v1 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 17

    .line 676
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    move-object/from16 v1, p1

    iget-wide v1, v1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v3, p2

    iget-wide v3, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v5, p3

    iget-wide v5, v5, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v7, p4

    iget-wide v7, v7, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v9, p5

    iget-wide v9, v9, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v11, p6

    iget-wide v11, v11, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v13, p7

    iget-wide v13, v13, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-object/from16 v15, p8

    move-wide/from16 p1, v13

    iget-wide v13, v15, Lorg/apache/commons/math3/util/Decimal64;->value:D

    move-wide v15, v13

    move-wide/from16 v13, p1

    invoke-static/range {v1 .. v16}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 619
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 622
    array-length v0, p2

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 623
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 624
    aget-object v2, p2, v1

    iget-wide v2, v2, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/util/Decimal64;

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object p2

    .line 620
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public linearCombination([Lorg/apache/commons/math3/util/Decimal64;[Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 602
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 605
    array-length v0, p1

    new-array v0, v0, [D

    .line 606
    array-length v1, p2

    new-array v1, v1, [D

    const/4 v2, 0x0

    .line 607
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 608
    aget-object v3, p1, v2

    iget-wide v3, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v3, v0, v2

    .line 609
    aget-object v3, p2, v2

    iget-wide v3, v3, Lorg/apache/commons/math3/util/Decimal64;->value:D

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 611
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination([D[D)D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object p1

    .line 603
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->log()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 488
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public log10()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 503
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->log1p()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 495
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public longValue()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->multiply(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->multiply(I)Lorg/apache/commons/math3/util/Decimal64;

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

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->multiply(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 330
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 136
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    int-to-double v1, p1

    iget-wide v3, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 126
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    mul-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->negate()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 115
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    neg-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->pow(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->pow(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->pow(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 453
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 460
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 467
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->reciprocal()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 159
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iget-wide v3, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    div-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->remainder(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->remainder(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 344
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, p1, p2}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide p1

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 351
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->rint()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 379
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->rootN(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 7

    .line 442
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_0

    .line 443
    new-instance v2, Lorg/apache/commons/math3/util/Decimal64;

    neg-double v0, v0

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    neg-double v0, v0

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v2

    .line 445
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/util/Decimal64;

    int-to-double v5, p1

    div-double/2addr v3, v5

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v2
.end method

.method public round()J
    .locals 2

    .line 386
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->scalb(I)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 414
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2, p1}, Lorg/apache/commons/math3/util/FastMath;->scalb(DI)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public shortValue()S
    .locals 2

    .line 183
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->signum()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 393
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sin()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 517
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sinh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 566
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->sqrt()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 428
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/Decimal64;->subtract(D)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/commons/math3/util/Decimal64;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/Decimal64;->subtract(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 323
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    sub-double/2addr v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/util/Decimal64;)Lorg/apache/commons/math3/util/Decimal64;
    .locals 5

    .line 105
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    iget-wide v3, p1, Lorg/apache/commons/math3/util/Decimal64;->value:D

    sub-double/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->tan()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 524
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64;->tanh()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/util/Decimal64;
    .locals 3

    .line 573
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64;

    iget-wide v1, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/util/Decimal64;-><init>(D)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 278
    iget-wide v0, p0, Lorg/apache/commons/math3/util/Decimal64;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
