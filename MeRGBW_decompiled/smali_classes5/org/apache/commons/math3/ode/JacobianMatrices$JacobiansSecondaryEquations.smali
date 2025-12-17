.class Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/SecondaryEquations;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JacobiansSecondaryEquations"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/JacobianMatrices;Lorg/apache/commons/math3/ode/JacobianMatrices$1;)V
    .locals 0

    .line 343
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;-><init>(Lorg/apache/commons/math3/ode/JacobianMatrices;)V

    return-void
.end method


# virtual methods
.method public computeDerivatives(D[D[D[D[D)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    .line 356
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$400(Lorg/apache/commons/math3/ode/JacobianMatrices;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v5

    iget-object v6, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v6}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$600(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/ParameterizedODE;

    move-result-object v6

    iget-object v7, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v7}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/commons/math3/ode/ParameterJacobianWrapper;-><init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;Lorg/apache/commons/math3/ode/ParameterizedODE;[Lorg/apache/commons/math3/ode/ParameterConfiguration;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2, v3}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$402(Lorg/apache/commons/math3/ode/JacobianMatrices;Z)Z

    .line 365
    :cond_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x1

    aput v4, v5, v6

    aput v2, v5, v3

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 366
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$500(Lorg/apache/commons/math3/ode/JacobianMatrices;)Lorg/apache/commons/math3/ode/MainStateJacobianProvider;

    move-result-object v7

    move-wide/from16 v8, p1

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object v12, v2

    invoke-interface/range {v7 .. v12}, Lorg/apache/commons/math3/ode/MainStateJacobianProvider;->computeMainStateJacobian(D[D[D[[D)V

    move v4, v3

    .line 369
    :goto_0
    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    const-wide/16 v7, 0x0

    if-ge v4, v5, :cond_3

    .line 370
    aget-object v5, v2, v4

    move v9, v3

    .line 371
    :goto_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v10

    if-ge v9, v10, :cond_2

    move v10, v3

    move-wide v11, v7

    move v13, v9

    .line 375
    :goto_2
    iget-object v14, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v14}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v14

    if-ge v10, v14, :cond_1

    .line 376
    aget-wide v14, v5, v10

    aget-wide v16, p5, v13

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    .line 377
    iget-object v14, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v14}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v14

    add-int/2addr v13, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 379
    :cond_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v10

    mul-int/2addr v10, v4

    add-int/2addr v10, v9

    aput-wide v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 383
    :cond_3
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    if-eqz v4, :cond_9

    .line 385
    iget-object v4, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v4}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v4

    new-array v4, v4, [D

    .line 386
    iget-object v5, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v5}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v5

    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    mul-int/2addr v5, v9

    .line 387
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$700(Lorg/apache/commons/math3/ode/JacobianMatrices;)[Lorg/apache/commons/math3/ode/ParameterConfiguration;

    move-result-object v15

    array-length v14, v15

    move v13, v3

    :goto_3
    if-ge v13, v14, :cond_9

    aget-object v16, v15, v13

    move v9, v3

    move v12, v9

    :goto_4
    if-nez v9, :cond_7

    .line 389
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v12, v10, :cond_7

    .line 390
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$800(Lorg/apache/commons/math3/ode/JacobianMatrices;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;

    .line 391
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->isSupported(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 392
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/ParameterConfiguration;->getParameterName()Ljava/lang/String;

    move-result-object v17

    move-object v9, v10

    move-wide/from16 v10, p1

    move/from16 v18, v12

    move-object/from16 v12, p3

    move/from16 v19, v13

    move-object/from16 v13, p4

    move/from16 v20, v14

    move-object/from16 v14, v17

    move-object/from16 v17, v15

    move-object v15, v4

    invoke-interface/range {v9 .. v15}, Lorg/apache/commons/math3/ode/ParameterJacobianProvider;->computeParameterJacobian(D[D[DLjava/lang/String;[D)V

    move v9, v3

    .line 394
    :goto_5
    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v10}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 395
    aget-object v10, v2, v9

    .line 397
    aget-wide v11, v4, v9

    move v13, v3

    move v14, v5

    .line 398
    :goto_6
    iget-object v15, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v15}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v15

    if-ge v13, v15, :cond_4

    .line 399
    aget-wide v21, v10, v13

    aget-wide v23, p5, v14

    mul-double v21, v21, v23

    add-double v11, v11, v21

    add-int/2addr v14, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_4
    add-int v10, v5, v9

    .line 402
    aput-wide v11, v1, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_5
    move v9, v6

    goto :goto_7

    :cond_6
    move/from16 v18, v12

    move/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v17, v15

    :goto_7
    add-int/lit8 v12, v18, 0x1

    move-object/from16 v15, v17

    move/from16 v13, v19

    move/from16 v14, v20

    goto :goto_4

    :cond_7
    move/from16 v19, v13

    move/from16 v20, v14

    move-object/from16 v17, v15

    if-nez v9, :cond_8

    .line 408
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    add-int/2addr v9, v5

    invoke-static {v1, v5, v9, v7, v8}, Ljava/util/Arrays;->fill([DIID)V

    .line 410
    :cond_8
    iget-object v9, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v9}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v9

    add-int/2addr v5, v9

    add-int/lit8 v13, v19, 0x1

    move-object/from16 v15, v17

    move/from16 v14, v20

    goto/16 :goto_3

    :cond_9
    return-void
.end method

.method public getDimension()I
    .locals 3

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v0}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v1}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$200(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$JacobiansSecondaryEquations;->this$0:Lorg/apache/commons/math3/ode/JacobianMatrices;

    invoke-static {v2}, Lorg/apache/commons/math3/ode/JacobianMatrices;->access$300(Lorg/apache/commons/math3/ode/JacobianMatrices;)I

    move-result v2

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
