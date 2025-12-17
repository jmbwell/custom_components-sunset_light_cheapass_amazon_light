.class public Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;
.super Ljava/lang/Object;
.source "BracketingNthOrderBrentSolverDFP.java"


# static fields
.field private static final MAXIMAL_AGING:I = 0x2


# instance fields
.field private final absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field private final functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

.field private final maximalOrder:I

.field private final relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    const/4 v0, 0x2

    if-lt p4, v0, :cond_0

    .line 80
    iput p4, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    .line 81
    iput-object p2, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 82
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    .line 83
    iput-object p3, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-void

    .line 78
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7

    move v0, p4

    :goto_0
    add-int/lit8 v1, p5, -0x1

    if-ge v0, v1, :cond_1

    add-int/lit8 v2, v0, 0x1

    sub-int v3, v2, p4

    :goto_1
    if-le v1, v0, :cond_0

    .line 422
    aget-object v4, p2, v1

    add-int/lit8 v5, v1, -0x1

    aget-object v5, p2, v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aget-object v5, p3, v1

    sub-int v6, v1, v3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    aput-object v4, p2, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    move v0, v2

    goto :goto_0

    .line 427
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    :goto_2
    if-lt v1, p4, :cond_2

    .line 429
    aget-object v0, p2, v1

    aget-object v2, p3, v1

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p5, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    invoke-virtual {v0, p5}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p5

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    return-object p5
.end method


# virtual methods
.method public getAbsoluteAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getEvaluations()I
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFunctionValueAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 135
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMaximalOrder()I
    .locals 1

    .line 90
    iget v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    return v0
.end method

.method public getRelativeAccuracy()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    return-object v0
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 157
    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v8, p5

    invoke-virtual/range {v2 .. v8}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public solve(ILorg/apache/commons/math3/dfp/UnivariateDfpFunction;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 183
    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    iget-object v0, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 187
    iget-object v0, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 188
    invoke-virtual/range {p5 .. p5}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x3

    .line 189
    invoke-virtual {v8, v9, v10}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    .line 192
    iget v12, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->maximalOrder:I

    add-int/lit8 v13, v12, 0x1

    new-array v14, v13, [Lorg/apache/commons/math3/dfp/Dfp;

    add-int/lit8 v0, v12, 0x1

    .line 193
    new-array v15, v0, [Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v5, 0x0

    .line 194
    aput-object p3, v14, v5

    .line 195
    aput-object p5, v14, v9

    const/4 v4, 0x2

    .line 196
    aput-object p4, v14, v4

    .line 199
    iget-object v0, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 200
    aget-object v0, v14, v9

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v15, v9

    .line 201
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    aget-object v0, v14, v9

    return-object v0

    .line 207
    :cond_0
    iget-object v0, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 208
    aget-object v0, v14, v5

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v15, v5

    .line 209
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    aget-object v0, v14, v5

    return-object v0

    .line 216
    :cond_1
    aget-object v0, v15, v5

    aget-object v1, v15, v9

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    move v0, v9

    goto :goto_0

    .line 225
    :cond_2
    iget-object v0, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 226
    aget-object v0, v14, v4

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    aput-object v0, v15, v4

    .line 227
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 229
    aget-object v0, v14, v4

    return-object v0

    .line 232
    :cond_3
    aget-object v0, v15, v9

    aget-object v1, v15, v4

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v0

    if-eqz v0, :cond_1d

    move v0, v4

    move v1, v10

    .line 244
    :goto_0
    new-array v3, v13, [Lorg/apache/commons/math3/dfp/Dfp;

    add-int/lit8 v2, v0, -0x1

    .line 247
    aget-object v16, v14, v2

    .line 248
    aget-object v2, v15, v2

    .line 249
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 250
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v17

    .line 252
    aget-object v18, v14, v0

    .line 253
    aget-object v19, v15, v0

    .line 254
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    .line 255
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v20

    move v7, v5

    move-object/from16 v4, v16

    move-object/from16 v16, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v8

    move-object/from16 v8, v18

    move/from16 v18, v12

    move-object/from16 v12, v19

    move/from16 v19, v13

    move-object/from16 v13, v20

    move-object/from16 v27, v2

    move v2, v0

    move-object/from16 v0, v27

    .line 262
    :goto_1
    invoke-virtual {v10, v9}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v21

    move/from16 p4, v1

    if-eqz v21, :cond_4

    move-object v1, v9

    goto :goto_2

    :cond_4
    move-object v1, v10

    .line 263
    :goto_2
    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v21

    move/from16 p5, v2

    if-eqz v21, :cond_5

    move-object/from16 v21, v9

    move-object v2, v13

    goto :goto_3

    :cond_5
    move-object/from16 v21, v9

    move-object v2, v11

    .line 264
    :goto_3
    iget-object v9, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->absoluteAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v22, v10

    iget-object v10, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->relativeAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v10, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 265
    invoke-virtual {v8, v4}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v9

    invoke-virtual {v9, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v1

    if-nez v1, :cond_14

    iget-object v1, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->functionValueAccuracy:Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto/16 :goto_10

    :cond_6
    const/16 v1, 0x10

    const/4 v9, 0x2

    if-lt v7, v9, :cond_7

    .line 288
    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    :goto_4
    move-object v10, v1

    goto :goto_5

    :cond_7
    if-lt v5, v9, :cond_8

    .line 291
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_4

    :cond_8
    move-object/from16 v10, v17

    :goto_5
    move/from16 v23, p4

    const/4 v2, 0x0

    :goto_6
    sub-int v1, v23, v2

    .line 304
    invoke-static {v14, v2, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    move-object/from16 v0, p0

    move/from16 v9, p4

    move/from16 p4, v7

    move-object v7, v1

    move-object v1, v10

    move/from16 v24, v2

    move-object/from16 v27, v10

    move/from16 v10, p5

    move-object/from16 p5, v27

    move-object v2, v3

    move-object/from16 v25, v3

    move-object v3, v15

    move-object/from16 p3, v11

    move-object/from16 v26, v12

    const/4 v11, 0x2

    move-object v12, v4

    move/from16 v4, v24

    move/from16 v20, v5

    move/from16 v5, v23

    .line 305
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->guessX(Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;II)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 307
    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    move/from16 v2, v24

    goto :goto_9

    :cond_a
    :goto_7
    sub-int v2, v10, v24

    sub-int v0, v23, v10

    if-lt v2, v0, :cond_b

    add-int/lit8 v2, v24, 0x1

    goto :goto_8

    :cond_b
    add-int/lit8 v23, v23, -0x1

    move/from16 v2, v24

    :goto_8
    move-object/from16 v0, v16

    .line 326
    :goto_9
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_d

    sub-int v1, v23, v2

    const/4 v3, 0x1

    if-gt v1, v3, :cond_c

    goto :goto_a

    :cond_c
    move-object v0, v7

    move-object v4, v12

    move/from16 v5, v20

    move-object/from16 v3, v25

    move-object/from16 v12, v26

    move/from16 v7, p4

    move/from16 p4, v9

    move v9, v11

    move-object/from16 v11, p3

    move/from16 v27, v10

    move-object/from16 v10, p5

    move/from16 p5, v27

    goto :goto_6

    .line 328
    :cond_d
    :goto_a
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 330
    invoke-virtual {v8, v12}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v12, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    add-int/lit8 v2, v10, -0x1

    move v1, v2

    move v2, v10

    goto :goto_b

    :cond_e
    move v1, v2

    move/from16 v2, v23

    .line 336
    :goto_b
    iget-object v3, v6, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    move-object/from16 v3, p2

    move/from16 v5, p4

    .line 337
    invoke-interface {v3, v0}, Lorg/apache/commons/math3/dfp/UnivariateDfpFunction;->value(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 338
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v23

    if-eqz v23, :cond_f

    return-object v0

    :cond_f
    if-le v9, v11, :cond_10

    sub-int/2addr v2, v1

    if-eq v2, v9, :cond_10

    const/4 v11, 0x0

    .line 349
    invoke-static {v14, v1, v14, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    invoke-static {v15, v1, v15, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v1, v10, v1

    move/from16 v24, v19

    :goto_c
    move/from16 v27, v2

    move v2, v1

    move/from16 v1, v27

    goto :goto_e

    :cond_10
    const/4 v11, 0x0

    move/from16 v1, v19

    if-ne v9, v1, :cond_12

    add-int/lit8 v2, v9, -0x1

    const/4 v9, 0x2

    add-int/lit8 v19, v18, 0x2

    move/from16 v24, v1

    .line 359
    div-int/lit8 v1, v19, 0x2

    if-lt v10, v1, :cond_11

    const/4 v1, 0x1

    .line 361
    invoke-static {v14, v1, v14, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 362
    invoke-static {v15, v1, v15, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v10, -0x1

    goto :goto_c

    :cond_11
    move v1, v2

    goto :goto_d

    :cond_12
    move/from16 v24, v1

    move v1, v9

    :goto_d
    move v2, v10

    :goto_e
    add-int/lit8 v9, v2, 0x1

    sub-int v10, v1, v2

    .line 370
    invoke-static {v14, v2, v14, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 371
    aput-object v0, v14, v2

    .line 372
    invoke-static {v15, v2, v15, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 373
    aput-object v4, v15, v2

    const/4 v10, 0x1

    add-int/2addr v1, v10

    .line 377
    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    invoke-virtual {v10}, Lorg/apache/commons/math3/dfp/Dfp;->negativeOrNull()Z

    move-result v10

    if-eqz v10, :cond_13

    .line 381
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v8

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v9, p3

    move-object v13, v8

    move-object v8, v0

    move-object v0, v7

    move v7, v5

    move v5, v11

    move-object/from16 v27, v12

    move-object v12, v4

    move-object/from16 v4, v27

    goto :goto_f

    .line 388
    :cond_13
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    add-int/lit8 v5, v20, 0x1

    move v7, v11

    move-object/from16 v12, v26

    move-object/from16 v27, v4

    move-object v4, v0

    move-object/from16 v0, v27

    move/from16 v28, v9

    move-object v9, v2

    move/from16 v2, v28

    :goto_f
    move-object v11, v9

    move-object/from16 v9, v21

    move-object/from16 v10, v22

    move/from16 v19, v24

    move-object/from16 v3, v25

    goto/16 :goto_1

    :cond_14
    :goto_10
    move-object v7, v0

    move-object v12, v4

    move-object/from16 p3, v11

    .line 267
    sget-object v0, Lorg/apache/commons/math3/dfp/BracketingNthOrderBrentSolverDFP$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    invoke-virtual/range {p6 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_19

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17

    const/4 v1, 0x5

    if-ne v0, v1, :cond_16

    move-object/from16 v0, v17

    .line 277
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_15

    move-object v4, v8

    goto :goto_11

    :cond_15
    move-object v4, v12

    :goto_11
    return-object v4

    .line 280
    :cond_16
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_17
    move-object/from16 v0, v17

    .line 275
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_18

    move-object v4, v12

    goto :goto_12

    :cond_18
    move-object v4, v8

    :goto_12
    return-object v4

    :cond_19
    return-object v8

    :cond_1a
    return-object v12

    :cond_1b
    move-object/from16 v9, p3

    .line 269
    invoke-virtual {v9, v13}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_1c

    move-object v4, v12

    goto :goto_13

    :cond_1c
    move-object v4, v8

    :goto_13
    return-object v4

    :cond_1d
    move v11, v5

    .line 237
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    aget-object v1, v14, v11

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v8

    const/4 v1, 0x2

    aget-object v2, v14, v1

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v2

    aget-object v4, v15, v11

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v12

    aget-object v1, v15, v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v14

    move-object v7, v0

    move-wide v10, v2

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method
