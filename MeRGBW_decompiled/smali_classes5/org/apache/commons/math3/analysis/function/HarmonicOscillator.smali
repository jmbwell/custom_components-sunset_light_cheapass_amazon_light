.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
    }
.end annotation


# instance fields
.field private final amplitude:D

.field private final omega:D

.field private final phase:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    .line 56
    iput-wide p5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    return-void
.end method

.method static synthetic access$000(DD)D
    .locals 0

    .line 36
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static value(DD)D
    .locals 0

    .line 158
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p0

    mul-double/2addr p2, p0

    return-wide p2
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 2

    .line 61
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double/2addr v0, p1

    iget-wide p1, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 166
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v0

    .line 167
    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [D

    .line 169
    iget-wide v5, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v5, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->phase:D

    add-double/2addr v5, v0

    .line 170
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v7

    mul-double/2addr v0, v7

    const/4 v7, 0x0

    aput-wide v0, v4, v7

    if-le v2, v3, :cond_0

    .line 172
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->amplitude:D

    neg-double v0, v0

    iget-wide v7, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    mul-double/2addr v0, v7

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v5

    mul-double/2addr v0, v5

    aput-wide v0, v4, v3

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->omega:D

    neg-double v5, v0

    mul-double/2addr v5, v0

    const/4 v0, 0x2

    :goto_0
    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 175
    aget-wide v7, v4, v1

    mul-double/2addr v7, v5

    aput-wide v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    return-object p1
.end method
