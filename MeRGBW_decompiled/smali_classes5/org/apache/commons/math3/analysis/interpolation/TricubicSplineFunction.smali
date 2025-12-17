.class Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;
.super Ljava/lang/Object;
.source "TricubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final N:S = 0x4s


# instance fields
.field private final a:[[[D


# direct methods
.method public constructor <init>([D)V
    .locals 8

    .line 429
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 424
    new-array v0, v0, [I

    const/4 v1, 0x2

    const/4 v2, 0x4

    aput v2, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    const/4 v1, 0x0

    aput v2, v0, v1

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_1

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_0

    .line 433
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    aget-object v5, v5, v0

    aget-object v5, v5, v3

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    mul-int/2addr v6, v2

    add-int/2addr v6, v0

    aget-wide v6, p1, v6

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public value(DDD)D
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x1

    .line 450
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-ltz v2, :cond_5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v7

    if-gtz v2, :cond_5

    cmpg-double v2, p3, v0

    if-ltz v2, :cond_4

    cmpl-double v2, p3, v7

    if-gtz v2, :cond_4

    cmpg-double v2, p5, v0

    if-ltz v2, :cond_3

    cmpl-double v2, p5, v7

    if-gtz v2, :cond_3

    mul-double v9, p1, p1

    mul-double v11, v9, p1

    const/4 v2, 0x4

    .line 461
    new-array v4, v2, [D

    aput-wide v7, v4, v5

    aput-wide p1, v4, v3

    const/4 v6, 0x2

    aput-wide v9, v4, v6

    const/4 v9, 0x3

    aput-wide v11, v4, v9

    mul-double v10, p3, p3

    mul-double v12, v10, p3

    .line 465
    new-array v14, v2, [D

    aput-wide v7, v14, v5

    aput-wide p3, v14, v3

    aput-wide v10, v14, v6

    aput-wide v12, v14, v9

    mul-double v10, p5, p5

    mul-double v12, v10, p5

    .line 469
    new-array v15, v2, [D

    aput-wide v7, v15, v5

    aput-wide p5, v15, v3

    aput-wide v10, v15, v6

    aput-wide v12, v15, v9

    move v3, v5

    :goto_0
    if-ge v3, v2, :cond_2

    move v6, v5

    :goto_1
    if-ge v6, v2, :cond_1

    move v7, v5

    :goto_2
    if-ge v7, v2, :cond_0

    move-object/from16 v8, p0

    .line 475
    iget-object v9, v8, Lorg/apache/commons/math3/analysis/interpolation/TricubicSplineFunction;->a:[[[D

    aget-object v9, v9, v3

    aget-object v9, v9, v6

    aget-wide v10, v9, v7

    aget-wide v12, v4, v3

    mul-double/2addr v10, v12

    aget-wide v12, v14, v6

    mul-double/2addr v10, v12

    aget-wide v12, v15, v7

    mul-double/2addr v10, v12

    add-double/2addr v0, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    move-object/from16 v8, p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v8, p0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v8, p0

    return-wide v0

    :cond_3
    move-object/from16 v8, p0

    .line 456
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_4
    move-object/from16 v8, p0

    .line 453
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    :cond_5
    move-object/from16 v8, p0

    .line 450
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1, v6, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method
