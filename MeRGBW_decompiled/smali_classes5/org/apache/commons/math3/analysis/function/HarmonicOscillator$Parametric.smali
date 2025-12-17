.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 145
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 146
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 143
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 115
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    const/4 v0, 0x0

    .line 117
    aget-wide v1, p3, v0

    const/4 v3, 0x1

    .line 118
    aget-wide v4, p3, v3

    const/4 v6, 0x2

    .line 119
    aget-wide v7, p3, v6

    mul-double/2addr v4, p1

    add-double/2addr v4, v7

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 122
    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide v7

    neg-double v1, v1

    .line 123
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    mul-double/2addr v1, v4

    mul-double/2addr p1, v1

    const/4 p3, 0x3

    .line 126
    new-array p3, p3, [D

    aput-wide v7, p3, v0

    aput-wide p1, p3, v3

    aput-wide v1, p3, v6

    return-object p3
.end method

.method public varargs value(D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 95
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    const/4 v0, 0x1

    .line 96
    aget-wide v0, p3, v0

    mul-double/2addr p1, v0

    const/4 v0, 0x2

    aget-wide v0, p3, v0

    add-double/2addr p1, v0

    const/4 v0, 0x0

    aget-wide v0, p3, v0

    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide p1

    return-wide p1
.end method
