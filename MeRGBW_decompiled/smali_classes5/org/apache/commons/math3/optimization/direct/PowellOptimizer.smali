.class public Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "PowellOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/MultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/MultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 140
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 10

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    .line 158
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0, p9}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 113
    sget-wide v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double p9, p1, v0

    if-ltz p9, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p9, p3, v0

    if-lez p9, :cond_0

    .line 119
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    .line 123
    new-instance p1, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p5

    move-wide v4, p7

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;-><init>(Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;DD)V

    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    return-void

    .line 117
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 114
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p4, 0x1

    invoke-direct {p3, p1, p2, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v9, p5

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;-><init>(DDDDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method private newPointAndDirection([D[DD)[[D
    .locals 9

    .line 269
    array-length v0, p1

    .line 270
    new-array v1, v0, [D

    .line 271
    new-array v2, v0, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_0

    .line 273
    aget-wide v5, p2, v4

    mul-double/2addr v5, p3

    aput-wide v5, v2, v4

    .line 274
    aget-wide v7, p1, v4

    add-double/2addr v7, v5

    aput-wide v7, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 279
    new-array p1, p1, [[D

    aput-object v1, p1, v3

    const/4 p2, 0x1

    aput-object v2, p1, p2

    return-object p1
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 29

    move-object/from16 v0, p0

    .line 164
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    .line 165
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 166
    array-length v3, v2

    const/4 v4, 0x2

    .line 168
    new-array v4, v4, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v6, 0x0

    aput v3, v4, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v7, v6

    :goto_0
    if-ge v7, v3, :cond_0

    .line 170
    aget-object v8, v4, v7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    .line 177
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v8

    .line 178
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    move v11, v6

    :goto_1
    add-int/2addr v11, v5

    move v14, v6

    move/from16 v18, v14

    move-wide v12, v8

    const-wide/16 v16, 0x0

    :goto_2
    if-ge v14, v3, :cond_2

    .line 190
    aget-object v19, v4, v14

    invoke-static/range {v19 .. v19}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v15

    .line 194
    iget-object v5, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v5, v2, v15}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v5

    .line 195
    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v20

    move-object/from16 v19, v4

    .line 196
    invoke-virtual {v5}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v4

    .line 197
    invoke-direct {v0, v2, v15, v4, v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    .line 198
    aget-object v2, v2, v6

    sub-double v12, v12, v20

    cmpl-double v4, v12, v16

    if-lez v4, :cond_1

    move-wide/from16 v16, v12

    move/from16 v18, v14

    :cond_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v4, v19

    move-wide/from16 v12, v20

    const/4 v5, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v19, v4

    sub-double v4, v8, v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double v20, v4, v14

    .line 207
    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->relativeThreshold:D

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    add-double v24, v24, v26

    mul-double v14, v14, v24

    move-object/from16 v25, v7

    iget-wide v6, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->absoluteThreshold:D

    add-double/2addr v14, v6

    cmpg-double v6, v20, v14

    if-gtz v6, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 211
    :goto_3
    new-instance v7, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v7, v10, v8, v9}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 212
    new-instance v14, Lorg/apache/commons/math3/optimization/PointValuePair;

    invoke-direct {v14, v2, v12, v13}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-nez v6, :cond_4

    if-eqz v25, :cond_4

    move-object/from16 v15, v25

    .line 214
    invoke-interface {v15, v11, v7, v14}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    goto :goto_4

    :cond_4
    move-object/from16 v15, v25

    :goto_4
    if-eqz v6, :cond_8

    .line 217
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v2, :cond_6

    cmpg-double v1, v12, v8

    if-gez v1, :cond_5

    move-object v7, v14

    :cond_5
    return-object v7

    :cond_6
    cmpl-double v1, v12, v8

    if-lez v1, :cond_7

    move-object v7, v14

    :cond_7
    return-object v7

    .line 224
    :cond_8
    new-array v6, v3, [D

    .line 225
    new-array v7, v3, [D

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v3, :cond_9

    .line 227
    aget-wide v20, v2, v14

    aget-wide v25, v10, v14

    sub-double v20, v20, v25

    aput-wide v20, v6, v14

    .line 228
    aget-wide v20, v2, v14

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v20, v20, v22

    aget-wide v25, v10, v14

    sub-double v20, v20, v25

    aput-wide v20, v7, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 231
    :cond_9
    invoke-virtual {v2}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    .line 232
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->computeObjectiveValue([D)D

    move-result-wide v20

    cmpl-double v7, v8, v20

    if-lez v7, :cond_a

    add-double v25, v8, v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v27, v12, v22

    sub-double v25, v25, v27

    mul-double v25, v25, v22

    sub-double v4, v4, v16

    mul-double/2addr v4, v4

    mul-double v25, v25, v4

    sub-double v8, v8, v20

    mul-double v16, v16, v8

    mul-double v16, v16, v8

    sub-double v25, v25, v16

    const-wide/16 v4, 0x0

    cmpg-double v4, v25, v4

    if-gez v4, :cond_a

    .line 242
    iget-object v4, v0, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->line:Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;

    invoke-virtual {v4, v2, v6}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer$LineSearch;->search([D[D)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v4

    .line 243
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v7

    .line 244
    invoke-virtual {v4}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v4

    .line 245
    invoke-direct {v0, v2, v6, v4, v5}, Lorg/apache/commons/math3/optimization/direct/PowellOptimizer;->newPointAndDirection([D[DD)[[D

    move-result-object v2

    const/4 v4, 0x0

    .line 246
    aget-object v5, v2, v4

    add-int/lit8 v6, v3, -0x1

    .line 249
    aget-object v9, v19, v6

    aput-object v9, v19, v18

    const/4 v9, 0x1

    .line 250
    aget-object v2, v2, v9

    aput-object v2, v19, v6

    move-object v2, v5

    goto :goto_6

    :cond_a
    const/4 v4, 0x0

    const/4 v9, 0x1

    move-wide v7, v12

    :goto_6
    move v6, v4

    move v5, v9

    move-object/from16 v4, v19

    move-wide v8, v7

    move-object v7, v15

    goto/16 :goto_1
.end method
