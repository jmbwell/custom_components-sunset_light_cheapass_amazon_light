.class Lorg/apache/commons/math3/linear/SymmLQ$State;
.super Ljava/lang/Object;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/SymmLQ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# static fields
.field static final CBRT_MACH_PREC:D

.field static final MACH_PREC:D


# instance fields
.field private final a:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final b:Lorg/apache/commons/math3/linear/RealVector;

.field private bIsNull:Z

.field private beta:D

.field private beta1:D

.field private bstep:D

.field private cgnorm:D

.field private final check:Z

.field private dbar:D

.field private final delta:D

.field private gammaZeta:D

.field private gbar:D

.field private gmax:D

.field private gmin:D

.field private final goodb:Z

.field private hasConverged:Z

.field private lqnorm:D

.field private final m:Lorg/apache/commons/math3/linear/RealLinearOperator;

.field private final mb:Lorg/apache/commons/math3/linear/RealVector;

.field private minusEpsZeta:D

.field private oldb:D

.field private r1:Lorg/apache/commons/math3/linear/RealVector;

.field private r2:Lorg/apache/commons/math3/linear/RealVector;

.field private rnorm:D

.field private final shift:D

.field private snprod:D

.field private tnorm:D

.field private wbar:Lorg/apache/commons/math3/linear/RealVector;

.field private final xL:Lorg/apache/commons/math3/linear/RealVector;

.field private y:Lorg/apache/commons/math3/linear/RealVector;

.field private ynorm2:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 365
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    .line 366
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V
    .locals 1

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 391
    iput-object p2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    .line 392
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    .line 393
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    .line 394
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    .line 395
    iput-wide p5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    if-nez p2, :cond_0

    goto :goto_0

    .line 396
    :cond_0
    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    const/4 p1, 0x0

    .line 397
    iput-boolean p1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    .line 398
    iput-boolean p9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    .line 399
    iput-wide p7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    return-void
.end method

.method private static checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;
        }
    .end annotation

    .line 418
    invoke-virtual {p2, p2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    .line 419
    invoke-virtual {p1, p3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    .line 420
    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v4, v0

    sget-wide v6, Lorg/apache/commons/math3/linear/SymmLQ$State;->CBRT_MACH_PREC:D

    mul-double/2addr v4, v6

    sub-double/2addr v0, v2

    .line 421
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpl-double p3, v0, v4

    if-gtz p3, :cond_0

    return-void

    .line 423
    :cond_0
    new-instance p3, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;

    invoke-direct {p3}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;-><init>()V

    .line 424
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v0

    .line 425
    const-string v1, "operator"

    invoke-virtual {v0, v1, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 426
    const-string p0, "vector1"

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 427
    const-string p0, "vector2"

    invoke-virtual {v0, p0, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 428
    const-string p0, "threshold"

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 429
    throw p3
.end method

.method private static daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 481
    invoke-virtual {p6}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 484
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    mul-double/2addr v4, p3

    add-double/2addr v2, v4

    invoke-virtual {p6, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 485
    invoke-virtual {p6, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 6

    .line 462
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 464
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    mul-double/2addr v2, p0

    invoke-virtual {p3, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p3, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;
        }
    .end annotation

    .line 444
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;-><init>()V

    .line 445
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;->getContext()Lorg/apache/commons/math3/exception/util/ExceptionContext;

    move-result-object v1

    .line 446
    const-string v2, "operator"

    invoke-virtual {v1, v2, p0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 447
    const-string p0, "vector"

    invoke-virtual {v1, p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->setValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 448
    throw v0
.end method

.method private updateNorms()V
    .locals 12

    .line 760
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    .line 761
    iget-wide v2, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 762
    sget-wide v4, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double v6, v0, v4

    mul-double/2addr v0, v2

    mul-double v2, v0, v4

    .line 764
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->delta:D

    mul-double/2addr v0, v8

    .line 765
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_0

    goto :goto_0

    :cond_0
    move-wide v6, v8

    .line 766
    :goto_0
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    mul-double/2addr v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    .line 768
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    mul-double/2addr v8, v10

    .line 769
    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double/2addr v8, v10

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    div-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 778
    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    cmpg-double v8, v10, v8

    if-gtz v8, :cond_1

    .line 779
    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    div-double/2addr v6, v8

    goto :goto_1

    .line 781
    :cond_1
    iget-wide v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    iget-wide v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    invoke-static {v10, v11, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v6

    div-double v6, v8, v6

    :goto_1
    mul-double/2addr v4, v6

    const-wide v8, 0x3fb999999999999aL    # 0.1

    cmpl-double v4, v4, v8

    if-gez v4, :cond_5

    .line 786
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v4, v4, v2

    if-lez v4, :cond_4

    .line 793
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iput-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    .line 794
    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v2, v4, v2

    if-lez v2, :cond_3

    cmpg-double v0, v4, v0

    if-gtz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return-void

    .line 791
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/SingularOperatorException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularOperatorException;-><init>()V

    throw v0

    .line 784
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;

    invoke-direct {v0, v6, v7}, Lorg/apache/commons/math3/linear/IllConditionedOperatorException;-><init>(D)V

    throw v0
.end method


# virtual methods
.method bEqualsNullVector()Z
    .locals 1

    .line 812
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return v0
.end method

.method betaEqualsZero()Z
    .locals 4

    .line 822
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    sget-wide v2, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getNormOfResidual()D
    .locals 2

    .line 831
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->rnorm:D

    return-wide v0
.end method

.method hasConverged()Z
    .locals 1

    .line 803
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged:Z

    return v0
.end method

.method init()V
    .locals 11

    .line 544
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 549
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 550
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-nez v3, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->b:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 551
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v3, :cond_1

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v4, :cond_1

    .line 552
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-static {v3, v4, v0, v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 555
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpg-double v0, v3, v1

    if-gez v0, :cond_2

    .line 557
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v0, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 559
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    cmpl-double v0, v3, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    return-void

    :cond_3
    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bIsNull:Z

    .line 565
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    .line 571
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 572
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 573
    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->check:Z

    if-eqz v4, :cond_4

    .line 574
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    invoke-static {v4, v0, v3, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->checkSymmetry(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 580
    :cond_4
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v3, v3

    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v3, v4, v0, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 581
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v3

    neg-double v7, v3

    .line 582
    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v7, v9

    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v10, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 589
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    .line 590
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v9

    neg-double v7, v7

    div-double/2addr v7, v9

    .line 591
    iget-object v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8, v0, v9}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 592
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 593
    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v8, :cond_5

    .line 594
    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v7

    iput-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 596
    :cond_5
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 597
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    cmpg-double v7, v7, v1

    if-gez v7, :cond_6

    .line 599
    iget-object v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v8, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v7, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 601
    :cond_6
    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 609
    iget-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    .line 610
    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 611
    iput-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 612
    iput-wide v9, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    .line 613
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 614
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    .line 615
    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double v5, v3, v3

    mul-double/2addr v7, v7

    add-double/2addr v5, v7

    .line 616
    iput-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 617
    iput-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 618
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 619
    iput-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 621
    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-eqz v3, :cond_7

    .line 622
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 623
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    goto :goto_1

    .line 625
    :cond_7
    iput-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    .line 627
    :goto_1
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    return-void
.end method

.method refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 13

    .line 503
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 504
    iget-wide v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->lqnorm:D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->cgnorm:D

    cmpg-double v1, v1, v3

    const/4 v2, 0x0

    if-gez v1, :cond_1

    .line 505
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v1, :cond_0

    .line 506
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {p1, v2, v0}, Lorg/apache/commons/math3/linear/RealVector;->setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V

    goto :goto_3

    .line 508
    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v3, v5

    :goto_0
    if-ge v2, v0, :cond_4

    .line 510
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    .line 511
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v5, v3

    add-double/2addr v7, v5

    .line 512
    invoke-virtual {p1, v2, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 517
    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    const-wide/16 v7, 0x0

    cmpl-double v1, v5, v7

    if-nez v1, :cond_2

    sget-wide v5, Lorg/apache/commons/math3/linear/SymmLQ$State;->MACH_PREC:D

    mul-double/2addr v5, v3

    .line 518
    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v3, v5

    .line 519
    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta1:D

    div-double/2addr v5, v7

    .line 521
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->goodb:Z

    if-nez v1, :cond_3

    :goto_1
    if-ge v2, v0, :cond_4

    .line 523
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    .line 524
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    mul-double/2addr v7, v3

    add-double/2addr v5, v7

    .line 525
    invoke-virtual {p1, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-ge v2, v0, :cond_4

    .line 529
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v7

    .line 530
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v9

    .line 531
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SymmLQ$State;->mb:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v11

    mul-double/2addr v9, v3

    add-double/2addr v7, v9

    mul-double/2addr v11, v5

    add-double/2addr v7, v11

    .line 532
    invoke-virtual {p1, v2, v7, v8}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method update()V
    .locals 31

    move-object/from16 v0, p0

    .line 637
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    .line 638
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->a:Lorg/apache/commons/math3/linear/RealLinearOperator;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v10

    iput-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 639
    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->shift:D

    neg-double v4, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    neg-double v2, v2

    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double v7, v2, v6

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    move-object v6, v1

    invoke-static/range {v4 .. v10}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpbypz(DLorg/apache/commons/math3/linear/RealVector;DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 640
    iget-object v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    neg-double v4, v2

    .line 651
    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    div-double/2addr v4, v6

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/SymmLQ$State;->daxpy(DLorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 665
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r1:Lorg/apache/commons/math3/linear/RealVector;

    .line 666
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    .line 667
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    if-eqz v5, :cond_0

    .line 668
    invoke-virtual {v5, v4}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    .line 670
    :cond_0
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    .line 671
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->r2:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    const-wide/16 v6, 0x0

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 673
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->m:Lorg/apache/commons/math3/linear/RealLinearOperator;

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->y:Lorg/apache/commons/math3/linear/RealVector;

    invoke-static {v4, v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->throwNPDLOException(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 675
    :cond_1
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    .line 684
    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    mul-double v8, v2, v2

    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    mul-double v12, v10, v10

    add-double/2addr v8, v12

    mul-double/2addr v4, v4

    add-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->tnorm:D

    .line 692
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    mul-double/2addr v4, v4

    mul-double/2addr v10, v10

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 693
    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    div-double/2addr v6, v4

    .line 694
    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->oldb:D

    div-double/2addr v8, v4

    .line 704
    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    mul-double v12, v6, v10

    mul-double v14, v8, v2

    add-double/2addr v12, v14

    mul-double/2addr v10, v8

    mul-double/2addr v2, v6

    sub-double/2addr v10, v2

    .line 705
    iput-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gbar:D

    .line 706
    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->beta:D

    mul-double v10, v8, v2

    neg-double v14, v6

    mul-double/2addr v14, v2

    .line 707
    iput-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->dbar:D

    .line 708
    iget-wide v2, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    div-double/2addr v2, v4

    mul-double v14, v2, v6

    mul-double v16, v2, v8

    move-wide/from16 v18, v10

    .line 719
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_2

    move/from16 v20, v10

    .line 721
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v21

    .line 722
    invoke-virtual {v1, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v23

    .line 723
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v25

    .line 724
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->xL:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v27, v25, v14

    add-double v21, v21, v27

    mul-double v27, v23, v16

    move-wide/from16 v29, v14

    add-double v14, v21, v27

    invoke-virtual {v10, v11, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 725
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->wbar:Lorg/apache/commons/math3/linear/RealVector;

    mul-double v25, v25, v8

    mul-double v23, v23, v6

    sub-double v14, v25, v23

    invoke-virtual {v10, v11, v14, v15}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v10, v20

    move-wide/from16 v14, v29

    goto :goto_0

    .line 733
    :cond_2
    iget-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    mul-double/2addr v6, v14

    mul-double/2addr v6, v2

    add-double/2addr v10, v6

    iput-wide v10, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->bstep:D

    mul-double/2addr v14, v8

    .line 734
    iput-wide v14, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->snprod:D

    .line 735
    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmax:D

    .line 736
    iget-wide v6, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    invoke-static {v6, v7, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gmin:D

    .line 737
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    mul-double v6, v2, v2

    add-double/2addr v4, v6

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->ynorm2:D

    .line 738
    iget-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    mul-double/2addr v12, v2

    sub-double/2addr v4, v12

    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->gammaZeta:D

    move-wide/from16 v8, v18

    neg-double v4, v8

    mul-double/2addr v4, v2

    .line 739
    iput-wide v4, v0, Lorg/apache/commons/math3/linear/SymmLQ$State;->minusEpsZeta:D

    .line 752
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SymmLQ$State;->updateNorms()V

    return-void
.end method
