.class public abstract Lorg/apache/commons/math3/util/ContinuedFraction;
.super Ljava/lang/Object;
.source "ContinuedFraction.java"


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-8


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    .line 72
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    const v5, 0x7fffffff

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 83
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method public evaluate(DDI)D
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p5

    const/4 v4, 0x0

    .line 125
    invoke-virtual {v0, v4, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v11

    const-wide/16 v7, 0x0

    const-wide v9, 0x358dee7a4ad4b81fL    # 1.0E-50

    move-wide v5, v11

    .line 128
    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    const-wide v6, 0x358dee7a4ad4b81fL    # 1.0E-50

    if-eqz v5, :cond_0

    move-wide v11, v6

    :cond_0
    const/4 v5, 0x1

    const-wide/16 v8, 0x0

    move v10, v5

    move-wide v13, v11

    :goto_0
    if-ge v10, v3, :cond_6

    .line 138
    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getA(ID)D

    move-result-wide v15

    .line 139
    invoke-virtual {v0, v10, v1, v2}, Lorg/apache/commons/math3/util/ContinuedFraction;->getB(ID)D

    move-result-wide v17

    mul-double v8, v8, v17

    add-double/2addr v8, v15

    const-wide/16 v21, 0x0

    const-wide v23, 0x358dee7a4ad4b81fL    # 1.0E-50

    move-wide/from16 v19, v8

    .line 142
    invoke-static/range {v19 .. v24}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v19

    if-eqz v19, :cond_1

    move-wide v8, v6

    :cond_1
    div-double v17, v17, v11

    add-double v15, v15, v17

    const-wide/16 v21, 0x0

    const-wide v23, 0x358dee7a4ad4b81fL    # 1.0E-50

    move-wide/from16 v19, v15

    .line 146
    invoke-static/range {v19 .. v24}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v11

    if-eqz v11, :cond_2

    move-wide v11, v6

    goto :goto_1

    :cond_2
    move-wide v11, v15

    :goto_1
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    div-double v8, v15, v8

    mul-double v17, v11, v8

    mul-double v13, v13, v17

    .line 154
    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v19

    if-nez v19, :cond_5

    .line 158
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v19

    if-nez v19, :cond_4

    sub-double v17, v17, v15

    .line 163
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v15, v15, p3

    if-gez v15, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 159
    :cond_4
    new-instance v3, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_NAN_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v3, v6, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 155
    :cond_5
    new-instance v3, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONTINUED_FRACTION_INFINITY_DIVERGENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v3, v6, v2}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    :cond_6
    :goto_2
    if-ge v10, v3, :cond_7

    return-wide v13

    .line 174
    :cond_7
    new-instance v6, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v7, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_CONVERGENT_CONTINUED_FRACTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {v6, v7, v3, v2}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v6
.end method

.method public evaluate(DI)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 96
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/util/ContinuedFraction;->evaluate(DDI)D

    move-result-wide p1

    return-wide p1
.end method

.method protected abstract getA(ID)D
.end method

.method protected abstract getB(ID)D
.end method
