.class final Lorg/apache/commons/math3/analysis/FunctionUtils$17;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 2

    .line 612
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 623
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 624
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    .line 625
    array-length v5, v1

    const/4 v6, 0x1

    if-gt v4, v6, :cond_6

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_2

    .line 632
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 636
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    if-ne v8, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 637
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-direct {v2, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 633
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 642
    :cond_2
    new-array v7, v5, [D

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_3

    .line 644
    aget-object v9, v1, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 646
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->value([D)D

    move-result-wide v8

    .line 647
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$17;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-interface {v10}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v7

    add-int/lit8 v10, v3, 0x1

    .line 650
    new-array v10, v10, [D

    .line 651
    aput-wide v8, v10, v2

    .line 652
    new-array v8, v3, [I

    move v9, v2

    :goto_2
    if-ge v9, v3, :cond_5

    .line 654
    aput v6, v8, v9

    move v11, v2

    :goto_3
    if-ge v11, v5, :cond_4

    add-int/lit8 v12, v9, 0x1

    .line 656
    aget-wide v13, v10, v12

    aget-wide v15, v7, v11

    aget-object v6, v1, v11

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    aput-wide v13, v10, v12

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 658
    :cond_4
    aput v2, v8, v9

    add-int/lit8 v9, v9, 0x1

    const/4 v6, 0x1

    goto :goto_2

    .line 661
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v1, v3, v4, v10}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    return-object v1

    .line 627
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method
