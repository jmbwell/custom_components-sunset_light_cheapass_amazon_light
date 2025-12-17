.class public Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;
.super Ljava/lang/Object;
.source "Logistic.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/Logistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 109
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

    .line 194
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x5

    .line 197
    aget-wide v1, p1, v0

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-lez v1, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 195
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 192
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 151
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    const/4 v2, 0x2

    .line 153
    aget-wide v15, v1, v2

    const/16 v17, 0x3

    .line 154
    aget-wide v18, v1, v17

    const/16 v20, 0x1

    .line 156
    aget-wide v3, v1, v20

    sub-double v21, v3, p1

    const/16 v23, 0x5

    .line 157
    aget-wide v3, v1, v23

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v13, v5, v3

    mul-double v3, v15, v21

    .line 158
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v24

    mul-double v26, v18, v24

    add-double v11, v26, v5

    const/16 v28, 0x0

    .line 161
    aget-wide v3, v1, v28

    const/16 v29, 0x4

    aget-wide v5, v1, v29

    sub-double/2addr v3, v5

    mul-double/2addr v3, v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v5

    div-double v9, v3, v5

    neg-double v3, v9

    div-double v30, v3, v11

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v32, 0x0

    move-wide/from16 v3, v21

    move-wide v7, v15

    move-wide/from16 v34, v9

    move-wide/from16 v9, v18

    move-wide/from16 v36, v11

    move-wide/from16 v11, v32

    move-wide/from16 v32, v13

    .line 165
    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v38

    mul-double v3, v30, v15

    mul-double v40, v3, v26

    mul-double v3, v30, v21

    mul-double v26, v26, v3

    mul-double v30, v30, v24

    const-wide/16 v5, 0x0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v3, v21

    .line 169
    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v3

    .line 170
    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    mul-double v9, v34, v5

    mul-double v9, v9, v32

    const/4 v1, 0x6

    .line 172
    new-array v1, v1, [D

    aput-wide v38, v1, v28

    aput-wide v40, v1, v20

    aput-wide v26, v1, v2

    aput-wide v30, v1, v17

    aput-wide v3, v1, v29

    aput-wide v9, v1, v23

    return-object v1
.end method

.method public varargs value(D[D)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    .line 126
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/Logistic$Parametric;->validateParameters([D)V

    const/4 v2, 0x1

    .line 127
    aget-wide v2, v1, v2

    sub-double v4, v2, p1

    const/4 v2, 0x0

    aget-wide v6, v1, v2

    const/4 v2, 0x2

    aget-wide v8, v1, v2

    const/4 v2, 0x3

    aget-wide v10, v1, v2

    const/4 v2, 0x4

    aget-wide v12, v1, v2

    const/4 v2, 0x5

    aget-wide v2, v1, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    div-double/2addr v14, v2

    invoke-static/range {v4 .. v15}, Lorg/apache/commons/math3/analysis/function/Logistic;->access$000(DDDDDD)D

    move-result-wide v1

    return-wide v1
.end method
