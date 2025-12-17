.class public Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
.super Ljava/lang/Object;
.source "DSCompiler.java"


# static fields
.field private static compilers:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "[[",
            "Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final compIndirection:[[[I

.field private final derivativesIndirection:[[I

.field private final lowerIndirection:[I

.field private final multIndirection:[[[I

.field private final order:I

.field private final parameters:I

.field private final sizes:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 130
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    iput p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    .line 166
    iput p2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    .line 167
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    .line 168
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    .line 171
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    .line 174
    invoke-static {p1, p2, p3, p4, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    move v0, p1

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    .line 177
    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    return-void
.end method

.method private static compileCompositionIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[[I[[I)[[[I
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    move/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v6, :cond_e

    if-nez v7, :cond_0

    goto/16 :goto_a

    :cond_0
    move-object/from16 v0, p2

    .line 421
    iget-object v0, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v12, v0

    .line 422
    iget-object v1, v8, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v13, v1

    add-int v1, v12, v13

    .line 423
    new-array v14, v1, [[[I

    .line 426
    invoke-static {v0, v10, v14, v10, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v15, v10

    :goto_0
    if-ge v15, v13, :cond_d

    .line 433
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 434
    iget-object v0, v8, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    aget-object v4, v0, v15

    array-length v3, v4

    move v2, v10

    :goto_1
    if-ge v2, v3, :cond_5

    aget-object v1, v4, v2

    .line 439
    array-length v0, v1

    add-int/2addr v0, v11

    new-array v11, v0, [I

    .line 440
    aget v17, v1, v10

    aput v17, v11, v10

    const/16 v16, 0x1

    .line 441
    aget v17, v1, v16

    add-int/lit8 v17, v17, 0x1

    aput v17, v11, v16

    .line 442
    new-array v10, v6, [I

    add-int/lit8 v18, v6, -0x1

    .line 443
    aput v16, v10, v18

    move/from16 p2, v0

    .line 444
    array-length v0, v1

    invoke-static {v6, v7, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v19

    aput v19, v11, v0

    move/from16 v19, v13

    const/4 v13, 0x2

    .line 445
    :goto_2
    array-length v0, v1

    if-ge v13, v0, :cond_1

    .line 448
    aget v0, v1, v13

    move/from16 v21, v2

    iget-object v2, v8, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v20, v12

    move-object/from16 v22, v14

    const/4 v14, 0x2

    move/from16 v12, p2

    move-object/from16 v23, v1

    move/from16 v1, p0

    move/from16 v24, v3

    move/from16 v3, p0

    move-object/from16 v25, v4

    move/from16 v4, p1

    move-object/from16 v26, v5

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v11, v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v20

    move/from16 v2, v21

    move-object/from16 v14, v22

    move-object/from16 v1, v23

    move/from16 v3, v24

    move-object/from16 v4, v25

    move-object/from16 v5, v26

    goto :goto_2

    :cond_1
    move-object/from16 v23, v1

    move/from16 v21, v2

    move/from16 v24, v3

    move-object/from16 v25, v4

    move-object/from16 v26, v5

    move/from16 v20, v12

    move-object/from16 v22, v14

    const/4 v14, 0x2

    move/from16 v12, p2

    .line 452
    invoke-static {v11, v14, v12}, Ljava/util/Arrays;->sort([III)V

    move-object/from16 v12, v26

    .line 453
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v14

    move-object/from16 v13, v23

    .line 456
    :goto_3
    array-length v0, v13

    if-ge v11, v0, :cond_4

    .line 457
    array-length v5, v13

    new-array v4, v5, [I

    const/4 v0, 0x0

    .line 458
    aget v1, v13, v0

    aput v1, v4, v0

    const/4 v0, 0x1

    .line 459
    aget v1, v13, v0

    aput v1, v4, v0

    move v3, v14

    .line 460
    :goto_4
    array-length v0, v13

    if-ge v3, v0, :cond_3

    .line 463
    aget v0, v13, v3

    iget-object v2, v8, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    move/from16 v1, p0

    move v14, v3

    move/from16 v3, p0

    move-object v8, v4

    move/from16 v4, p1

    move-object/from16 v26, v13

    move v13, v5

    move-object/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->convertIndex(II[[III[[I)I

    move-result v0

    aput v0, v8, v14

    if-ne v14, v11, :cond_2

    .line 468
    aget-object v0, p5, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v10, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 469
    aget v0, v10, v18

    const/4 v1, 0x1

    add-int/2addr v0, v1

    aput v0, v10, v18

    .line 470
    invoke-static {v6, v7, v9, v10}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result v0

    aput v0, v8, v14

    :cond_2
    add-int/lit8 v3, v14, 0x1

    move-object v4, v8

    move v5, v13

    move-object/from16 v13, v26

    const/4 v14, 0x2

    move-object/from16 v8, p3

    goto :goto_4

    :cond_3
    move-object v8, v4

    move-object/from16 v26, v13

    move v0, v14

    move v13, v5

    .line 473
    invoke-static {v8, v0, v13}, Ljava/util/Arrays;->sort([III)V

    .line 474
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v8, p3

    move-object/from16 v13, v26

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v21, 0x1

    move-object/from16 v8, p3

    move-object v5, v12

    move/from16 v13, v19

    move/from16 v12, v20

    move-object/from16 v14, v22

    move/from16 v3, v24

    move-object/from16 v4, v25

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_5
    move/from16 v20, v12

    move/from16 v19, v13

    move-object/from16 v22, v14

    move-object v12, v5

    .line 480
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 481
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 482
    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v3, 0x0

    .line 483
    aget v4, v2, v3

    if-lez v4, :cond_b

    add-int/lit8 v3, v1, 0x1

    .line 484
    :goto_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 485
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 486
    array-length v5, v2

    array-length v8, v4

    if-ne v5, v8, :cond_6

    const/4 v5, 0x1

    goto :goto_7

    :cond_6
    const/4 v5, 0x0

    :goto_7
    const/4 v8, 0x1

    :goto_8
    if-eqz v5, :cond_8

    .line 487
    array-length v10, v2

    if-ge v8, v10, :cond_8

    .line 488
    aget v10, v2, v8

    aget v11, v4, v8

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    goto :goto_9

    :cond_7
    const/4 v10, 0x0

    :goto_9
    and-int/2addr v5, v10

    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    :cond_8
    if-eqz v5, :cond_9

    const/4 v5, 0x0

    .line 492
    aget v8, v2, v5

    aget v10, v4, v5

    add-int/2addr v8, v10

    aput v8, v2, v5

    .line 494
    aput v5, v4, v5

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 497
    :cond_a
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_c
    add-int v12, v20, v15

    .line 501
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [[I

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    aput-object v0, v22, v12

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v8, p3

    move/from16 v13, v19

    move/from16 v12, v20

    move-object/from16 v14, v22

    const/4 v10, 0x0

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_d
    move-object/from16 v22, v14

    return-object v22

    :cond_e
    :goto_a
    move v0, v11

    .line 418
    new-array v1, v0, [[I

    const/4 v2, 0x0

    filled-new-array {v0, v2}, [I

    move-result-object v3

    aput-object v3, v1, v2

    new-array v0, v0, [[[I

    aput-object v1, v0, v2

    return-object v0
.end method

.method private static compileDerivativesIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 8

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_2

    .line 271
    :cond_0
    iget-object p1, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length p1, p1

    .line 272
    iget-object v3, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    array-length v3, v3

    add-int v4, p1, v3

    .line 273
    new-array v0, v0, [I

    aput p0, v0, v2

    aput v4, v0, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v4, v1

    :goto_0
    if-ge v4, p1, :cond_1

    .line 278
    iget-object v5, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v5, v5, v4

    aget-object v6, v0, v4

    add-int/lit8 v7, p0, -0x1

    invoke-static {v5, v1, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_1
    if-ge p2, v3, :cond_2

    .line 287
    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object v4, v4, p2

    add-int v5, p1, p2

    aget-object v6, v0, v5

    invoke-static {v4, v1, v6, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    aget-object v4, v0, v5

    add-int/lit8 v5, p0, -0x1

    aget v6, v4, v5

    add-int/2addr v6, v2

    aput v6, v4, v5

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object v0

    .line 268
    :cond_3
    :goto_2
    new-array p1, v0, [I

    aput p0, p1, v2

    aput v2, p1, v1

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    return-object p0
.end method

.method private static compileLowerIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[I
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    if-gt p1, p0, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    iget-object p0, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length p1, p0

    .line 321
    iget-object v1, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    array-length v1, v1

    add-int v2, p1, v1

    .line 322
    new-array v2, v2, [I

    .line 323
    invoke-static {p0, v0, v2, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-ge v0, v1, :cond_1

    add-int p0, p1, v0

    .line 325
    invoke-virtual {p2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v3

    iget-object v4, p3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->lowerIndirection:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    aput v3, v2, p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 316
    :cond_2
    :goto_1
    filled-new-array {v0}, [I

    move-result-object p0

    return-object p0
.end method

.method private static compileMultiplicationIndirection(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;[I)[[[I
    .locals 16

    move-object/from16 v0, p3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    move-object/from16 v3, p2

    .line 355
    iget-object v3, v3, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v4, v3

    .line 356
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v5, v5

    add-int v6, v4, v5

    .line 357
    new-array v6, v6, [[[I

    .line 359
    invoke-static {v3, v2, v6, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_6

    .line 362
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    aget-object v7, v7, v3

    .line 363
    new-instance v8, Ljava/util/ArrayList;

    array-length v9, v7

    const/4 v10, 0x2

    mul-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v2

    .line 364
    :goto_1
    array-length v11, v7

    if-ge v9, v11, :cond_1

    .line 365
    aget-object v11, v7, v9

    aget v12, v11, v2

    aget v13, v11, v1

    aget v13, p4, v13

    aget v11, v11, v10

    add-int/2addr v11, v4

    filled-new-array {v12, v13, v11}, [I

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    aget-object v11, v7, v9

    aget v12, v11, v2

    aget v13, v11, v1

    add-int/2addr v13, v4

    aget v11, v11, v10

    aget v11, p4, v11

    filled-new-array {v12, v13, v11}, [I

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 370
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v9, v2

    .line 371
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-ge v9, v11, :cond_5

    .line 372
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    .line 373
    aget v12, v11, v2

    if-lez v12, :cond_4

    add-int/lit8 v12, v9, 0x1

    .line 374
    :goto_3
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v12, v13, :cond_3

    .line 375
    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [I

    .line 376
    aget v14, v11, v1

    aget v15, v13, v1

    if-ne v14, v15, :cond_2

    aget v14, v11, v10

    aget v15, v13, v10

    if-ne v14, v15, :cond_2

    .line 378
    aget v14, v11, v2

    aget v15, v13, v2

    add-int/2addr v14, v15

    aput v14, v11, v2

    .line 380
    aput v2, v13, v2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 383
    :cond_3
    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_5
    add-int v8, v4, v3

    .line 387
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [[I

    invoke-interface {v7, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[I

    aput-object v7, v6, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v6

    .line 351
    :cond_7
    :goto_4
    new-array v0, v1, [[I

    filled-new-array {v1, v2, v2}, [I

    move-result-object v3

    aput-object v3, v0, v2

    new-array v1, v1, [[[I

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static compileSizes(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;)[[I
    .locals 5

    add-int/lit8 v0, p0, 0x1

    add-int/lit8 v1, p1, 0x1

    const/4 v2, 0x2

    .line 241
    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    if-nez p0, :cond_0

    .line 243
    aget-object p0, v0, v1

    invoke-static {p0, v3}, Ljava/util/Arrays;->fill([II)V

    goto :goto_1

    .line 245
    :cond_0
    iget-object p2, p2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {p2, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 246
    aget-object p2, v0, p0

    aput v3, p2, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 248
    aget-object p2, v0, p0

    add-int/lit8 v2, v1, 0x1

    aget v1, p2, v1

    add-int/lit8 v4, p0, -0x1

    aget-object v4, v0, v4

    aget v4, v4, v2

    add-int/2addr v1, v4

    aput v1, p2, v2

    move v1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method private static convertIndex(II[[III[[I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 612
    new-array v0, p3, [I

    .line 613
    aget-object p0, p2, p0

    const/4 p2, 0x0

    invoke-static {p1, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    invoke-static {p0, p2, v0, p2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    invoke-static {p3, p4, p5, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result p0

    return p0
.end method

.method public static getCompiler(II)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 194
    sget-object v0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    if-eqz v0, :cond_0

    .line 195
    array-length v1, v0

    if-le v1, p0, :cond_0

    aget-object v1, v0, p0

    array-length v2, v1

    if-le v2, p1, :cond_0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    move v2, v1

    goto :goto_0

    .line 202
    :cond_1
    array-length v2, v0

    :goto_0
    invoke-static {p0, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    if-nez v0, :cond_2

    move v3, v1

    goto :goto_1

    .line 203
    :cond_2
    aget-object v3, v0, v1

    array-length v3, v3

    :goto_1
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v2, v4

    add-int/2addr v3, v4

    const/4 v5, 0x2

    .line 204
    new-array v5, v5, [I

    aput v3, v5, v4

    aput v2, v5, v1

    const-class v2, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-static {v2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    if-eqz v0, :cond_3

    move v3, v1

    .line 208
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 209
    aget-object v4, v0, v3

    aget-object v5, v2, v3

    array-length v6, v4

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_3
    add-int v4, p0, p1

    if-gt v3, v4, :cond_8

    sub-int v4, v3, p0

    .line 215
    invoke-static {v1, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_4
    invoke-static {p1, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_7

    sub-int v5, v3, v4

    .line 217
    aget-object v6, v2, v5

    aget-object v7, v6, v4

    if-nez v7, :cond_6

    const/4 v7, 0x0

    if-nez v5, :cond_4

    move-object v8, v7

    goto :goto_5

    :cond_4
    add-int/lit8 v8, v5, -0x1

    .line 218
    aget-object v8, v2, v8

    aget-object v8, v8, v4

    :goto_5
    if-nez v4, :cond_5

    goto :goto_6

    :cond_5
    add-int/lit8 v7, v4, -0x1

    .line 219
    aget-object v7, v6, v7

    .line 220
    :goto_6
    new-instance v9, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    invoke-direct {v9, v5, v4, v8, v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;-><init>(IILorg/apache/commons/math3/analysis/differentiation/DSCompiler;Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V

    aput-object v9, v6, v4

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 226
    :cond_8
    sget-object v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compilers:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v1, v0, v2}, Landroidx/lifecycle/AtomicReference$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    aget-object p0, v2, p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method private static varargs getPartialDerivativeIndex(II[[I[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    const/4 v1, 0x0

    move v3, p1

    move v2, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 575
    aget v4, p3, p0

    add-int/2addr v2, v4

    if-gt v2, p1, :cond_1

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-lez v4, :cond_0

    .line 587
    aget-object v4, p2, p0

    add-int/lit8 v6, v3, -0x1

    aget v3, v4, v3

    add-int/2addr v1, v3

    move v4, v5

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 580
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    return v1
.end method


# virtual methods
.method public acos([DI[DI)V
    .locals 24

    move-object/from16 v6, p0

    .line 1264
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1265
    aget-wide v4, p1, p2

    .line 1266
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acos(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1267
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1275
    new-array v2, v2, [D

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 1276
    aput-wide v7, v2, v0

    mul-double v7, v4, v4

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v11, v9, v7

    div-double/2addr v9, v11

    .line 1279
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1280
    aget-wide v13, v2, v0

    mul-double/2addr v13, v11

    aput-wide v13, v3, v1

    const/4 v13, 0x2

    move v14, v13

    .line 1281
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    int-to-double v0, v15

    add-int/lit8 v16, v14, -0x2

    .line 1285
    aget-wide v16, v2, v16

    mul-double v0, v0, v16

    aput-wide v0, v2, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v7

    .line 1287
    aget-wide v16, v2, v15

    add-double v0, v0, v16

    if-le v15, v13, :cond_0

    add-int/lit8 v16, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v18, v0

    int-to-double v0, v13

    .line 1289
    aget-wide v20, v2, v13

    mul-double v0, v0, v20

    mul-int/lit8 v13, v14, 0x2

    sub-int/2addr v13, v15

    move-wide/from16 v20, v7

    int-to-double v6, v13

    add-int/lit8 v8, v15, -0x3

    aget-wide v22, v2, v8

    mul-double v6, v6, v22

    add-double/2addr v0, v6

    aput-wide v0, v2, v16

    const/4 v6, 0x2

    const/4 v7, 0x1

    goto :goto_2

    :cond_0
    move-wide/from16 v18, v0

    move-wide/from16 v20, v7

    move v6, v13

    const/4 v7, 0x1

    if-ne v15, v6, :cond_1

    .line 1291
    aget-wide v0, v2, v7

    const/4 v8, 0x0

    aput-wide v0, v2, v8

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v8, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move v13, v6

    move-wide/from16 v0, v18

    move-wide/from16 v7, v20

    move-object/from16 v6, p0

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v7

    move v6, v13

    const/4 v7, 0x1

    const/4 v8, 0x0

    and-int/lit8 v13, v14, 0x1

    if-nez v13, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v11, v9

    mul-double/2addr v0, v11

    .line 1299
    aput-wide v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    move v13, v6

    move v1, v7

    move v0, v8

    move-wide/from16 v7, v20

    move-object/from16 v6, p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1305
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public acosh([DI[DI)V
    .locals 24

    move-object/from16 v6, p0

    .line 1593
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1594
    aget-wide v4, p1, p2

    .line 1595
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->acosh(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1596
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1604
    new-array v2, v2, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1605
    aput-wide v7, v2, v0

    mul-double v9, v4, v4

    sub-double v11, v9, v7

    div-double/2addr v7, v11

    .line 1608
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1609
    aget-wide v13, v2, v0

    mul-double/2addr v13, v11

    aput-wide v13, v3, v1

    const/4 v13, 0x2

    move v14, v13

    .line 1610
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    rsub-int/lit8 v0, v14, 0x1

    move-object/from16 v16, v2

    int-to-double v1, v0

    add-int/lit8 v0, v14, -0x2

    .line 1614
    aget-wide v17, v16, v0

    mul-double v1, v1, v17

    aput-wide v1, v16, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v9

    .line 1616
    aget-wide v17, v16, v15

    add-double v0, v0, v17

    if-le v15, v13, :cond_0

    add-int/lit8 v2, v15, -0x2

    rsub-int/lit8 v13, v15, 0x1

    move-wide/from16 v18, v0

    int-to-double v0, v13

    add-int/lit8 v13, v15, -0x1

    .line 1618
    aget-wide v20, v16, v13

    mul-double v0, v0, v20

    mul-int/lit8 v13, v14, 0x2

    sub-int v13, v15, v13

    move-wide/from16 v20, v9

    int-to-double v9, v13

    add-int/lit8 v13, v15, -0x3

    aget-wide v22, v16, v13

    mul-double v9, v9, v22

    add-double/2addr v0, v9

    aput-wide v0, v16, v2

    const/4 v2, 0x2

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    move v2, v13

    const/4 v9, 0x1

    if-ne v15, v2, :cond_1

    .line 1620
    aget-wide v0, v16, v9

    neg-double v0, v0

    const/4 v10, 0x0

    aput-wide v0, v16, v10

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move v13, v2

    move-wide/from16 v0, v18

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v9

    move v2, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    and-int/lit8 v13, v14, 0x1

    if-nez v13, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v11, v7

    mul-double/2addr v0, v11

    .line 1628
    aput-wide v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    move v13, v2

    move v1, v9

    move v0, v10

    move-object/from16 v2, v16

    move-wide/from16 v9, v20

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1634
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public add([DI[DI[DI)V
    .locals 6

    const/4 v0, 0x0

    .line 746
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v2, p2, v0

    .line 747
    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public asin([DI[DI)V
    .locals 24

    move-object/from16 v6, p0

    .line 1321
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1322
    aget-wide v4, p1, p2

    .line 1323
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asin(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1324
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1332
    new-array v2, v2, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1333
    aput-wide v7, v2, v0

    mul-double v9, v4, v4

    sub-double v11, v7, v9

    div-double/2addr v7, v11

    .line 1336
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1337
    aget-wide v13, v2, v0

    mul-double/2addr v13, v11

    aput-wide v13, v3, v1

    const/4 v13, 0x2

    move v14, v13

    .line 1338
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    int-to-double v0, v15

    add-int/lit8 v16, v14, -0x2

    .line 1342
    aget-wide v16, v2, v16

    mul-double v0, v0, v16

    aput-wide v0, v2, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v9

    .line 1344
    aget-wide v16, v2, v15

    add-double v0, v0, v16

    if-le v15, v13, :cond_0

    add-int/lit8 v16, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v18, v0

    int-to-double v0, v13

    .line 1346
    aget-wide v20, v2, v13

    mul-double v0, v0, v20

    mul-int/lit8 v13, v14, 0x2

    sub-int/2addr v13, v15

    move-wide/from16 v20, v9

    int-to-double v9, v13

    add-int/lit8 v13, v15, -0x3

    aget-wide v22, v2, v13

    mul-double v9, v9, v22

    add-double/2addr v0, v9

    aput-wide v0, v2, v16

    const/4 v9, 0x2

    const/4 v10, 0x1

    goto :goto_2

    :cond_0
    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    move v9, v13

    const/4 v10, 0x1

    if-ne v15, v9, :cond_1

    .line 1348
    aget-wide v0, v2, v10

    const/4 v13, 0x0

    aput-wide v0, v2, v13

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v13, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move v13, v9

    move-wide/from16 v0, v18

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v9

    move v9, v13

    const/4 v10, 0x1

    const/4 v13, 0x0

    and-int/lit8 v15, v14, 0x1

    if-nez v15, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v11, v7

    mul-double/2addr v0, v11

    .line 1356
    aput-wide v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    move v1, v10

    move v0, v13

    move v13, v9

    move-wide/from16 v9, v20

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1362
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public asinh([DI[DI)V
    .locals 24

    move-object/from16 v6, p0

    .line 1650
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1651
    aget-wide v4, p1, p2

    .line 1652
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->asinh(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1653
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1661
    new-array v2, v2, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1662
    aput-wide v7, v2, v0

    mul-double v9, v4, v4

    add-double v11, v9, v7

    div-double/2addr v7, v11

    .line 1665
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 1666
    aget-wide v13, v2, v0

    mul-double/2addr v13, v11

    aput-wide v13, v3, v1

    const/4 v13, 0x2

    move v14, v13

    .line 1667
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v14, v15, :cond_4

    add-int/lit8 v15, v14, -0x1

    rsub-int/lit8 v0, v14, 0x1

    move-object/from16 v16, v2

    int-to-double v1, v0

    add-int/lit8 v0, v14, -0x2

    .line 1671
    aget-wide v17, v16, v0

    mul-double v1, v1, v17

    aput-wide v1, v16, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v9

    .line 1673
    aget-wide v17, v16, v15

    add-double v0, v0, v17

    if-le v15, v13, :cond_0

    add-int/lit8 v2, v15, -0x2

    add-int/lit8 v13, v15, -0x1

    move-wide/from16 v18, v0

    int-to-double v0, v13

    .line 1675
    aget-wide v20, v16, v13

    mul-double v0, v0, v20

    mul-int/lit8 v13, v14, 0x2

    sub-int v13, v15, v13

    move-wide/from16 v20, v9

    int-to-double v9, v13

    add-int/lit8 v13, v15, -0x3

    aget-wide v22, v16, v13

    mul-double v9, v9, v22

    add-double/2addr v0, v9

    aput-wide v0, v16, v2

    const/4 v2, 0x2

    const/4 v9, 0x1

    goto :goto_2

    :cond_0
    move-wide/from16 v18, v0

    move-wide/from16 v20, v9

    move v2, v13

    const/4 v9, 0x1

    if-ne v15, v2, :cond_1

    .line 1677
    aget-wide v0, v16, v9

    const/4 v10, 0x0

    aput-wide v0, v16, v10

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v10, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move v13, v2

    move-wide/from16 v0, v18

    move-wide/from16 v9, v20

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v9

    move v2, v13

    const/4 v9, 0x1

    const/4 v10, 0x0

    and-int/lit8 v13, v14, 0x1

    if-nez v13, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v11, v7

    mul-double/2addr v0, v11

    .line 1685
    aput-wide v0, v3, v14

    add-int/lit8 v14, v14, 0x1

    move v13, v2

    move v1, v9

    move v0, v10

    move-object/from16 v2, v16

    move-wide/from16 v9, v20

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1691
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public atan([DI[DI)V
    .locals 22

    move-object/from16 v6, p0

    .line 1378
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1379
    aget-wide v4, p1, p2

    .line 1380
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1381
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1389
    new-array v2, v2, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1390
    aput-wide v7, v2, v0

    mul-double v9, v4, v4

    add-double v11, v9, v7

    div-double v11, v7, v11

    mul-double/2addr v7, v11

    .line 1394
    aput-wide v7, v3, v1

    const/4 v7, 0x2

    move v8, v7

    move-wide v13, v11

    .line 1395
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    neg-int v0, v8

    move-object/from16 v16, v2

    int-to-double v1, v0

    add-int/lit8 v0, v8, -0x2

    .line 1399
    aget-wide v17, v16, v0

    mul-double v1, v1, v17

    aput-wide v1, v16, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v9

    .line 1401
    aget-wide v17, v16, v15

    add-double v0, v0, v17

    if-le v15, v7, :cond_0

    add-int/lit8 v2, v15, -0x2

    add-int/lit8 v7, v15, -0x1

    move-wide/from16 v18, v0

    int-to-double v0, v7

    .line 1403
    aget-wide v20, v16, v7

    mul-double v0, v0, v20

    mul-int/lit8 v20, v8, 0x2

    sub-int v7, v7, v20

    int-to-double v6, v7

    add-int/lit8 v20, v15, -0x3

    aget-wide v20, v16, v20

    mul-double v6, v6, v20

    add-double/2addr v0, v6

    aput-wide v0, v16, v2

    const/4 v2, 0x2

    const/4 v6, 0x1

    goto :goto_2

    :cond_0
    move-wide/from16 v18, v0

    move v2, v7

    const/4 v6, 0x1

    if-ne v15, v2, :cond_1

    .line 1405
    aget-wide v0, v16, v6

    const/4 v7, 0x0

    aput-wide v0, v16, v7

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move-object/from16 v6, p0

    move v7, v2

    move-wide/from16 v0, v18

    goto :goto_1

    :cond_2
    move v2, v7

    const/4 v6, 0x1

    const/4 v7, 0x0

    and-int/lit8 v15, v8, 0x1

    if-nez v15, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v13, v11

    mul-double/2addr v0, v13

    .line 1413
    aput-wide v0, v3, v8

    add-int/lit8 v8, v8, 0x1

    move v1, v6

    move v0, v7

    move-object/from16 v6, p0

    move v7, v2

    move-object/from16 v2, v16

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1419
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public atan2([DI[DI[DI)V
    .locals 16

    move-object/from16 v7, p0

    .line 1438
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v8, v0, [D

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v8

    .line 1439
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 1440
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v9

    new-array v10, v9, [D

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object v5, v10

    .line 1441
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    move-object v1, v8

    move-object v3, v10

    .line 1442
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    const/4 v3, 0x2

    const/4 v5, 0x0

    move-object v1, v10

    move-object v4, v8

    .line 1443
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->rootN([DII[DI)V

    .line 1445
    aget-wide v0, p3, p4

    const-wide/16 v11, 0x0

    cmpl-double v0, v0, v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    const/4 v15, 0x0

    if-ltz v0, :cond_0

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v10

    .line 1448
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->add([DI[DI[DI)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v10

    move-object v5, v8

    .line 1449
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1450
    invoke-virtual {v7, v8, v15, v10, v15}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    :goto_0
    if-ge v15, v9, :cond_2

    add-int v0, p6, v15

    .line 1452
    aget-wide v1, v10, v15

    mul-double/2addr v1, v13

    aput-wide v1, p5, v0

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v10

    .line 1458
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->subtract([DI[DI[DI)V

    const/4 v4, 0x0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object v3, v10

    move-object v5, v8

    .line 1459
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->divide([DI[DI[DI)V

    .line 1460
    invoke-virtual {v7, v8, v15, v10, v15}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->atan([DI[DI)V

    .line 1461
    aget-wide v0, v10, v15

    cmpg-double v2, v0, v11

    if-gtz v2, :cond_1

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_1

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    :goto_1
    mul-double/2addr v0, v13

    sub-double/2addr v2, v0

    aput-wide v2, p5, p6

    const/4 v0, 0x1

    :goto_2
    if-ge v0, v9, :cond_2

    add-int v1, p6, v0

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    .line 1464
    aget-wide v4, v10, v0

    mul-double/2addr v4, v2

    aput-wide v4, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1470
    :cond_2
    aget-wide v0, p1, p2

    aget-wide v2, p3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    aput-wide v0, p5, p6

    return-void
.end method

.method public atanh([DI[DI)V
    .locals 23

    move-object/from16 v6, p0

    .line 1707
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1708
    aget-wide v4, p1, p2

    .line 1709
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->atanh(D)D

    move-result-wide v7

    const/4 v0, 0x0

    aput-wide v7, v3, v0

    .line 1710
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    .line 1718
    new-array v2, v2, [D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 1719
    aput-wide v7, v2, v0

    mul-double v9, v4, v4

    sub-double v11, v7, v9

    div-double v11, v7, v11

    mul-double/2addr v7, v11

    .line 1723
    aput-wide v7, v3, v1

    const/4 v7, 0x2

    move v8, v7

    move-wide v13, v11

    .line 1724
    :goto_0
    iget v15, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v8, v15, :cond_4

    add-int/lit8 v15, v8, -0x1

    int-to-double v0, v8

    add-int/lit8 v17, v8, -0x2

    .line 1728
    aget-wide v17, v2, v17

    mul-double v0, v0, v17

    aput-wide v0, v2, v15

    const-wide/16 v0, 0x0

    :goto_1
    if-ltz v15, :cond_2

    mul-double/2addr v0, v9

    .line 1730
    aget-wide v17, v2, v15

    add-double v0, v0, v17

    if-le v15, v7, :cond_0

    add-int/lit8 v17, v15, -0x2

    add-int/lit8 v7, v15, -0x1

    move-wide/from16 v19, v0

    int-to-double v0, v7

    .line 1732
    aget-wide v21, v2, v7

    mul-double v0, v0, v21

    mul-int/lit8 v7, v8, 0x2

    sub-int/2addr v7, v15

    const/16 v16, 0x1

    add-int/lit8 v7, v7, 0x1

    int-to-double v6, v7

    add-int/lit8 v21, v15, -0x3

    aget-wide v21, v2, v21

    mul-double v6, v6, v21

    add-double/2addr v0, v6

    aput-wide v0, v2, v17

    const/4 v6, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v19, v0

    move v6, v7

    const/16 v16, 0x1

    if-ne v15, v6, :cond_1

    .line 1734
    aget-wide v0, v2, v16

    const/4 v7, 0x0

    aput-wide v0, v2, v7

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v15, v15, -0x2

    move v7, v6

    move-wide/from16 v0, v19

    move-object/from16 v6, p0

    goto :goto_1

    :cond_2
    move v6, v7

    const/4 v7, 0x0

    const/16 v16, 0x1

    and-int/lit8 v15, v8, 0x1

    if-nez v15, :cond_3

    mul-double/2addr v0, v4

    :cond_3
    mul-double/2addr v13, v11

    mul-double/2addr v0, v13

    .line 1742
    aput-wide v0, v3, v8

    add-int/lit8 v8, v8, 0x1

    move v0, v7

    move/from16 v1, v16

    move v7, v6

    move-object/from16 v6, p0

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1748
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public checkCompatibility(Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1814
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    if-ne v0, v1, :cond_1

    .line 1817
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget v1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-ne v0, v1, :cond_0

    return-void

    .line 1818
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 1815
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget p1, p1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public compose([DI[D[DI)V
    .locals 13

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v0

    .line 1764
    :goto_0
    iget-object v3, v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compIndirection:[[[I

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1765
    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v0

    .line 1767
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 1768
    aget-object v7, v3, v6

    .line 1769
    aget v8, v7, v0

    int-to-double v8, v8

    const/4 v10, 0x1

    aget v10, v7, v10

    aget-wide v10, p3, v10

    mul-double/2addr v8, v10

    const/4 v10, 0x2

    .line 1770
    :goto_2
    array-length v11, v7

    if-ge v10, v11, :cond_0

    .line 1771
    aget v11, v7, v10

    add-int/2addr v11, p2

    aget-wide v11, p1, v11

    mul-double/2addr v8, v11

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int v3, p5, v2

    .line 1775
    aput-wide v4, p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public cos([DI[DI)V
    .locals 8

    .line 1157
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1158
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1159
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1160
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1161
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1162
    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1167
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public cosh([DI[DI)V
    .locals 8

    .line 1486
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1487
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1488
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1489
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1490
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1491
    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1496
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public divide([DI[DI[DI)V
    .locals 7

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p4

    new-array p4, p4, [D

    const/4 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move v2, p2

    move-object v4, p4

    .line 806
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->pow([DII[DI)V

    const/4 v4, 0x0

    move-object v1, p1

    move-object v3, p4

    move-object v5, p5

    move v6, p6

    .line 807
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    return-void
.end method

.method public exp([DI[DI)V
    .locals 7

    .line 1034
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [D

    .line 1035
    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    invoke-static {v4, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    move v6, p4

    .line 1038
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public expm1([DI[DI)V
    .locals 8

    .line 1054
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1055
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1056
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/2addr v0, v1

    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    invoke-static {v5, v1, v0, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1059
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public getFreeParameters()I
    .locals 1

    .line 633
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 640
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    return v0
.end method

.method public varargs getPartialDerivativeIndex([I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 545
    array-length v0, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 549
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    invoke-static {v0, v1, v2, p1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeIndex(II[[I[I)I

    move-result p1

    return p1

    .line 546
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public getPartialDerivativeOrders(I)[I
    .locals 1

    .line 626
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->derivativesIndirection:[[I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getSize()I
    .locals 2

    .line 651
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->sizes:[[I

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->parameters:I

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    aget v0, v0, v1

    return v0
.end method

.method public linearCombination(D[DID[DID[DID[DI[DI)V
    .locals 19

    const/4 v0, 0x0

    .line 725
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p18, v0

    add-int v2, p4, v0

    .line 726
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    add-int v2, p16, v0

    aget-wide v17, p15, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    move-wide/from16 v15, p13

    invoke-static/range {v3 .. v18}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDDDD)D

    move-result-wide v2

    aput-wide v2, p17, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DID[DI[DI)V
    .locals 15

    const/4 v0, 0x0

    .line 694
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p14, v0

    add-int v2, p4, v0

    .line 695
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    add-int v2, p12, v0

    aget-wide v13, p11, v2

    move-wide/from16 v3, p1

    move-wide/from16 v7, p5

    move-wide/from16 v11, p9

    invoke-static/range {v3 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    aput-wide v2, p13, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public linearCombination(D[DID[DI[DI)V
    .locals 11

    const/4 v0, 0x0

    .line 669
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p10, v0

    add-int v2, p4, v0

    .line 670
    aget-wide v5, p3, v2

    add-int v2, p8, v0

    aget-wide v9, p7, v2

    move-wide v3, p1

    move-wide/from16 v7, p5

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    aput-wide v2, p9, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public log([DI[DI)V
    .locals 10

    .line 1075
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1076
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1077
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1078
    aget-wide v6, p1, p2

    div-double/2addr v2, v6

    move-wide v6, v2

    .line 1080
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1081
    aput-wide v6, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double/2addr v8, v2

    mul-double/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1087
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public log10([DI[DI)V
    .locals 10

    .line 1129
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1130
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1131
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1132
    aget-wide v6, p1, p2

    div-double/2addr v2, v6

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1133
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    div-double v6, v2, v6

    .line 1134
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1135
    aput-wide v6, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double/2addr v8, v2

    mul-double/2addr v6, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1141
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public log1p([DI[DI)V
    .locals 10

    .line 1102
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1103
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1104
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1105
    aget-wide v2, p1, p2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v6

    div-double/2addr v6, v2

    move-wide v2, v6

    .line 1107
    :goto_0
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v1, v0, :cond_0

    .line 1108
    aput-wide v2, v5, v1

    neg-int v0, v1

    int-to-double v8, v0

    mul-double/2addr v8, v6

    mul-double/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1114
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public multiply([DI[DI[DI)V
    .locals 12

    const/4 v0, 0x0

    move-object v1, p0

    move v2, v0

    .line 780
    :goto_0
    iget-object v3, v1, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multIndirection:[[[I

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 781
    aget-object v3, v3, v2

    const-wide/16 v4, 0x0

    move v6, v0

    .line 783
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 784
    aget-object v7, v3, v6

    aget v8, v7, v0

    int-to-double v8, v8

    const/4 v10, 0x1

    aget v10, v7, v10

    add-int/2addr v10, p2

    aget-wide v10, p1, v10

    mul-double/2addr v8, v10

    const/4 v10, 0x2

    aget v7, v7, v10

    add-int v7, p4, v7

    aget-wide v10, p3, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int v3, p6, v2

    .line 788
    aput-wide v4, p5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pow(D[DI[DI)V
    .locals 8

    .line 853
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    const-wide/16 v2, 0x0

    cmpl-double v4, p1, v2

    const/4 v6, 0x0

    if-nez v4, :cond_1

    .line 855
    aget-wide p1, p3, p4

    cmpl-double v4, p1, v2

    if-nez v4, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 856
    aput-wide p1, v5, v6

    const-wide/high16 p1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_0
    if-ge v1, v0, :cond_2

    neg-double p1, p1

    .line 860
    aput-wide p1, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    cmpg-double p1, p1, v2

    if-gez p1, :cond_2

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 863
    invoke-static {v5, p1, p2}, Ljava/util/Arrays;->fill([DD)V

    goto :goto_2

    .line 866
    :cond_1
    aget-wide v2, p3, p4

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    aput-wide v2, v5, v6

    .line 867
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    :goto_1
    if-ge v1, v0, :cond_2

    add-int/lit8 v2, v1, -0x1

    .line 869
    aget-wide v2, v5, v2

    mul-double/2addr v2, p1

    aput-wide v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move-object v6, p5

    move v7, p6

    .line 875
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DID[DI)V
    .locals 8

    .line 893
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v1, v0, 0x1

    new-array v5, v1, [D

    .line 894
    aget-wide v1, p1, p2

    int-to-double v3, v0

    sub-double v3, p3, v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    .line 895
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    :goto_0
    if-lez v2, :cond_0

    .line 896
    aput-wide v0, v5, v2

    .line 897
    aget-wide v3, p1, p2

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 899
    aput-wide v0, v5, v2

    const/4 v0, 0x1

    move-wide v1, p3

    .line 901
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v3, :cond_1

    .line 902
    aget-wide v3, v5, v0

    mul-double/2addr v3, v1

    aput-wide v3, v5, v0

    int-to-double v3, v0

    sub-double v3, p3, v3

    mul-double/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p5

    move v7, p6

    .line 907
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DII[DI)V
    .locals 10

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    if-nez p3, :cond_0

    .line 925
    aput-wide v0, p4, p5

    add-int/lit8 p1, p5, 0x1

    .line 926
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p2

    add-int/2addr p5, p2

    const-wide/16 p2, 0x0

    invoke-static {p4, p1, p5, p2, p3}, Ljava/util/Arrays;->fill([DIID)V

    return-void

    .line 932
    :cond_0
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    add-int/lit8 v3, v2, 0x1

    new-array v7, v3, [D

    const/4 v3, 0x0

    if-lez p3, :cond_2

    .line 936
    invoke-static {v2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 937
    aget-wide v1, p1, p2

    sub-int v4, p3, v0

    invoke-static {v1, v2, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v1

    :goto_0
    if-lez v0, :cond_1

    .line 939
    aput-wide v1, v7, v0

    .line 940
    aget-wide v4, p1, p2

    mul-double/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 942
    :cond_1
    aput-wide v1, v7, v3

    goto :goto_2

    .line 945
    :cond_2
    aget-wide v4, p1, p2

    div-double/2addr v0, v4

    neg-int v2, p3

    .line 946
    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    .line 947
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v3, v2, :cond_3

    .line 948
    aput-wide v4, v7, v3

    mul-double/2addr v4, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    int-to-double v0, p3

    const/4 v2, 0x1

    .line 954
    :goto_3
    iget v3, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v2, v3, :cond_4

    .line 955
    aget-wide v3, v7, v2

    mul-double/2addr v3, v0

    aput-wide v3, v7, v2

    sub-int v3, p3, v2

    int-to-double v3, v3

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move-object v8, p4

    move v9, p5

    .line 960
    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public pow([DI[DI[DI)V
    .locals 8

    .line 977
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    new-array v2, v0, [D

    const/4 v0, 0x0

    .line 978
    invoke-virtual {p0, p1, p2, v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->log([DI[DI)V

    .line 979
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result p1

    new-array p1, p1, [D

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v4, p3

    move v5, p4

    move-object v6, p1

    .line 980
    invoke-virtual/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->multiply([DI[DI[DI)V

    .line 981
    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->exp([DI[DI)V

    return-void
.end method

.method public remainder([DI[DI[DI)V
    .locals 8

    .line 824
    aget-wide v0, p1, p2

    aget-wide v2, p3, p4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->IEEEremainder(DD)D

    move-result-wide v0

    .line 825
    aget-wide v2, p1, p2

    sub-double/2addr v2, v0

    aget-wide v4, p3, p4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->rint(D)D

    move-result-wide v2

    .line 828
    aput-wide v0, p5, p6

    const/4 v0, 0x1

    .line 831
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v4, p2, v0

    .line 832
    aget-wide v4, p1, v4

    add-int v6, p4, v0

    aget-wide v6, p3, v6

    mul-double/2addr v6, v2

    sub-double/2addr v4, v6

    aput-wide v4, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rootN([DII[DI)V
    .locals 15

    move-object v6, p0

    move/from16 v0, p3

    .line 998
    iget v1, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [D

    const/4 v1, 0x2

    const/4 v4, 0x0

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    if-ne v0, v1, :cond_0

    .line 1001
    aget-wide v9, p1, p2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    aput-wide v9, v3, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    div-double/2addr v4, v9

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1004
    aget-wide v9, p1, p2

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->cbrt(D)D

    move-result-wide v9

    aput-wide v9, v3, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, v9

    mul-double/2addr v4, v9

    div-double v4, v7, v4

    goto :goto_0

    .line 1007
    :cond_1
    aget-wide v9, p1, p2

    int-to-double v11, v0

    div-double v13, v7, v11

    invoke-static {v9, v10, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v9

    aput-wide v9, v3, v4

    add-int/lit8 v1, v0, -0x1

    .line 1008
    invoke-static {v9, v10, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v4

    mul-double/2addr v11, v4

    div-double v4, v7, v11

    :goto_0
    int-to-double v0, v0

    div-double v0, v7, v0

    .line 1011
    aget-wide v9, p1, p2

    div-double/2addr v7, v9

    .line 1012
    :goto_1
    iget v9, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v2, v9, :cond_2

    .line 1013
    aput-wide v4, v3, v2

    int-to-double v9, v2

    sub-double v9, v0, v9

    mul-double/2addr v9, v7

    mul-double/2addr v4, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 1018
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public sin([DI[DI)V
    .locals 8

    .line 1183
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1184
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1185
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1186
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1187
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1188
    aget-wide v1, v5, v1

    neg-double v1, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1193
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public sinh([DI[DI)V
    .locals 8

    .line 1512
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v5, v0, [D

    .line 1513
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sinh(D)D

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, v5, v0

    .line 1514
    iget v0, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v0, :cond_0

    .line 1515
    aget-wide v2, p1, p2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cosh(D)D

    move-result-wide v2

    aput-wide v2, v5, v1

    const/4 v0, 0x2

    .line 1516
    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x2

    .line 1517
    aget-wide v1, v5, v1

    aput-wide v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v6, p3

    move v7, p4

    .line 1522
    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public subtract([DI[DI[DI)V
    .locals 6

    const/4 v0, 0x0

    .line 762
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    add-int v1, p6, v0

    add-int v2, p2, v0

    .line 763
    aget-wide v2, p1, v2

    add-int v4, p4, v0

    aget-wide v4, p3, v4

    sub-double/2addr v2, v4

    aput-wide v2, p5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tan([DI[DI)V
    .locals 23

    move-object/from16 v6, p0

    .line 1209
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1210
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v4

    const/4 v0, 0x0

    .line 1211
    aput-wide v4, v3, v0

    .line 1213
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    const/4 v7, 0x2

    add-int/2addr v2, v7

    .line 1222
    new-array v2, v2, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1223
    aput-wide v8, v2, v1

    mul-double v8, v4, v4

    move v10, v1

    .line 1225
    :goto_0
    iget v11, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    int-to-double v12, v10

    .line 1229
    aget-wide v14, v2, v10

    mul-double/2addr v12, v14

    aput-wide v12, v2, v11

    const-wide/16 v12, 0x0

    move v14, v11

    :goto_1
    if-ltz v14, :cond_2

    mul-double/2addr v12, v8

    .line 1231
    aget-wide v15, v2, v14

    add-double/2addr v12, v15

    if-le v14, v7, :cond_0

    add-int/lit8 v15, v14, -0x2

    add-int/lit8 v0, v14, -0x1

    move-wide/from16 v17, v8

    int-to-double v7, v0

    .line 1233
    aget-wide v19, v2, v0

    mul-double v7, v7, v19

    add-int/lit8 v0, v14, -0x3

    move v9, v11

    move-wide/from16 v19, v12

    int-to-double v11, v0

    aget-wide v21, v2, v0

    mul-double v11, v11, v21

    add-double/2addr v7, v11

    aput-wide v7, v2, v15

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move v0, v7

    move-wide/from16 v17, v8

    move v9, v11

    move-wide/from16 v19, v12

    if-ne v14, v0, :cond_1

    .line 1235
    aget-wide v7, v2, v1

    const/4 v11, 0x0

    aput-wide v7, v2, v11

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v14, v14, -0x2

    move v7, v0

    move v0, v11

    move-wide/from16 v12, v19

    move v11, v9

    move-wide/from16 v8, v17

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v8

    move v9, v11

    move v11, v0

    move v0, v7

    and-int/lit8 v7, v10, 0x1

    if-nez v7, :cond_3

    mul-double/2addr v12, v4

    .line 1242
    :cond_3
    aput-wide v12, v3, v10

    move v7, v0

    move v10, v9

    move v0, v11

    move-wide/from16 v8, v17

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1248
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public tanh([DI[DI)V
    .locals 23

    move-object/from16 v6, p0

    .line 1538
    iget v0, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v3, v0, [D

    .line 1539
    aget-wide v4, p1, p2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->tanh(D)D

    move-result-wide v4

    const/4 v0, 0x0

    .line 1540
    aput-wide v4, v3, v0

    .line 1542
    iget v2, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-lez v2, :cond_4

    const/4 v7, 0x2

    add-int/2addr v2, v7

    .line 1551
    new-array v2, v2, [D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1552
    aput-wide v8, v2, v1

    mul-double v8, v4, v4

    move v10, v1

    .line 1554
    :goto_0
    iget v11, v6, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->order:I

    if-gt v10, v11, :cond_4

    add-int/lit8 v11, v10, 0x1

    neg-int v12, v10

    int-to-double v12, v12

    .line 1558
    aget-wide v14, v2, v10

    mul-double/2addr v12, v14

    aput-wide v12, v2, v11

    const-wide/16 v12, 0x0

    move v14, v11

    :goto_1
    if-ltz v14, :cond_2

    mul-double/2addr v12, v8

    .line 1560
    aget-wide v15, v2, v14

    add-double/2addr v12, v15

    if-le v14, v7, :cond_0

    add-int/lit8 v15, v14, -0x2

    add-int/lit8 v0, v14, -0x1

    move-wide/from16 v17, v8

    int-to-double v7, v0

    .line 1562
    aget-wide v19, v2, v0

    mul-double v7, v7, v19

    add-int/lit8 v0, v14, -0x3

    move v9, v11

    move-wide/from16 v19, v12

    int-to-double v11, v0

    aget-wide v21, v2, v0

    mul-double v11, v11, v21

    sub-double/2addr v7, v11

    aput-wide v7, v2, v15

    const/4 v0, 0x2

    goto :goto_2

    :cond_0
    move v0, v7

    move-wide/from16 v17, v8

    move v9, v11

    move-wide/from16 v19, v12

    if-ne v14, v0, :cond_1

    .line 1564
    aget-wide v7, v2, v1

    const/4 v11, 0x0

    aput-wide v7, v2, v11

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v11, 0x0

    :goto_3
    add-int/lit8 v14, v14, -0x2

    move v7, v0

    move v0, v11

    move-wide/from16 v12, v19

    move v11, v9

    move-wide/from16 v8, v17

    goto :goto_1

    :cond_2
    move-wide/from16 v17, v8

    move v9, v11

    move v11, v0

    move v0, v7

    and-int/lit8 v7, v10, 0x1

    if-nez v7, :cond_3

    mul-double/2addr v12, v4

    .line 1571
    :cond_3
    aput-wide v12, v3, v10

    move v7, v0

    move v10, v9

    move v0, v11

    move-wide/from16 v8, v17

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    .line 1577
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->compose([DI[D[DI)V

    return-void
.end method

.method public varargs taylor([DI[D)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 1789
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v1, 0x0

    :goto_0
    if-ltz v0, :cond_2

    .line 1790
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getPartialDerivativeOrders(I)[I

    move-result-object v3

    add-int v4, p2, v0

    .line 1791
    aget-wide v4, p1, v4

    const/4 v6, 0x0

    .line 1792
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_1

    .line 1793
    aget v7, v3, v6

    if-lez v7, :cond_0

    .line 1795
    :try_start_0
    aget-wide v8, p3, v6

    invoke-static {v8, v9, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v7

    aget v9, v3, v6

    invoke-static {v9}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorial(I)J

    move-result-wide v9
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v9, v9

    div-double/2addr v7, v9

    mul-double/2addr v4, v7

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1799
    new-instance p2, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-double/2addr v1, v4

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method
