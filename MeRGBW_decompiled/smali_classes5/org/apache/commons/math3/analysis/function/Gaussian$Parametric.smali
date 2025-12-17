.class public Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.super Ljava/lang/Object;
.source "Gaussian.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Gaussian;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 187
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    .line 190
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 188
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 185
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 155
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    const/4 v2, 0x0

    .line 157
    aget-wide v3, v1, v2

    const/4 v5, 0x1

    .line 158
    aget-wide v6, v1, v5

    sub-double v6, p1, v6

    const/4 v14, 0x2

    .line 159
    aget-wide v15, v1, v14

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v8, v15, v17

    mul-double/2addr v8, v15

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v19, v10, v8

    move-wide v8, v6

    move-wide/from16 v12, v19

    .line 162
    invoke-static/range {v8 .. v13}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide v8

    mul-double/2addr v3, v8

    mul-double v3, v3, v17

    mul-double v3, v3, v19

    mul-double/2addr v3, v6

    mul-double/2addr v6, v3

    div-double/2addr v6, v15

    const/4 v1, 0x3

    .line 166
    new-array v1, v1, [D

    aput-wide v8, v1, v2

    aput-wide v3, v1, v5

    aput-wide v6, v1, v14

    return-object v1
.end method

.method public varargs value(D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 130
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->validateParameters([D)V

    const/4 v0, 0x1

    .line 132
    aget-wide v0, p3, v0

    sub-double v2, p1, v0

    const/4 p1, 0x2

    .line 133
    aget-wide p1, p3, p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    div-double v6, p1, v0

    const/4 p1, 0x0

    .line 134
    aget-wide v4, p3, p1

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/function/Gaussian;->access$000(DDD)D

    move-result-wide p1

    return-wide p1
.end method
