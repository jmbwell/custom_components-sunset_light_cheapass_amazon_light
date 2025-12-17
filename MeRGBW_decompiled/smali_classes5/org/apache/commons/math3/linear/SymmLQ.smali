.class public Lorg/apache/commons/math3/linear/SymmLQ;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SymmLQ$State;
    }
.end annotation


# static fields
.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final VECTOR:Ljava/lang/String; = "vector"

.field private static final VECTOR1:Ljava/lang/String; = "vector1"

.field private static final VECTOR2:Ljava/lang/String; = "vector2"


# instance fields
.field private final check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0

    .line 871
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 872
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 873
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0

    .line 889
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 890
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 891
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 920
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 921
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 922
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 994
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 995
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 971
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 972
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move-wide v6, p5

    .line 973
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1010
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1011
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const-wide/16 v0, 0x0

    .line 1012
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .line 1013
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1076
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1056
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1057
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    invoke-direct {v4, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v5, p3

    move-wide v6, p4

    .line 1058
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1098
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v8, p4

    .line 1150
    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/SymmLQ;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/SymmLQ;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v9

    .line 1154
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 1155
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1158
    new-instance v5, Lorg/apache/commons/math3/linear/SymmLQ$State;

    iget-wide v0, v7, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    iget-boolean v2, v7, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    move-object v10, v5

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p5

    move-wide/from16 v15, p6

    move-wide/from16 v17, v0

    move/from16 v19, v2

    invoke-direct/range {v10 .. v19}, Lorg/apache/commons/math3/linear/SymmLQ$State;-><init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V

    .line 1159
    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->init()V

    .line 1160
    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1162
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v11

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    move-object v13, v5

    move-wide v5, v11

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1167
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->bEqualsNullVector()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1169
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object v8

    .line 1174
    :cond_0
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->betaEqualsZero()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 1175
    :goto_1
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    if-nez v0, :cond_4

    .line 1178
    :cond_3
    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1179
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1184
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1185
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->update()V

    .line 1186
    invoke-virtual {v13, v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1187
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object v0, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1192
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1193
    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    :cond_4
    new-instance v10, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v9}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v13}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1200
    invoke-virtual {v9, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    return-object v8
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .line 1219
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method
