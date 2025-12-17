.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver2.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 58
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 44
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMin()D

    move-result-wide v2

    .line 88
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMax()D

    move-result-wide v4

    .line 90
    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->verifyInterval(DD)V

    .line 92
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getRelativeAccuracy()D

    move-result-wide v6

    .line 93
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getAbsoluteAccuracy()D

    move-result-wide v8

    .line 94
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getFunctionValueAccuracy()D

    move-result-wide v10

    .line 101
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v12

    .line 102
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v1, v14, v10

    if-gez v1, :cond_0

    return-wide v2

    .line 106
    :cond_0
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 107
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    cmpg-double v1, v16, v10

    if-gez v1, :cond_1

    return-wide v4

    :cond_1
    mul-double v16, v12, v14

    const-wide/16 v18, 0x0

    cmpl-double v1, v16, v18

    if-gtz v1, :cond_9

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    add-double v20, v2, v4

    move-wide/from16 v22, v14

    mul-double v14, v20, v16

    .line 116
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v16

    const-wide/high16 v20, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v26, v2

    move-wide/from16 v24, v4

    move-wide/from16 v28, v20

    move-wide/from16 v42, v12

    move-wide/from16 v12, v22

    move-wide/from16 v22, v16

    move-wide/from16 v16, v14

    move-wide/from16 v14, v42

    :goto_0
    sub-double v30, v16, v24

    sub-double v26, v24, v26

    div-double v26, v30, v26

    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    add-double v34, v26, v32

    mul-double v36, v34, v12

    sub-double v36, v22, v36

    mul-double v38, v26, v14

    add-double v36, v36, v38

    mul-double v36, v36, v26

    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v40, v26, v38

    add-double v40, v40, v32

    mul-double v40, v40, v22

    mul-double v32, v34, v34

    mul-double v32, v32, v12

    sub-double v40, v40, v32

    mul-double v26, v26, v26

    mul-double v26, v26, v14

    add-double v40, v40, v26

    mul-double v34, v34, v22

    mul-double v14, v40, v40

    const-wide/high16 v26, 0x4010000000000000L    # 4.0

    mul-double v36, v36, v26

    mul-double v36, v36, v34

    sub-double v26, v14, v36

    cmpl-double v1, v26, v18

    if-ltz v1, :cond_3

    .line 130
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    add-double v14, v40, v14

    .line 131
    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v26

    sub-double v40, v40, v26

    .line 132
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpl-double v1, v26, v32

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    move-wide/from16 v14, v40

    goto :goto_1

    :cond_3
    sub-double v14, v14, v26

    .line 135
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    :goto_1
    cmpl-double v1, v14, v18

    if-eqz v1, :cond_5

    mul-double v34, v34, v38

    mul-double v34, v34, v30

    div-double v34, v34, v14

    sub-double v14, v16, v34

    :goto_2
    cmpl-double v1, v14, v24

    if-eqz v1, :cond_4

    cmpl-double v1, v14, v16

    if-nez v1, :cond_6

    :cond_4
    add-double/2addr v14, v8

    goto :goto_2

    .line 146
    :cond_5
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath;->random()D

    move-result-wide v14

    sub-double v26, v4, v2

    mul-double v14, v14, v26

    add-double/2addr v14, v2

    move-wide/from16 v28, v20

    .line 149
    :cond_6
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v26

    .line 152
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    mul-double v0, v6, v30

    invoke-static {v0, v1, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    sub-double v28, v14, v28

    .line 153
    invoke-static/range {v28 .. v29}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    cmpg-double v0, v28, v0

    if-lez v0, :cond_8

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    move-wide/from16 v28, v14

    move-wide v14, v12

    move-wide/from16 v12, v22

    move-wide/from16 v22, v26

    move-wide/from16 v26, v24

    move-wide/from16 v24, v16

    move-wide/from16 v16, v28

    goto/16 :goto_0

    :cond_8
    :goto_3
    return-wide v14

    :cond_9
    move-wide/from16 v22, v14

    .line 112
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-object v1, v0

    move-wide v6, v12

    move-wide/from16 v8, v22

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method
