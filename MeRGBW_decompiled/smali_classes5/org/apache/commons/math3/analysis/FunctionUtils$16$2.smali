.class Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;
.super Ljava/lang/Object;
.source "FunctionUtils.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/FunctionUtils$16;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/FunctionUtils$16;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value([D)[D
    .locals 11

    .line 567
    array-length v6, p1

    .line 570
    new-array v7, v6, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    .line 572
    new-instance v10, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v2, 0x1

    aget-wide v4, p1, v9

    move-object v0, v10

    move v1, v6

    move v3, v9

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 574
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/FunctionUtils$16$2;->this$0:Lorg/apache/commons/math3/analysis/FunctionUtils$16;

    iget-object p1, p1, Lorg/apache/commons/math3/analysis/FunctionUtils$16;->val$f:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-interface {p1, v7}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    .line 577
    new-array v0, v6, [D

    .line 578
    new-array v1, v6, [I

    move v2, v8

    :goto_1
    if-ge v2, v6, :cond_1

    const/4 v3, 0x1

    .line 580
    aput v3, v1, v2

    .line 581
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v3

    aput-wide v3, v0, v2

    .line 582
    aput v8, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
