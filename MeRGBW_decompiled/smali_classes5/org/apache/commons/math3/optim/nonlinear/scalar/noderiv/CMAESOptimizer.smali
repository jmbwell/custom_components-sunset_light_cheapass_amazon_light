.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "CMAESOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;
    }
.end annotation


# instance fields
.field private B:Lorg/apache/commons/math3/linear/RealMatrix;

.field private BD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private C:Lorg/apache/commons/math3/linear/RealMatrix;

.field private D:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cc:D

.field private ccov1:D

.field private ccov1Sep:D

.field private ccovmu:D

.field private ccovmuSep:D

.field private final checkFeasableCount:I

.field private chiN:D

.field private cs:D

.field private damps:D

.field private diagC:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagD:Lorg/apache/commons/math3/linear/RealMatrix;

.field private diagonalOnly:I

.field private dimension:I

.field private fitnessHistory:[D

.field private final generateStatistics:Z

.field private historySize:I

.field private inputSigma:[D

.field private final isActiveCMA:Z

.field private isMinimize:Z

.field private iterations:I

.field private lambda:I

.field private logMu2:D

.field private final maxIterations:I

.field private mu:I

.field private mueff:D

.field private normps:D

.field private pc:Lorg/apache/commons/math3/linear/RealMatrix;

.field private ps:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field private sigma:D

.field private final statisticsDHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsFitnessHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsMeanHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation
.end field

.field private final statisticsSigmaHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private final stopFitness:D

.field private stopTolFun:D

.field private stopTolHistFun:D

.field private stopTolUpX:D

.field private stopTolX:D

.field private weights:Lorg/apache/commons/math3/linear/RealMatrix;

.field private xmean:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(IDZIILorg/apache/commons/math3/random/RandomGenerator;ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IDZII",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Z",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 233
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    const/4 p9, 0x1

    .line 121
    iput-boolean p9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 202
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    .line 204
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    .line 206
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    .line 208
    new-instance p9, Ljava/util/ArrayList;

    invoke-direct {p9}, Ljava/util/ArrayList;-><init>()V

    iput-object p9, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    .line 234
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    .line 235
    iput-wide p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    .line 236
    iput-boolean p4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    .line 237
    iput p5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 238
    iput p6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    .line 239
    iput-object p7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 240
    iput-boolean p8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)Z
    .locals 0

    .line 81
    iget-boolean p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    return p0
.end method

.method private checkParameters()V
    .locals 12

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v0

    .line 560
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getLowerBound()[D

    move-result-object v1

    .line 561
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getUpperBound()[D

    move-result-object v2

    .line 563
    iget-object v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    if-eqz v3, :cond_2

    .line 564
    array-length v3, v3

    array-length v4, v0

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    move v4, v3

    .line 567
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 568
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v4

    aget-wide v8, v2, v4

    aget-wide v10, v1, v4

    sub-double/2addr v8, v10

    cmpl-double v5, v6, v8

    if-gtz v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 569
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v6, v5, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-wide v6, v2, v4

    aget-wide v8, v1, v4

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v5, v3, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 565
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    array-length v2, v2

    array-length v0, v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    return-void
.end method

.method private static copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 3

    const/4 v0, 0x0

    .line 1164
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1165
    invoke-interface {p0, v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p2, v0, p3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    .line 1139
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1140
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    new-array v1, v1, [I

    aput v4, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 1141
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1142
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1144
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0

    .line 1146
    :cond_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    new-array v1, v1, [I

    aput v3, v1, v3

    aput v0, v1, v2

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, v2

    .line 1147
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1148
    aget-object v3, v0, v1

    invoke-interface {p0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1150
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1078
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1079
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1080
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1081
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    div-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1084
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static eye(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    const/4 v0, 0x2

    .line 1189
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x0

    aput p0, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    if-ge v2, p0, :cond_1

    if-ge v2, p1, :cond_0

    .line 1192
    aget-object v3, v0, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1195
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private initializeCMA([D)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 581
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    if-lez v2, :cond_3

    .line 585
    array-length v2, v1

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v5, v4, v5

    const/4 v6, 0x0

    aput v2, v4, v6

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v4, v6

    .line 586
    :goto_0
    array-length v7, v1

    if-ge v4, v7, :cond_0

    .line 587
    aget-object v7, v2, v4

    iget-object v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    aget-wide v9, v8, v4

    aput-wide v9, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 589
    :cond_0
    new-instance v4, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v4, v2, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    .line 590
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    const-wide v7, 0x408f400000000000L    # 1000.0

    .line 593
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v9

    mul-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    const-wide v7, 0x3da5fd7fe1796495L    # 1.0E-11

    .line 594
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v9

    mul-double/2addr v9, v7

    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    const-wide v7, 0x3d719799812dea11L    # 1.0E-12

    .line 595
    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    const-wide v7, 0x3d3c25c268497682L    # 1.0E-13

    .line 596
    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    .line 599
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    div-int/2addr v2, v3

    iput v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v7, v2

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double/2addr v7, v9

    .line 600
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    iput-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    .line 601
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    int-to-double v9, v2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v7 .. v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-wide v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->logMu2:D

    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    move v2, v6

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    .line 604
    :goto_1
    iget v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    if-ge v2, v13, :cond_1

    .line 605
    iget-object v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v13, v2, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v13

    add-double/2addr v9, v13

    mul-double/2addr v13, v13

    add-double/2addr v11, v13

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 609
    :cond_1
    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object/from16 v16, v4

    div-double v3, v13, v9

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    mul-double/2addr v9, v9

    div-double/2addr v9, v11

    .line 610
    iput-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    .line 613
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v3, v2

    div-double v3, v9, v3

    const-wide/high16 v11, 0x4010000000000000L    # 4.0

    add-double/2addr v3, v11

    add-int/lit8 v6, v2, 0x4

    int-to-double v11, v6

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v19, v9, v17

    int-to-double v7, v2

    div-double v19, v19, v7

    add-double v11, v11, v19

    div-double/2addr v3, v11

    iput-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    add-double v3, v9, v17

    int-to-double v6, v2

    add-double/2addr v6, v9

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    add-double/2addr v6, v11

    div-double/2addr v3, v6

    .line 615
    iput-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double/2addr v9, v13

    add-int/2addr v2, v5

    int-to-double v2, v2

    div-double/2addr v9, v2

    .line 616
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double/2addr v2, v13

    const-wide/16 v6, 0x0

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double v2, v2, v17

    add-double/2addr v2, v13

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v4

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    int-to-double v8, v4

    const-wide v19, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    add-double v8, v8, v19

    div-double/2addr v6, v8

    sub-double v6, v13, v6

    const-wide v8, 0x3fd3333333333333L    # 0.3

    invoke-static {v8, v9, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double/2addr v2, v6

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    add-double/2addr v2, v6

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    .line 620
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v3, v2

    const-wide v6, 0x3ff4cccccccccccdL    # 1.3

    add-double/2addr v3, v6

    int-to-double v8, v2

    add-double/2addr v8, v6

    mul-double/2addr v3, v8

    iget-wide v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    add-double/2addr v3, v6

    div-double v3, v17, v3

    iput-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v3, v13, v3

    sub-double v8, v6, v17

    div-double v19, v13, v6

    add-double v8, v8, v19

    mul-double v8, v8, v17

    add-int/lit8 v10, v2, 0x2

    const/4 v15, 0x2

    add-int/2addr v2, v15

    mul-int/2addr v10, v2

    int-to-double v13, v10

    add-double/2addr v13, v6

    div-double/2addr v8, v13

    .line 621
    invoke-static {v3, v4, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    .line 623
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v4

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    add-double/2addr v6, v8

    mul-double/2addr v2, v6

    div-double/2addr v2, v11

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static {v6, v7, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    .line 624
    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v13, v6, v2

    iget-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v4

    add-double/2addr v6, v8

    mul-double/2addr v2, v6

    div-double/2addr v2, v11

    invoke-static {v13, v14, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    .line 625
    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v6, v4

    const-wide/high16 v8, 0x4010000000000000L    # 4.0

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    div-double v13, v8, v6

    sub-double v13, v8, v13

    const-wide/high16 v6, 0x4035000000000000L    # 21.0

    int-to-double v10, v4

    mul-double/2addr v10, v6

    int-to-double v6, v4

    mul-double/2addr v10, v6

    div-double v6, v8, v10

    add-double/2addr v13, v6

    mul-double/2addr v2, v13

    iput-wide v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    .line 628
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createColumnRealMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 629
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double v13, v8, v1

    move-object/from16 v1, v16

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 630
    invoke-static {v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 631
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 632
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 633
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 635
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 636
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 637
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v3, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 638
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 639
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    mul-int/lit8 v1, v1, 0x1e

    int-to-double v1, v1

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v3, v3

    div-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    .line 640
    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    const/4 v6, 0x0

    .line 641
    :goto_2
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->historySize:I

    if-ge v6, v1, :cond_2

    .line 642
    iget-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    aput-wide v2, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    return-void

    .line 582
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    iget v2, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method private static inverse([I)[I
    .locals 3

    .line 1309
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1310
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1311
    aget v2, p0, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static log(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1019
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1020
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1021
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1022
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1025
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static max(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    move v3, v2

    .line 1248
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 1249
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1250
    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpg-double v7, v0, v5

    if-gez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private static max([D)D
    .locals 6

    const-wide v0, -0x10000000000001L

    const/4 v2, 0x0

    .line 1282
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1283
    aget-wide v3, p0, v2

    cmpg-double v5, v0, v3

    if-gez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static min(Lorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 8

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    move v3, v2

    .line 1265
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v2

    .line 1266
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1267
    invoke-interface {p0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    cmpl-double v7, v0, v5

    if-lez v7, :cond_0

    move-wide v0, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method private static min([D)D
    .locals 6

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v2, 0x0

    .line 1296
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 1297
    aget-wide v3, p0, v2

    cmpl-double v5, v0, v3

    if-lez v5, :cond_0

    move-wide v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method private static ones(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5

    const/4 v0, 0x2

    .line 1175
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 p1, 0x0

    aput p0, v0, p1

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v1, p1

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1177
    aget-object v2, v0, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->fill([DD)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1179
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static push([DD)V
    .locals 3

    .line 811
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    .line 812
    aget-wide v1, p0, v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 814
    aput-wide p1, p0, v0

    return-void
.end method

.method private randn(I)[D
    .locals 4

    .line 1333
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 1335
    iget-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    const/4 v0, 0x2

    .line 1346
    new-array v0, v0, [I

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_0

    .line 1349
    aget-object v4, v0, v2

    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1352
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p1
.end method

.method private static repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1214
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 1215
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    mul-int/2addr p1, v0

    mul-int/2addr p2, v1

    const/4 v2, 0x2

    .line 1216
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput p2, v2, v3

    const/4 v3, 0x0

    aput p1, v2, v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v4, v3

    :goto_0
    if-ge v4, p1, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, p2, :cond_0

    .line 1219
    aget-object v6, v2, v4

    rem-int v7, v4, v0

    rem-int v8, v5, v1

    invoke-interface {p0, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static reverse([I)[I
    .locals 3

    .line 1321
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 1322
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 1323
    array-length v2, p0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    aget v2, p0, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1093
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1094
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1095
    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 1096
    aget-object v4, v0, v2

    aget v5, p1, v3

    invoke-interface {p0, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1099
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static sequence(DDD)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 3

    sub-double/2addr p2, p0

    div-double/2addr p2, p4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-double/2addr p2, v0

    double-to-int p2, p2

    const/4 p3, 0x2

    .line 1233
    new-array p3, p3, [I

    const/4 v0, 0x1

    aput v0, p3, v0

    const/4 v0, 0x0

    aput p2, p3, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [[D

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1236
    aget-object v2, p3, v1

    aput-wide p0, v2, v0

    add-double/2addr p0, p4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1239
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private sortedIndices([D)[I
    .locals 6

    .line 824
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    const/4 v1, 0x0

    move v2, v1

    .line 825
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 826
    new-instance v3, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;

    aget-wide v4, p1, v2

    invoke-direct {v3, v4, v5, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;-><init>(DI)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 828
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 829
    array-length v2, p1

    new-array v2, v2, [I

    .line 830
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 831
    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;->access$300(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$DoubleIndex;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private static sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1033
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1034
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1035
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1036
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1039
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1047
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1048
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1049
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1050
    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    .line 1051
    aget-object v6, v0, v2

    mul-double/2addr v4, v4

    aput-wide v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1054
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 1122
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v0, 0x0

    aput v2, v1, v0

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v0

    .line 1123
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    const-wide/16 v3, 0x0

    move v5, v0

    .line 1125
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1126
    invoke-interface {p0, v5, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1128
    :cond_0
    aget-object v5, v1, v0

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1130
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 1063
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1064
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 1065
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 1066
    aget-object v4, v0, v2

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    mul-double/2addr v5, v7

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1069
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private static triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    .line 1108
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    move v2, v1

    .line 1109
    :goto_0
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v1

    .line 1110
    :goto_1
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1111
    aget-object v4, v0, v2

    sub-int v5, v3, p1

    if-gt v2, v5, :cond_0

    invoke-interface {p0, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    goto :goto_2

    :cond_0
    const-wide/16 v5, 0x0

    :goto_2
    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1114
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method private updateBD(D)V
    .locals 10

    .line 774
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double v4, v0, v2

    add-double/2addr v4, p1

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    int-to-double v4, v4

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    rem-double/2addr v4, v8

    add-double/2addr v0, v2

    add-double/2addr v0, p1

    div-double/2addr v4, v0

    iget p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double p1, p1

    div-double/2addr v4, p1

    const-wide/high16 p1, 0x4024000000000000L    # 10.0

    div-double/2addr v4, p1

    cmpg-double p1, v4, v8

    if-gez p1, :cond_4

    .line 777
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->triu(Lorg/apache/commons/math3/linear/RealMatrix;I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 779
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 780
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 781
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getD()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->D:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 782
    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 783
    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    cmpg-double p1, v2, v6

    const-wide v2, 0x42d6bcc41e900000L    # 1.0E14

    if-gtz p1, :cond_2

    move p1, p2

    .line 784
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge p1, v0, :cond_1

    .line 785
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-gez v0, :cond_0

    .line 786
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, p1, p2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 789
    :cond_1
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v2

    .line 790
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 791
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 793
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v4

    mul-double/2addr v4, v2

    cmpl-double p1, p1, v4

    if-lez p1, :cond_3

    .line 794
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide p1

    div-double/2addr p1, v2

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v2

    sub-double/2addr p1, v2

    .line 795
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 796
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ones(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 798
    :cond_3
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 799
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 800
    iget-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {p1, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-static {p2, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_4
    return-void
.end method

.method private updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 15

    move-object v0, p0

    .line 711
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v1, v3

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 712
    iget v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    const/4 v2, 0x1

    move-object/from16 v5, p5

    invoke-static {v5, v2, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    move-object/from16 v5, p2

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iget-wide v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    div-double v5, v7, v5

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 714
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-wide v9, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    invoke-interface {v5, v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    if-eqz p1, :cond_0

    move-wide v11, v3

    goto :goto_0

    .line 717
    :cond_0
    iget-wide v11, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    mul-double/2addr v11, v13

    sub-double v13, v9, v13

    mul-double/2addr v11, v13

    .line 718
    :goto_0
    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1:D

    sub-double v13, v7, v13

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    sub-double/2addr v13, v3

    add-double/2addr v11, v13

    .line 719
    iget-boolean v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isActiveCMA:Z

    if-eqz v6, :cond_2

    sub-double/2addr v7, v3

    const-wide/high16 v3, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v7, v3

    .line 721
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v7, v3

    iget v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    add-int/lit8 v3, v3, 0x2

    int-to-double v3, v3

    const-wide/high16 v13, 0x3ff8000000000000L    # 1.5

    invoke-static {v3, v4, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    iget-wide v13, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v13, v9

    add-double/2addr v3, v13

    div-double/2addr v7, v3

    .line 729
    invoke-static/range {p4 .. p4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v3

    .line 730
    iget v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v3

    move-object/from16 v4, p3

    invoke-static {v4, v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 731
    invoke-static {v3}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sumRows(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    const/4 v6, 0x0

    .line 732
    invoke-interface {v4, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getRow(I)[D

    move-result-object v9

    invoke-direct {p0, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v9

    .line 733
    invoke-static {v4, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 734
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->reverse([I)[I

    move-result-object v13

    .line 735
    invoke-static {v4, v13}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 736
    invoke-static {v4, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->divide(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 737
    invoke-static {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inverse([I)[I

    move-result-object v9

    .line 738
    invoke-static {v4, v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 740
    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v9

    invoke-interface {v9, v6, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    const-wide v13, 0x3fd5c28f5c28f5c2L    # 0.33999999999999997

    div-double/2addr v13, v9

    cmpl-double v6, v7, v13

    if-lez v6, :cond_1

    goto :goto_1

    :cond_1
    move-wide v13, v7

    .line 745
    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v4, v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 746
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 747
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v13

    add-double/2addr v11, v6

    .line 749
    iget-object v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-wide v8, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    add-double/2addr v8, v6

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v6, v2, v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v5, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v3, v13, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    move-wide v3, v13

    goto :goto_2

    .line 758
    :cond_2
    iget-object v3, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iget-wide v4, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmu:D

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    iget v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {v5, v2, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->repmat(Lorg/apache/commons/math3/linear/RealMatrix;II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-static {v2, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    const-wide/16 v3, 0x0

    .line 765
    :goto_2
    invoke-direct {p0, v3, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateBD(D)V

    return-void
.end method

.method private updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    .line 679
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    mul-double/2addr v0, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 680
    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    sub-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 681
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccov1Sep:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->square(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-static {v0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ccovmuSep:D

    invoke-interface {p2, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {p1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 685
    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 686
    iget p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    iget p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    if-le p2, p1, :cond_1

    const/4 p1, 0x0

    .line 689
    iput p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    .line 690
    iget p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-static {p1, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->eye(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 691
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 692
    iget-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diag(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->C:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return-void
.end method

.method private updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z
    .locals 11

    .line 655
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v1, v3, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->B:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double v7, v5, v1

    mul-double/2addr v1, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v1, v7

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->ps:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 658
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    .line 659
    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    sub-double v7, v3, v7

    iget p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    mul-int/lit8 p1, p1, 0x2

    invoke-static {v7, v8, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    sub-double v7, v3, v7

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    div-double/2addr v0, v7

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    div-double/2addr v0, v7

    iget p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    int-to-double v7, p1

    add-double/2addr v7, v3

    div-double v7, v5, v7

    const-wide v9, 0x3ff6666666666666L    # 1.4

    add-double/2addr v7, v9

    cmpg-double p1, v0, v7

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 662
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v3, v1

    invoke-interface {v0, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz p1, :cond_1

    .line 664
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cc:D

    sub-double/2addr v5, v1

    mul-double/2addr v1, v5

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mueff:D

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    div-double/2addr v1, v3

    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_1
    return p1
.end method

.method private valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D
    .locals 9

    .line 844
    array-length v0, p1

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_2

    aget-object v6, p1, v5

    .line 845
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v7

    cmpl-double v7, v7, v1

    if-lez v7, :cond_0

    .line 846
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v1

    .line 848
    :cond_0
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v7

    cmpg-double v7, v7, v3

    if-gez v7, :cond_1

    .line 849
    invoke-static {v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v3

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    sub-double/2addr v1, v3

    return-wide v1
.end method

.method private static zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 1204
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 24

    move-object/from16 v6, p0

    .line 372
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    .line 373
    new-instance v7, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;

    invoke-direct {v7, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;)V

    .line 374
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v0

    .line 376
    array-length v1, v0

    iput v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    .line 377
    invoke-direct {v6, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->initializeCMA([D)V

    const/4 v8, 0x0

    .line 378
    iput v8, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    .line 379
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v0

    .line 380
    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v1

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 381
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 382
    new-instance v0, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getStartPoint()[D

    move-result-object v3

    iget-boolean v4, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v4, :cond_0

    move-wide v4, v1

    goto :goto_0

    :cond_0
    neg-double v4, v1

    :goto_0
    invoke-direct {v0, v3, v4, v5}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    const/4 v9, 0x1

    .line 390
    iput v9, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-object v11, v0

    move-wide v12, v1

    const/4 v14, 0x0

    :goto_1
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->maxIterations:I

    if-gt v0, v1, :cond_1c

    .line 391
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->incrementIterationCount()V

    .line 394
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-direct {v6, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn1(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    .line 395
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    iget v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->zeros(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 396
    iget v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    new-array v15, v1, [D

    .line 397
    new-array v2, v1, [Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move v4, v8

    .line 399
    :goto_2
    iget v5, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    if-ge v4, v5, :cond_5

    move v5, v8

    const/16 v16, 0x0

    .line 401
    :goto_3
    iget v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    add-int/2addr v10, v9

    if-ge v5, v10, :cond_4

    .line 402
    iget v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v10, :cond_1

    .line 403
    iget-object v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v9, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->BD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v9, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    move-object v9, v11

    move-wide/from16 v17, v12

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-interface {v8, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    goto :goto_4

    :cond_1
    move-object v9, v11

    move-wide/from16 v17, v12

    .line 406
    iget-object v8, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    invoke-static {v10, v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->times(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-interface {v10, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 409
    :goto_4
    iget v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkFeasableCount:I

    if-ge v5, v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->isFeasible([D)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_5

    .line 414
    :cond_2
    iget v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    invoke-direct {v6, v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->randn(I)[D

    move-result-object v10

    invoke-interface {v3, v4, v10}, Lorg/apache/commons/math3/linear/RealMatrix;->setColumn(I[D)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v16, v8

    move-object v11, v9

    move-wide/from16 v12, v17

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    :cond_3
    :goto_5
    const/4 v5, 0x0

    goto :goto_6

    :cond_4
    move-object v9, v11

    move-wide/from16 v17, v12

    move v5, v8

    move-object/from16 v8, v16

    .line 416
    :goto_6
    invoke-static {v8, v5, v0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->copyColumn(Lorg/apache/commons/math3/linear/RealMatrix;ILorg/apache/commons/math3/linear/RealMatrix;I)V

    .line 418
    :try_start_0
    invoke-interface {v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {v7, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->value([D)Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/TooManyEvaluationsException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    move-object v11, v9

    move-wide/from16 v12, v17

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_5
    move-object v9, v11

    move-wide/from16 v17, v12

    .line 425
    invoke-direct {v6, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->valueRange([Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v4

    const/4 v8, 0x0

    :goto_7
    if-ge v8, v1, :cond_6

    .line 427
    aget-object v10, v2, v8

    invoke-static {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$000(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v10

    aget-object v12, v2, v8

    invoke-static {v12}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;->access$100(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$ValuePenaltyPair;)D

    move-result-wide v12

    mul-double/2addr v12, v4

    add-double/2addr v10, v12

    aput-wide v10, v15, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 431
    :cond_6
    invoke-direct {v6, v15}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sortedIndices([D)[I

    move-result-object v8

    .line 433
    iget-object v5, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 434
    iget v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v8, v1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v10

    .line 435
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 436
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->mu:I

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object v0

    invoke-static {v3, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->selectColumns(Lorg/apache/commons/math3/linear/RealMatrix;[I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 437
    iget-object v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->weights:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 438
    invoke-direct {v6, v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateEvolutionPaths(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)Z

    move-result v1

    .line 439
    iget v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagonalOnly:I

    if-gtz v2, :cond_7

    move-object/from16 v0, p0

    move-object v2, v10

    move-object v4, v8

    .line 440
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovariance(ZLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;[ILorg/apache/commons/math3/linear/RealMatrix;)V

    goto :goto_8

    .line 442
    :cond_7
    invoke-direct {v6, v1, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->updateCovarianceDiagonalOnly(ZLorg/apache/commons/math3/linear/RealMatrix;)V

    .line 445
    :goto_8
    iget-wide v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    iget-wide v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->normps:D

    iget-wide v4, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->chiN:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    mul-double/2addr v2, v11

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double/2addr v2, v11

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iput-wide v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    const/4 v0, 0x0

    .line 446
    aget v1, v8, v0

    aget-wide v1, v15, v1

    .line 447
    array-length v3, v8

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    aget v3, v8, v3

    aget-wide v3, v15, v3

    cmpl-double v5, v17, v1

    if-lez v5, :cond_a

    .line 451
    new-instance v5, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-interface {v10, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v11

    invoke-static {v7, v11}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;->access$200(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$FitnessFunction;[D)[D

    move-result-object v0

    iget-boolean v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v11, :cond_8

    move-wide v11, v1

    goto :goto_9

    :cond_8
    neg-double v11, v1

    :goto_9
    invoke-direct {v5, v0, v11, v12}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 453
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    iget v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    invoke-interface {v0, v11, v5, v9}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_10

    :cond_9
    move-wide/from16 v17, v1

    move-object v11, v9

    goto :goto_a

    :cond_a
    move-object v5, v9

    move-object v11, v14

    .line 460
    :goto_a
    iget-wide v12, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopFitness:D

    const-wide/16 v19, 0x0

    cmpl-double v0, v12, v19

    if-eqz v0, :cond_c

    iget-boolean v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    neg-double v12, v12

    :goto_b
    cmpg-double v0, v1, v12

    if-gez v0, :cond_c

    goto/16 :goto_10

    .line 463
    :cond_c
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagC:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sqrt(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const/4 v9, 0x0

    invoke-interface {v0, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v0

    .line 464
    iget-object v12, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->pc:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v12, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v12

    const/4 v9, 0x0

    .line 465
    :goto_c
    iget v13, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v9, v13, :cond_f

    .line 466
    iget-wide v13, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    aget-wide v21, v12, v9

    move-object/from16 v16, v7

    move-object/from16 v23, v8

    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    aget-wide v11, v0, v9

    invoke-static {v7, v8, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    mul-double/2addr v13, v7

    iget-wide v7, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolX:D

    cmpl-double v7, v13, v7

    if-lez v7, :cond_d

    goto :goto_d

    .line 469
    :cond_d
    iget v7, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    if-lt v9, v7, :cond_e

    goto/16 :goto_10

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v7, v16

    move-object/from16 v11, v21

    move-object/from16 v12, v22

    move-object/from16 v8, v23

    goto :goto_c

    :cond_f
    move-object/from16 v16, v7

    move-object/from16 v23, v8

    move-object/from16 v21, v11

    :goto_d
    const/4 v7, 0x0

    .line 473
    :goto_e
    iget v8, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->dimension:I

    if-ge v7, v8, :cond_11

    .line 474
    iget-wide v8, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    aget-wide v11, v0, v7

    mul-double/2addr v8, v11

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolUpX:D

    cmpl-double v8, v8, v11

    if-lez v8, :cond_10

    goto/16 :goto_10

    :cond_10
    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 478
    :cond_11
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min([D)D

    move-result-wide v7

    .line 479
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max([D)D

    move-result-wide v11

    .line 480
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/4 v9, 0x2

    if-le v0, v9, :cond_12

    invoke-static {v11, v12, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    invoke-static {v7, v8, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v13

    sub-double/2addr v3, v13

    iget-wide v13, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolFun:D

    cmpg-double v0, v3, v13

    if-gez v0, :cond_12

    goto :goto_10

    .line 485
    :cond_12
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    iget-object v3, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    array-length v3, v3

    if-le v0, v3, :cond_13

    sub-double v3, v11, v7

    iget-wide v13, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->stopTolHistFun:D

    cmpg-double v0, v3, v13

    if-gez v0, :cond_13

    goto :goto_10

    .line 490
    :cond_13
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->max(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v3

    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->min(Lorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v13

    div-double/2addr v3, v13

    const-wide v13, 0x416312d000000000L    # 1.0E7

    cmpl-double v0, v3, v13

    if-lez v0, :cond_14

    goto :goto_10

    .line 494
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 495
    new-instance v0, Lorg/apache/commons/math3/optim/PointValuePair;

    const/4 v3, 0x0

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    iget-boolean v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->isMinimize:Z

    if-eqz v10, :cond_15

    move-wide v13, v1

    goto :goto_f

    :cond_15
    neg-double v13, v1

    :goto_f
    invoke-direct {v0, v4, v13, v14}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    if-eqz v21, :cond_16

    .line 498
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v4

    iget v10, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move-object/from16 v14, v21

    invoke-interface {v4, v10, v0, v14}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    :goto_10
    move-object v11, v5

    goto/16 :goto_14

    :cond_16
    move-object v14, v0

    goto :goto_11

    :cond_17
    move-object/from16 v14, v21

    const/4 v3, 0x0

    .line 505
    :goto_11
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    int-to-double v3, v0

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    div-double v3, v3, v21

    const-wide v21, 0x3fb999999999999aL    # 0.1

    add-double v3, v3, v21

    double-to-int v0, v3

    aget v0, v23, v0

    aget-wide v3, v15, v0

    cmpl-double v0, v17, v3

    const-wide v3, 0x3fc999999999999aL    # 0.2

    if-nez v0, :cond_18

    .line 506
    iget-wide v9, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    move-wide/from16 v21, v1

    iget-wide v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    move-object v15, v14

    iget-wide v13, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double/2addr v0, v13

    add-double/2addr v0, v3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double/2addr v9, v0

    iput-wide v9, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    goto :goto_12

    :cond_18
    move-wide/from16 v21, v1

    move-object v15, v14

    .line 508
    :goto_12
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_19

    move-wide/from16 v0, v21

    invoke-static {v11, v12, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    invoke-static {v7, v8, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v7

    sub-double/2addr v9, v7

    cmpl-double v2, v9, v19

    if-nez v2, :cond_1a

    .line 510
    iget-wide v7, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    iget-wide v9, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->cs:D

    iget-wide v11, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->damps:D

    div-double/2addr v9, v11

    add-double/2addr v9, v3

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr v7, v2

    iput-wide v7, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    goto :goto_13

    :cond_19
    move-wide/from16 v0, v21

    .line 513
    :cond_1a
    :goto_13
    iget-object v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->fitnessHistory:[D

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->push([DD)V

    .line 514
    iget-boolean v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->generateStatistics:Z

    if-eqz v2, :cond_1b

    .line 515
    iget-object v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    iget-wide v3, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->sigma:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 517
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    iget-object v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->xmean:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 518
    iget-object v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    iget-object v1, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->diagD:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const-wide v2, 0x40f86a0000000000L    # 100000.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    :cond_1b
    iget v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->iterations:I

    move v9, v1

    move-object v11, v5

    move-object v14, v15

    move-object/from16 v7, v16

    move-wide/from16 v12, v17

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_1c
    move-object v9, v11

    :catch_0
    move-object v11, v9

    :goto_14
    return-object v11
.end method

.method public getStatisticsDHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsDHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsFitnessHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsFitnessHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsMeanHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsMeanHistory:Ljava/util/List;

    return-object v0
.end method

.method public getStatisticsSigmaHistory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->statisticsSigmaHistory:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 81
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 365
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    .line 537
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 541
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 542
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    if-eqz v3, :cond_0

    .line 543
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$Sigma;->getSigma()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->inputSigma:[D

    goto :goto_1

    .line 546
    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    if-eqz v3, :cond_1

    .line 547
    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer$PopulationSize;->getPopulationSize()I

    move-result v2

    iput v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->lambda:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 552
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/CMAESOptimizer;->checkParameters()V

    return-void
.end method
