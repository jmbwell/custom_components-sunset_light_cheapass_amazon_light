.class public Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;
.super Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;
.source "MidPointIntegrator.java"


# static fields
.field public static final MIDPOINT_MAX_ITERATIONS_COUNT:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x40

    .line 95
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    return-void
.end method

.method public constructor <init>(DDII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 61
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(DDII)V

    const/16 p1, 0x40

    if-gt p6, p1, :cond_0

    return-void

    .line 63
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p4, 0x0

    invoke-direct {p2, p3, p1, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/integration/BaseAbstractUnivariateIntegrator;-><init>(II)V

    const/16 p1, 0x40

    if-gt p2, p1, :cond_0

    return-void

    .line 85
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private stage(IDDD)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    add-int/lit8 v0, p1, -0x1

    const-wide/16 v1, 0x1

    shl-long v3, v1, v0

    long-to-double v5, v3

    div-double v5, p6, v5

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v9, v5, v7

    add-double v9, p4, v9

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    :goto_0
    cmp-long v0, v13, v3

    if-gez v0, :cond_0

    move-object/from16 v0, p0

    .line 133
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v15

    add-double/2addr v11, v15

    add-double/2addr v9, v5

    add-long/2addr v13, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    mul-double/2addr v11, v5

    add-double v1, p2, v11

    mul-double/2addr v1, v7

    return-wide v1
.end method


# virtual methods
.method protected doIntegrate()D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v8, p0

    .line 146
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMin()D

    move-result-wide v9

    .line 147
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMax()D

    move-result-wide v0

    sub-double v11, v0, v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double v0, v11, v13

    add-double/2addr v0, v9

    .line 150
    invoke-virtual {v8, v0, v1}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->computeObjectiveValue(D)D

    move-result-wide v0

    mul-double/2addr v0, v11

    move-wide v15, v0

    .line 153
    :goto_0
    iget-object v0, v8, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 154
    iget-object v0, v8, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->iterations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v6

    move-wide v2, v15

    move-wide v4, v9

    move v13, v6

    move-wide v6, v11

    .line 155
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->stage(IDDD)D

    move-result-wide v0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getMinimalIterationCount()I

    move-result v2

    if-lt v13, v2, :cond_1

    sub-double v2, v0, v15

    .line 157
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 158
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getRelativeAccuracy()D

    move-result-wide v4

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v6, v13

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v6

    cmpg-double v4, v2, v4

    if-lez v4, :cond_0

    .line 160
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/integration/MidPointIntegrator;->getAbsoluteAccuracy()D

    move-result-wide v4

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_2

    :cond_0
    return-wide v0

    :cond_1
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    :cond_2
    move-wide v15, v0

    move-wide v13, v6

    goto :goto_0
.end method
