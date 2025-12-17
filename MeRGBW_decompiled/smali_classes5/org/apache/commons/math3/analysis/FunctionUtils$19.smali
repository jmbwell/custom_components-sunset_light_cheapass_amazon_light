.class final Lorg/apache/commons/math3/analysis/FunctionUtils$19;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)V
    .locals 0

    .line 731
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 1

    .line 735
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object p1

    return-object p1
.end method

.method public value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 746
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v3

    .line 747
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v4

    .line 748
    array-length v5, v1

    const/4 v6, 0x1

    if-gt v4, v6, :cond_7

    move v7, v2

    :goto_0
    if-ge v7, v5, :cond_2

    .line 755
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v8

    if-ne v8, v3, :cond_1

    .line 759
    aget-object v8, v1, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v8

    if-ne v8, v4, :cond_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 760
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v1

    invoke-direct {v2, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 756
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, v1, v7

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v1

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 765
    :cond_2
    new-array v7, v5, [D

    move v8, v2

    :goto_1
    if-ge v8, v5, :cond_3

    .line 767
    aget-object v9, v1, v8

    invoke-virtual {v9}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 769
    :cond_3
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->value([D)[D

    move-result-object v8

    .line 770
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/FunctionUtils$19;->val$f:Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-interface {v9}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;->jacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v9

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;->value([D)[[D

    move-result-object v7

    .line 773
    array-length v9, v8

    new-array v10, v9, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move v11, v2

    :goto_2
    if-ge v11, v9, :cond_6

    add-int/lit8 v12, v3, 0x1

    .line 775
    new-array v12, v12, [D

    .line 776
    aget-wide v13, v8, v11

    aput-wide v13, v12, v2

    .line 777
    new-array v13, v3, [I

    move v14, v2

    :goto_3
    if-ge v14, v3, :cond_5

    .line 779
    aput v6, v13, v14

    move v15, v2

    :goto_4
    if-ge v15, v5, :cond_4

    add-int/lit8 v16, v14, 0x1

    .line 781
    aget-wide v17, v12, v16

    aget-object v19, v7, v11

    aget-wide v20, v19, v15

    aget-object v6, v1, v15

    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v17, v17, v20

    aput-wide v17, v12, v16

    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x1

    goto :goto_4

    .line 783
    :cond_4
    aput v2, v13, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x1

    goto :goto_3

    .line 785
    :cond_5
    new-instance v6, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {v6, v3, v4, v12}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(II[D)V

    aput-object v6, v10, v11

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    return-object v10

    .line 750
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method
