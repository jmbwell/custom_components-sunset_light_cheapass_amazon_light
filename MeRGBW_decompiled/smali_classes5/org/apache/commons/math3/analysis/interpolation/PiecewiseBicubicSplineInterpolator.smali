.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "PiecewiseBicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    const/4 v0, 0x0

    .line 43
    aget-object v0, p3, v0

    if-eqz v0, :cond_1

    .line 50
    array-length v0, p1

    if-eqz v0, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    array-length v0, p3

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 57
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 59
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;-><init>([D[D[[D)V

    return-object v0

    .line 53
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 47
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method
