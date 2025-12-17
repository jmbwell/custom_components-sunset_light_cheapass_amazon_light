.class public Lorg/apache/commons/math3/complex/Complex;
.super Ljava/lang/Object;
.source "Complex.java"

# interfaces
.implements Lorg/apache/commons/math3/FieldElement;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/FieldElement<",
        "Lorg/apache/commons/math3/complex/Complex;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Complex;

.field public static final INF:Lorg/apache/commons/math3/complex/Complex;

.field public static final NaN:Lorg/apache/commons/math3/complex/Complex;

.field public static final ONE:Lorg/apache/commons/math3/complex/Complex;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Complex;

.field private static final serialVersionUID:J = -0x55fb6c0d48a4ff0cL


# instance fields
.field private final imaginary:D

.field private final transient isInfinite:Z

.field private final transient isNaN:Z

.field private final real:D


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 59
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    .line 62
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    invoke-direct {v0, v5, v6, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v0, v5, v6, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    .line 67
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v3, v4, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ONE:Lorg/apache/commons/math3/complex/Complex;

    .line 69
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, v1, v2, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    sput-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-void
.end method

.method public constructor <init>(D)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 89
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 3

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    .line 100
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    .line 102
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    .line 103
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    return-void
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Z
    .locals 1

    const/4 v0, 0x1

    .line 397
    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/complex/Complex;->equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z

    move-result p0

    return p0
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 7

    .line 416
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v3, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equals(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;I)Z
    .locals 4

    .line 382
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1, v2, v3, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide p0, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1, p0, p1, p2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static equalsWithRelativeTolerance(Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;D)Z
    .locals 7

    .line 437
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v3, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/util/Precision;->equalsWithRelativeTolerance(DDD)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static valueOf(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 1289
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    sget-object p0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p0

    .line 1292
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/complex/Complex;-><init>(D)V

    return-object v0
.end method

.method public static valueOf(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 1275
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1279
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0

    .line 1277
    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p0
.end method


# virtual methods
.method public abs()D
    .locals 7

    .line 116
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 119
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    .line 122
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/16 v3, 0x0

    if-gez v0, :cond_3

    .line 123
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_2

    .line 124
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 126
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v3, v5

    .line 127
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v3

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    :goto_0
    mul-double/2addr v5, v0

    return-wide v5

    .line 129
    :cond_3
    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v0, v5, v3

    if-nez v0, :cond_4

    .line 130
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0

    .line 132
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v3, v5

    .line 133
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double/2addr v3, v3

    add-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0
.end method

.method public acos()Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .line 656
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 657
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 660
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .line 175
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 176
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 157
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 159
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public asin()Lorg/apache/commons/math3/complex/Complex;
    .locals 3

    .line 680
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 681
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 684
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->sqrt1z()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 704
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 705
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 708
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->I:Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public conjugate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 197
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 198
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 201
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 745
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 746
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 749
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 785
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 786
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 789
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method protected createComplex(DD)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 1263
    new-instance v0, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    return-object v0
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 285
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_4

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    .line 289
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 291
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    goto :goto_0

    :cond_2
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    :goto_0
    return-object p1

    .line 294
    :cond_3
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 286
    :cond_4
    :goto_1
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 248
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 249
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_4

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v0

    .line 254
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-nez v6, :cond_1

    cmpl-double v4, v2, v4

    if-nez v4, :cond_1

    .line 256
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 259
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result p1

    if-nez p1, :cond_2

    .line 260
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 263
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    cmpg-double p1, v4, v6

    if-gez p1, :cond_3

    div-double v4, v0, v2

    mul-double/2addr v0, v4

    add-double/2addr v0, v2

    .line 266
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double v6, v2, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    add-double/2addr v6, v8

    div-double/2addr v6, v0

    mul-double/2addr v8, v4

    sub-double/2addr v8, v2

    div-double/2addr v8, v0

    invoke-virtual {p0, v6, v7, v8, v9}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    :cond_3
    div-double v4, v2, v0

    mul-double/2addr v2, v4

    add-double/2addr v2, v0

    .line 271
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double v6, v0, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    add-double/2addr v6, v8

    div-double/2addr v6, v2

    mul-double/2addr v8, v4

    sub-double/2addr v0, v8

    div-double/2addr v0, v2

    invoke-virtual {p0, v6, v7, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 250
    :cond_4
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 352
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/complex/Complex;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 353
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    .line 354
    iget-boolean v1, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v1, :cond_1

    .line 355
    iget-boolean p1, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    return p1

    .line 357
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v5, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v5, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/MathUtils;->equals(DD)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0

    :cond_3
    return v2
.end method

.method public exp()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 826
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 827
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 830
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    .line 831
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public getArgument()D
    .locals 4

    .line 1191
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getField()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/complex/ComplexField;
    .locals 1

    .line 1309
    invoke-static {}, Lorg/apache/commons/math3/complex/ComplexField;->getInstance()Lorg/apache/commons/math3/complex/ComplexField;

    move-result-object v0

    return-object v0
.end method

.method public getImaginary()D
    .locals 2

    .line 463
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    return-wide v0
.end method

.method public getReal()D
    .locals 2

    .line 472
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 450
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    return v0

    .line 453
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x25

    return v0
.end method

.method public isInfinite()Z
    .locals 1

    .line 496
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    return v0
.end method

.method public isNaN()Z
    .locals 1

    .line 483
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    return v0
.end method

.method public log()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 871
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 872
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 875
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(I)Lorg/apache/commons/math3/complex/Complex;

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

    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 568
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 571
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 577
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double/2addr v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v2, p1

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 575
    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 569
    :cond_3
    :goto_1
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public multiply(I)Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 549
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 550
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 552
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 556
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 554
    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 525
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 526
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 529
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 536
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p1, Lorg/apache/commons/math3/complex/Complex;->real:D

    mul-double v4, v0, v2

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v8, p1, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    mul-double/2addr v0, v8

    mul-double/2addr v6, v2

    add-double/2addr v0, v6

    invoke-virtual {p0, v4, v5, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 534
    :cond_2
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object p1

    .line 527
    :cond_3
    :goto_1
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->negate()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    .line 588
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 589
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 592
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    neg-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    neg-double v2, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public nthRoot(I)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/complex/Complex;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-lez p1, :cond_3

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1225
    iget-boolean v1, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v1, :cond_0

    .line 1226
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->isInfinite()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1230
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 1235
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v1

    int-to-double v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double/2addr v5, v3

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 1238
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->getArgument()D

    move-result-wide v5

    div-double/2addr v5, v3

    const-wide v7, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v7, v3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_2

    .line 1243
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v9

    mul-double/2addr v9, v1

    .line 1244
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v11

    mul-double/2addr v11, v1

    .line 1245
    invoke-virtual {p0, v9, v10, v11, v12}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-double/2addr v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    .line 1219
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_NTH_ROOT_FOR_NEGATIVE_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public pow(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 1

    .line 913
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/complex/Complex;->multiply(D)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public pow(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 901
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 902
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->log()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->exp()Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method protected final readResolve()Ljava/lang/Object;
    .locals 4

    .line 1304
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->reciprocal()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/complex/Complex;
    .locals 9

    .line 300
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 301
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 304
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v2, v4, v2

    if-nez v2, :cond_1

    .line 305
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->INF:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 308
    :cond_1
    iget-boolean v2, p0, Lorg/apache/commons/math3/complex/Complex;->isInfinite:Z

    if-eqz v2, :cond_2

    .line 309
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 312
    :cond_2
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-gez v0, :cond_3

    .line 313
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    div-double v7, v3, v5

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    mul-double/2addr v7, v1

    neg-double v0, v1

    .line 315
    invoke-virtual {p0, v7, v8, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 317
    :cond_3
    iget-wide v3, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    iget-wide v5, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    div-double v7, v3, v5

    mul-double/2addr v3, v7

    add-double/2addr v3, v5

    div-double/2addr v1, v3

    neg-double v3, v1

    mul-double/2addr v3, v7

    .line 319
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 949
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 950
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 953
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/complex/Complex;
    .locals 6

    .line 989
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 990
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 993
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/complex/Complex;
    .locals 8

    .line 1032
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    .line 1033
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0

    .line 1036
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_1

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    cmpl-double v4, v4, v2

    if-nez v4, :cond_1

    .line 1037
    invoke-virtual {p0, v2, v3, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1040
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v4

    add-double/2addr v0, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 1041
    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    cmpl-double v2, v6, v2

    if-ltz v2, :cond_2

    .line 1042
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1044
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    mul-double/2addr v4, v0

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->copySign(DD)D

    move-result-wide v4

    mul-double/2addr v4, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public sqrt1z()Lorg/apache/commons/math3/complex/Complex;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide/16 v2, 0x0

    .line 1067
    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 57
    check-cast p1, Lorg/apache/commons/math3/complex/Complex;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/complex/Complex;
    .locals 2

    .line 633
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 636
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    sub-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 634
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 615
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 616
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v2

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object p1

    return-object p1

    .line 617
    :cond_1
    :goto_0
    sget-object p1, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object p1
.end method

.method public tan()Lorg/apache/commons/math3/complex/Complex;
    .locals 8

    .line 1103
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1106
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1107
    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1110
    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1113
    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    mul-double/2addr v0, v4

    .line 1115
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 1117
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v0

    div-double/2addr v0, v4

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/complex/Complex;
    .locals 8

    .line 1154
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/Complex;->isNaN:Z

    if-nez v0, :cond_3

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1157
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    cmpl-double v2, v0, v2

    const-wide/16 v3, 0x0

    if-lez v2, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1158
    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    :cond_1
    const-wide/high16 v5, -0x3fcc000000000000L    # -20.0

    cmpg-double v2, v0, v5

    if-gez v2, :cond_2

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 1161
    invoke-virtual {p0, v0, v1, v3, v4}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    :cond_2
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    .line 1164
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    mul-double/2addr v4, v2

    .line 1165
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    add-double/2addr v2, v6

    .line 1167
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v0

    div-double/2addr v0, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    div-double/2addr v4, v2

    invoke-virtual {p0, v0, v1, v4, v5}, Lorg/apache/commons/math3/complex/Complex;->createComplex(DD)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_3
    :goto_0
    sget-object v0, Lorg/apache/commons/math3/complex/Complex;->NaN:Lorg/apache/commons/math3/complex/Complex;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1315
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->real:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lorg/apache/commons/math3/complex/Complex;->imaginary:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
