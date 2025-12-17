.class public Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;
.super Ljava/lang/Object;
.source "MillerUpdatingRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# instance fields
.field private final d:[D

.field private final epsilon:D

.field private hasIntercept:Z

.field private final lindep:[Z

.field private nobs:J

.field private final nvars:I

.field private final r:[D

.field private final rhs:[D

.field private final rss:[D

.field private rss_set:Z

.field private sserr:D

.field private sumsqy:D

.field private sumy:D

.field private final tol:[D

.field private tol_set:Z

.field private final vorder:[I

.field private final work_sing:[D

.field private final work_tolset:[D

.field private final x_sing:[D


# direct methods
.method private constructor <init>()V
    .locals 4

    const/4 v0, 0x0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    const/4 v3, -0x1

    .line 88
    invoke-direct {p0, v3, v0, v1, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 140
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;-><init>(IZD)V

    return-void
.end method

.method public constructor <init>(IZD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 61
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v2, 0x0

    .line 63
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    const/4 v4, 0x0

    .line 65
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 67
    iput-boolean v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    .line 75
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 77
    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    const/4 v5, 0x1

    if-lt p1, v5, :cond_3

    if-eqz p2, :cond_0

    add-int/2addr p1, v5

    .line 105
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    goto :goto_0

    .line 107
    :cond_0
    iput p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    .line 109
    :goto_0
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    .line 110
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 111
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    .line 112
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    add-int/lit8 p2, p1, -0x1

    mul-int/2addr p2, p1

    .line 113
    div-int/lit8 p2, p2, 0x2

    new-array p2, p2, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    .line 114
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    .line 115
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    .line 116
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    .line 117
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    .line 118
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    .line 119
    new-array p2, p1, [D

    iput-object p2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    .line 120
    new-array p1, p1, [Z

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    .line 121
    :goto_1
    iget p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, p1, :cond_1

    .line 122
    iget-object p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    cmpl-double p1, p3, v2

    if-lez p1, :cond_2

    .line 125
    iput-wide p3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    goto :goto_2

    :cond_2
    neg-double p1, p3

    .line 127
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    :goto_2
    return-void

    .line 102
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p3, v4, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private cov(I)[D
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 492
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_0
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-ge v5, v1, :cond_2

    .line 497
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v8, v8, v5

    if-nez v8, :cond_1

    add-double/2addr v3, v6

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 501
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v8, v1, -0x1

    aget-wide v9, v5, v8

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    long-to-double v11, v11

    sub-double/2addr v11, v3

    div-double/2addr v9, v11

    mul-int v3, v1, v8

    .line 502
    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    .line 503
    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->inverse([DI)V

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v1

    .line 504
    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [D

    const-wide/high16 v11, 0x7ff8000000000000L    # Double.NaN

    .line 505
    invoke-static {v4, v11, v12}, Ljava/util/Arrays;->fill([DD)V

    move v5, v2

    :goto_1
    if-ge v2, v1, :cond_8

    .line 512
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v8, v8, v2

    if-nez v8, :cond_7

    move v8, v2

    move v11, v5

    :goto_2
    if-ge v8, v1, :cond_7

    .line 514
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v12, v12, v8

    if-nez v12, :cond_6

    add-int v12, v5, v8

    sub-int/2addr v12, v2

    if-ne v2, v8, :cond_3

    .line 517
    iget-object v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v14, v13, v8

    div-double v13, v6, v14

    goto :goto_3

    :cond_3
    add-int/lit8 v13, v12, -0x1

    .line 519
    aget-wide v13, v3, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v16, v15, v8

    div-double v13, v13, v16

    :goto_3
    add-int/lit8 v15, v8, 0x1

    move v6, v15

    :goto_4
    if-ge v6, v1, :cond_5

    .line 522
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v7, v7, v6

    if-nez v7, :cond_4

    .line 523
    aget-wide v18, v3, v12

    aget-wide v20, v3, v11

    mul-double v18, v18, v20

    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v20, v7, v6

    div-double v18, v18, v20

    add-double v13, v13, v18

    :cond_4
    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    mul-int/2addr v15, v8

    .line 528
    div-int/lit8 v15, v15, 0x2

    add-int/2addr v15, v2

    mul-double/2addr v13, v9

    aput-wide v13, v4, v15

    goto :goto_5

    :cond_6
    sub-int v6, v1, v8

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v11, v6

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_7
    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_8
    return-object v4
.end method

.method private include([DDD)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p4

    const/4 v4, 0x0

    .line 238
    iput-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 239
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    invoke-direct {v0, v2, v3, v5, v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 240
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    mul-double v7, v2, v2

    invoke-direct {v0, v5, v6, v7, v8}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v5

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    move v6, v4

    move v7, v6

    move-wide v4, v2

    move-wide/from16 v2, p2

    .line 241
    :goto_0
    array-length v8, v1

    if-ge v6, v8, :cond_7

    const-wide/16 v8, 0x0

    cmpl-double v10, v2, v8

    if-nez v10, :cond_0

    return-void

    .line 245
    :cond_0
    aget-wide v10, v1, v6

    cmpl-double v12, v10, v8

    if-nez v12, :cond_1

    .line 248
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v8, v6

    add-int/lit8 v8, v8, -0x1

    add-int/2addr v7, v8

    goto/16 :goto_5

    .line 251
    :cond_1
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v13, v12, v6

    mul-double v15, v2, v10

    cmpl-double v12, v13, v8

    if-eqz v12, :cond_3

    mul-double v8, v15, v10

    .line 255
    invoke-direct {v0, v13, v14, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v17

    div-double/2addr v8, v13

    .line 257
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    sget-wide v19, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    cmpl-double v8, v8, v19

    if-lez v8, :cond_2

    mul-double/2addr v2, v13

    div-double v2, v2, v17

    :cond_2
    move-wide v8, v2

    goto :goto_1

    :cond_3
    mul-double v17, v15, v10

    .line 264
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v17, v2, v6

    add-int/lit8 v2, v6, 0x1

    .line 265
    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v3, :cond_5

    move-wide/from16 p2, v8

    .line 266
    aget-wide v8, v1, v2

    move-wide/from16 v19, v4

    neg-double v3, v10

    .line 267
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v21, v5, v7

    mul-double v3, v3, v21

    invoke-direct {v0, v8, v9, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v3

    aput-wide v3, v1, v2

    if-eqz v12, :cond_4

    .line 269
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v4, v3, v7

    mul-double/2addr v4, v13

    mul-double/2addr v8, v15

    invoke-direct {v0, v4, v5, v8, v9}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v4

    div-double v4, v4, v17

    aput-wide v4, v3, v7

    goto :goto_3

    .line 271
    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    div-double/2addr v8, v10

    aput-wide v8, v3, v7

    :goto_3
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v8, p2

    move-wide/from16 v4, v19

    goto :goto_2

    :cond_5
    move-wide/from16 v19, v4

    move-wide/from16 p2, v8

    neg-double v2, v10

    .line 276
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v8, v4, v6

    mul-double/2addr v2, v8

    move-wide/from16 v4, v19

    invoke-direct {v0, v4, v5, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v2

    if-eqz v12, :cond_6

    .line 278
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v9, v8, v6

    mul-double/2addr v13, v9

    mul-double/2addr v4, v15

    invoke-direct {v0, v13, v14, v4, v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v4

    div-double v4, v4, v17

    aput-wide v4, v8, v6

    goto :goto_4

    .line 280
    :cond_6
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    div-double/2addr v4, v10

    aput-wide v4, v8, v6

    :goto_4
    move-wide v4, v2

    move-wide/from16 v2, p2

    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 283
    :cond_7
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    mul-double/2addr v2, v4

    mul-double/2addr v2, v4

    invoke-direct {v0, v6, v7, v2, v3}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    return-void
.end method

.method private inverse([DI)V
    .locals 13

    add-int/lit8 v0, p2, -0x1

    mul-int v1, p2, v0

    .line 547
    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    .line 551
    invoke-static {p1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    :goto_0
    if-lez v0, :cond_4

    .line 553
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_2

    add-int/lit8 v2, v0, -0x1

    .line 554
    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v3, v3

    sub-int/2addr v3, v0

    mul-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    move v3, p2

    :goto_1
    if-le v3, v0, :cond_3

    const-wide/16 v4, 0x0

    move v6, v0

    move v8, v1

    move v7, v2

    :goto_2
    add-int/lit8 v9, v3, -0x1

    if-ge v6, v9, :cond_1

    sub-int v9, p2, v6

    add-int/lit8 v9, v9, -0x1

    add-int/2addr v8, v9

    .line 561
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v9, v9, v6

    if-nez v9, :cond_0

    .line 562
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v7

    neg-double v9, v10

    aget-wide v11, p1, v8

    mul-double/2addr v9, v11

    add-double/2addr v4, v9

    :cond_0
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 566
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v7, v6, v7

    sub-double/2addr v4, v7

    aput-wide v4, p1, v1

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    sub-int v2, p2, v0

    sub-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private regcf(I)[D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_7

    .line 375
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v3, 0x2

    if-gt p1, v2, :cond_6

    .line 379
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    if-nez v2, :cond_0

    .line 380
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 382
    :cond_0
    new-array v2, p1, [D

    add-int/lit8 v4, p1, -0x1

    move v5, v0

    :goto_0
    const/4 v6, -0x1

    if-le v4, v6, :cond_3

    .line 385
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v7, v6, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    iget-object v8, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v9, v8, v4

    cmpg-double v6, v6, v9

    if-gez v6, :cond_1

    const-wide/16 v5, 0x0

    .line 386
    aput-wide v5, v2, v4

    .line 387
    iget-object v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v5, v7, v4

    move v5, v1

    goto :goto_2

    .line 390
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v6, v4

    aput-wide v7, v2, v4

    .line 391
    iget v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v6, v6

    sub-int/2addr v6, v4

    sub-int/2addr v6, v1

    mul-int/2addr v6, v4

    div-int/2addr v6, v3

    add-int/lit8 v7, v4, 0x1

    :goto_1
    if-ge v7, p1, :cond_2

    .line 393
    aget-wide v8, v2, v4

    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v11, v10, v6

    neg-double v10, v11

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    invoke-direct {p0, v8, v9, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v8

    aput-wide v8, v2, v4

    add-int/2addr v6, v1

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_3
    if-eqz v5, :cond_5

    :goto_3
    if-ge v0, p1, :cond_5

    .line 400
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_4

    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    .line 401
    aput-wide v3, v2, v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-object v2

    .line 376
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object v5, v3, v1

    invoke-direct {v2, v4, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 373
    :cond_7
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p1, v1, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method private reorderRegressors([II)I
    .locals 6

    .line 823
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_4

    array-length v0, p1

    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p2

    if-le v0, v2, :cond_0

    goto :goto_2

    :cond_0
    move v0, p2

    move v1, v0

    .line 828
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v3, 0x0

    if-ge v0, v2, :cond_3

    .line 829
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v2, v2, v0

    move v4, v3

    .line 830
    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 831
    aget v5, p1, v4

    if-ne v2, v5, :cond_1

    if-le v0, v1, :cond_1

    .line 832
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vmove(II)V

    add-int/lit8 v1, v1, 0x1

    .line 834
    array-length v2, p1

    add-int/2addr v2, p2

    if-lt v1, v2, :cond_2

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v3

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method private singcheck()V
    .locals 15

    const/4 v0, 0x0

    move v1, v0

    .line 414
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_0

    .line 415
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v4, v3, v1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 417
    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v1, v2, :cond_6

    .line 421
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v3, v2, v1

    add-int/lit8 v2, v1, -0x1

    move v5, v0

    move v6, v2

    :goto_2
    const-wide/16 v7, 0x0

    if-ge v5, v2, :cond_2

    .line 424
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v12, v11, v5

    mul-double/2addr v9, v12

    cmpg-double v9, v9, v3

    if-gez v9, :cond_1

    .line 425
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v7, v9, v6

    .line 427
    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v7, v5

    add-int/lit8 v7, v7, -0x2

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 432
    :cond_2
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    aput-boolean v0, v2, v1

    .line 433
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    aget-wide v9, v5, v1

    cmpg-double v3, v9, v3

    if-gez v3, :cond_5

    const/4 v3, 0x1

    .line 434
    aput-boolean v3, v2, v1

    .line 435
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    .line 436
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v2, v7, v8}, Ljava/util/Arrays;->fill([DD)V

    .line 437
    iget v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v2, v2

    sub-int/2addr v2, v1

    sub-int/2addr v2, v3

    mul-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v1, 0x1

    .line 438
    :goto_3
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, v5, :cond_3

    .line 439
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v9, v6, v2

    aput-wide v9, v5, v4

    .line 440
    aput-wide v7, v6, v2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v3

    goto :goto_3

    .line 442
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v13, v2, v1

    .line 443
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v11, v3, v1

    .line 444
    aput-wide v7, v3, v1

    .line 445
    aput-wide v7, v2, v1

    .line 446
    iget-object v10, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    move-object v9, p0

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_4

    .line 448
    :cond_4
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v4, v1

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v4, v1

    mul-double/2addr v5, v7

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private smartAdd(DD)D
    .locals 6

    .line 294
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    .line 295
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_1

    .line 297
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v0, v4

    cmpl-double v0, v2, v0

    if-lez v0, :cond_0

    add-double/2addr p1, p3

    :cond_0
    return-wide p1

    .line 303
    :cond_1
    sget-wide v4, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    add-double/2addr p1, p3

    return-wide p1

    :cond_2
    return-wide p3
.end method

.method private ss()V
    .locals 9

    .line 464
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 465
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    iget v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/lit8 v4, v3, -0x1

    aput-wide v0, v2, v4

    const/4 v2, 0x1

    sub-int/2addr v3, v2

    :goto_0
    if-lez v3, :cond_0

    .line 467
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v5, v4, v3

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v4, v3

    mul-double/2addr v5, v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    .line 468
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    add-int/lit8 v5, v3, -0x1

    aput-wide v0, v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 470
    :cond_0
    iput-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    return-void
.end method

.method private tolset()V
    .locals 14

    .line 342
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    const/4 v2, 0x0

    move v3, v2

    .line 343
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_0

    .line 344
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v6, v5, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v5, v4, v2

    mul-double/2addr v5, v0

    aput-wide v5, v3, v2

    const/4 v3, 0x1

    move v4, v3

    .line 347
    :goto_1
    iget v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, -0x1

    .line 349
    iget-object v6, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v7, v6, v4

    move v6, v2

    :goto_2
    if-ge v6, v4, :cond_1

    .line 351
    iget-object v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v10, v9, v5

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-object v11, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    aget-wide v12, v11, v6

    mul-double/2addr v9, v12

    add-double/2addr v7, v9

    .line 352
    iget v9, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x2

    add-int/2addr v5, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 354
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    mul-double/2addr v7, v0

    aput-wide v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 356
    :cond_2
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    return-void
.end method

.method private vmove(II)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ne v1, v2, :cond_0

    return-void

    .line 705
    :cond_0
    iget-boolean v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    if-nez v3, :cond_1

    .line 706
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    :cond_1
    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    sub-int/2addr v2, v1

    move v4, v2

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v1, -0x1

    sub-int v2, v1, v2

    const/4 v1, -0x1

    move/from16 v24, v2

    move v2, v1

    move v1, v4

    move/from16 v4, v24

    :goto_0
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_e

    .line 722
    iget v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int v9, v8, v8

    sub-int/2addr v9, v1

    sub-int/2addr v9, v3

    mul-int/2addr v9, v1

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    sub-int/2addr v8, v1

    sub-int/2addr v8, v3

    add-int/lit8 v10, v1, 0x1

    .line 726
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v11, v1

    .line 727
    aget-wide v14, v11, v10

    move v11, v6

    .line 729
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpl-double v16, v12, v5

    if-gtz v16, :cond_4

    cmpl-double v5, v14, v5

    if-lez v5, :cond_3

    goto :goto_2

    :cond_3
    move v6, v3

    move/from16 p2, v4

    goto/16 :goto_9

    .line 730
    :cond_4
    :goto_2
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v5, v9

    .line 731
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v18

    mul-double v5, v5, v18

    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v19, v3, v10

    cmpg-double v3, v5, v19

    if-gez v3, :cond_5

    const-wide/16 v16, 0x0

    .line 734
    :cond_5
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v3, v12, v5

    if-ltz v3, :cond_8

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    move/from16 p2, v4

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->epsilon:D

    cmpg-double v5, v5, v3

    if-gez v5, :cond_6

    goto :goto_4

    :cond_6
    cmpg-double v3, v14, v3

    if-gez v3, :cond_a

    .line 751
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    mul-double v4, v12, v16

    mul-double v4, v4, v16

    aput-wide v4, v3, v1

    .line 752
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double v4, v4, v16

    aput-wide v4, v3, v9

    add-int/lit8 v3, v9, 0x1

    .line 753
    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    add-int/2addr v4, v9

    sub-int/2addr v4, v1

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_7

    .line 754
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v5, v4, v3

    div-double v5, v5, v16

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 756
    :cond_7
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v4, v3, v1

    div-double v4, v4, v16

    aput-wide v4, v3, v1

    goto :goto_6

    :cond_8
    move/from16 p2, v4

    .line 735
    :goto_4
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v14, v3, v1

    .line 736
    aput-wide v12, v3, v10

    .line 737
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v9

    add-int/lit8 v3, v1, 0x2

    .line 738
    :goto_5
    iget v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v4, :cond_9

    add-int/lit8 v9, v9, 0x1

    .line 740
    iget-object v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v5, v4, v9

    .line 741
    aget-wide v16, v4, v8

    aput-wide v16, v4, v9

    .line 742
    aput-wide v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 745
    :cond_9
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v16, v3, v1

    .line 746
    aget-wide v4, v3, v10

    aput-wide v4, v3, v1

    .line 747
    aput-wide v16, v3, v10

    :goto_6
    const/4 v7, 0x1

    :cond_a
    if-nez v7, :cond_c

    mul-double v3, v12, v16

    mul-double v5, v3, v16

    add-double/2addr v5, v14

    div-double/2addr v14, v5

    div-double/2addr v3, v5

    mul-double/2addr v12, v14

    move/from16 v19, v7

    .line 765
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aput-wide v5, v7, v1

    .line 766
    aput-wide v12, v7, v10

    .line 767
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aput-wide v3, v5, v9

    add-int/lit8 v5, v1, 0x2

    .line 768
    :goto_7
    iget v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v5, v6, :cond_b

    const/4 v6, 0x1

    add-int/2addr v9, v6

    .line 770
    iget-object v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v12, v6, v9

    .line 771
    aget-wide v20, v6, v8

    mul-double v20, v20, v14

    mul-double v22, v3, v12

    add-double v20, v20, v22

    aput-wide v20, v6, v9

    .line 772
    aget-wide v20, v6, v8

    mul-double v20, v20, v16

    sub-double v12, v12, v20

    aput-wide v12, v6, v8

    const/4 v6, 0x1

    add-int/2addr v8, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v6, 0x1

    .line 775
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v7, v5, v1

    .line 776
    aget-wide v12, v5, v10

    mul-double/2addr v14, v12

    mul-double/2addr v3, v7

    add-double/2addr v14, v3

    aput-wide v14, v5, v1

    .line 777
    aget-wide v3, v5, v10

    mul-double v16, v16, v3

    sub-double v7, v7, v16

    aput-wide v7, v5, v10

    goto :goto_8

    :cond_c
    move/from16 v19, v7

    const/4 v6, 0x1

    :goto_8
    move/from16 v7, v19

    :goto_9
    if-lez v1, :cond_d

    move v4, v1

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_d

    .line 783
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v8, v5, v4

    add-int/lit8 v12, v4, -0x1

    .line 784
    aget-wide v13, v5, v12

    aput-wide v13, v5, v4

    .line 785
    aput-wide v8, v5, v12

    .line 786
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 791
    :cond_d
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v4, v3, v1

    .line 792
    aget v5, v3, v10

    aput v5, v3, v1

    .line 793
    aput v4, v3, v10

    .line 794
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v4, v3, v1

    .line 795
    aget-wide v8, v3, v10

    aput-wide v8, v3, v1

    .line 796
    aput-wide v4, v3, v10

    .line 797
    iget-object v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    aget-wide v4, v3, v10

    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v8, v10

    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v9, v8, v10

    mul-double/2addr v12, v9

    mul-double/2addr v12, v9

    add-double/2addr v4, v12

    aput-wide v4, v3, v1

    add-int/2addr v1, v2

    add-int/lit8 v3, v11, 0x1

    move/from16 v4, p2

    move/from16 v24, v6

    move v6, v3

    move/from16 v3, v24

    goto/16 :goto_1

    :cond_e
    return-void
.end method


# virtual methods
.method public addObservation([DD)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 169
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    array-length v3, p1

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v3, v4, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    array-length v3, p1

    add-int/2addr v3, v2

    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ne v3, v4, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object v0, v3, v2

    invoke-direct {p2, p3, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 175
    array-length v0, p1

    invoke-static {p1, v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([DI)[D

    move-result-object v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    move-object v1, p0

    move-wide v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    goto :goto_1

    .line 177
    :cond_3
    array-length v0, p1

    add-int/2addr v0, v2

    new-array v4, v0, [D

    .line 178
    array-length v0, p1

    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 179
    aput-wide v2, v4, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move-object v3, p0

    move-wide v7, p2

    .line 180
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->include([DDD)V

    .line 182
    :goto_1
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-void
.end method

.method public addObservations([[D[D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 194
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 200
    :cond_0
    array-length v3, p1

    if-eqz v3, :cond_3

    .line 204
    aget-object v3, p1, v2

    array-length v3, v3

    add-int/2addr v3, v1

    array-length v4, p1

    if-gt v3, v4, :cond_2

    .line 209
    :goto_0
    array-length v0, p1

    if-ge v2, v0, :cond_1

    .line 210
    aget-object v0, p1, v2

    aget-wide v3, p2, v2

    invoke-virtual {p0, v0, v3, v4}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->addObservation([DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 205
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v4, v0, v2

    aput-object p1, v0, v1

    invoke-direct {p2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    .line 201
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DATA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-direct {p1, p2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 195
    :cond_4
    :goto_1
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    array-length p1, p1

    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    if-nez p2, :cond_6

    move p2, v2

    goto :goto_3

    :cond_6
    array-length p2, p2

    :goto_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-direct {v3, v4, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public clear()V
    .locals 6

    .line 316
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 317
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 318
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 319
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 320
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 321
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_tolset:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 322
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->work_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 323
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->x_sing:[D

    invoke-static {v0, v1, v2}, Ljava/util/Arrays;->fill([DD)V

    .line 324
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    const/4 v3, 0x0

    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([ZZ)V

    move v0, v3

    .line 325
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v0, v4, :cond_0

    .line 326
    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aput v0, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    .line 328
    iput-wide v4, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    .line 329
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    .line 330
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    .line 331
    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    .line 332
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rss_set:Z

    .line 333
    iput-boolean v3, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol_set:Z

    return-void
.end method

.method public getDiagonalOfHatMatrix([D)D
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 853
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    new-array v3, v2, [D

    .line 857
    array-length v4, v1

    if-le v4, v2, :cond_0

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    return-wide v1

    .line 861
    :cond_0
    iget-boolean v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 862
    array-length v2, v1

    const/4 v5, 0x1

    add-int/2addr v2, v5

    new-array v2, v2, [D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 863
    aput-wide v6, v2, v4

    .line 864
    array-length v6, v1

    invoke-static {v1, v4, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v2

    :cond_1
    const-wide/16 v5, 0x0

    move v2, v4

    move-wide v7, v5

    .line 869
    :goto_0
    array-length v9, v1

    if-ge v2, v9, :cond_4

    .line 870
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v10, v9, v2

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tol:[D

    aget-wide v12, v11, v2

    cmpg-double v9, v9, v12

    if-gez v9, :cond_2

    .line 871
    aput-wide v5, v3, v2

    goto :goto_2

    :cond_2
    add-int/lit8 v9, v2, -0x1

    .line 874
    aget-wide v10, v1, v2

    move v12, v4

    :goto_1
    if-ge v12, v2, :cond_3

    .line 876
    aget-wide v13, v3, v12

    neg-double v13, v13

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v16, v15, v9

    mul-double v13, v13, v16

    invoke-direct {v0, v10, v11, v13, v14}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v10

    .line 877
    iget v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v13, v12

    add-int/lit8 v13, v13, -0x2

    add-int/2addr v9, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 879
    :cond_3
    aput-wide v10, v3, v2

    mul-double/2addr v10, v10

    .line 880
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v12, v9, v2

    div-double/2addr v10, v12

    invoke-direct {v0, v7, v8, v10, v11}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->smartAdd(DD)D

    move-result-wide v7

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-wide v7
.end method

.method public getN()J
    .locals 2

    .line 156
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    return-wide v0
.end method

.method public getOrderOfRegressors()[I
    .locals 1

    .line 894
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([I)[I

    move-result-object v0

    return-object v0
.end method

.method public getPartialCorrelations(I)[D
    .locals 28

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 609
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    sub-int v4, v2, v1

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    new-array v3, v3, [D

    neg-int v4, v1

    add-int/lit8 v5, v1, 0x1

    neg-int v6, v5

    sub-int v7, v2, v1

    .line 615
    new-array v7, v7, [D

    sub-int v8, v2, v1

    add-int/lit8 v8, v8, -0x1

    .line 616
    new-array v8, v8, [D

    sub-int v9, v2, v1

    sub-int v10, v2, v1

    add-int/lit8 v10, v10, -0x1

    mul-int/2addr v9, v10

    .line 620
    div-int/lit8 v9, v9, 0x2

    const/4 v10, -0x1

    if-lt v1, v10, :cond_b

    if-lt v1, v2, :cond_0

    goto/16 :goto_8

    :cond_0
    add-int/lit8 v2, v2, -0x1

    .line 625
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    array-length v10, v10

    sub-int/2addr v2, v1

    add-int/lit8 v11, v2, 0x1

    mul-int/2addr v2, v11

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v10, v2

    .line 626
    iget-object v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v11, v2, v1

    const-wide/16 v13, 0x0

    cmpl-double v2, v11, v13

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    if-lez v2, :cond_1

    add-int v2, v1, v4

    .line 627
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    aput-wide v11, v7, v2

    .line 629
    :cond_1
    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v5, v2, :cond_4

    add-int v2, v10, v5

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v1

    .line 631
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v17, v11, v5

    move v11, v1

    :goto_1
    if-ge v11, v5, :cond_2

    .line 633
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v19, v12, v11

    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v21, v12, v2

    mul-double v19, v19, v21

    mul-double v19, v19, v21

    add-double v17, v17, v19

    .line 634
    iget v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    sub-int/2addr v12, v11

    add-int/lit8 v12, v12, -0x2

    add-int/2addr v2, v12

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    cmpl-double v2, v17, v13

    if-lez v2, :cond_3

    add-int v2, v5, v4

    .line 637
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    aput-wide v11, v7, v2

    goto :goto_2

    :cond_3
    add-int v2, v5, v4

    .line 639
    aput-wide v13, v7, v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 642
    :cond_4
    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    move v2, v1

    .line 643
    :goto_3
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v5, :cond_5

    .line 644
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v17, v5, v2

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v19, v5, v2

    mul-double v17, v17, v19

    mul-double v17, v17, v19

    add-double v11, v11, v17

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    cmpl-double v2, v11, v13

    if-lez v2, :cond_6

    .line 647
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    div-double v11, v15, v11

    :cond_6
    move v2, v1

    .line 650
    :goto_4
    iget v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v5, :cond_a

    .line 652
    invoke-static {v8, v13, v14}, Ljava/util/Arrays;->fill([DD)V

    add-int v5, v10, v2

    sub-int/2addr v5, v1

    add-int/lit8 v5, v5, -0x1

    move v15, v1

    move-wide/from16 v16, v13

    :goto_5
    if-ge v15, v2, :cond_8

    add-int/lit8 v18, v5, 0x1

    add-int/lit8 v19, v2, 0x1

    move/from16 v13, v19

    .line 656
    :goto_6
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v14, :cond_7

    add-int v14, v13, v6

    .line 657
    aget-wide v21, v8, v14

    move/from16 v23, v10

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v24, v10, v15

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v26, v10, v5

    mul-double v24, v24, v26

    aget-wide v26, v10, v18

    mul-double v24, v24, v26

    add-double v21, v21, v24

    aput-wide v21, v8, v14

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v10, v23

    goto :goto_6

    :cond_7
    move/from16 v23, v10

    .line 660
    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v21, v10, v15

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v24, v10, v5

    mul-double v21, v21, v24

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v24, v10, v15

    mul-double v21, v21, v24

    add-double v16, v16, v21

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x2

    add-int/2addr v5, v14

    add-int/lit8 v15, v15, 0x1

    move/from16 v10, v23

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_8
    move/from16 v23, v10

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v2, 0x1

    move v13, v10

    .line 664
    :goto_7
    iget v14, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v13, v14, :cond_9

    add-int v14, v13, v6

    .line 665
    aget-wide v21, v8, v14

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v24, v15, v2

    iget-object v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->r:[D

    aget-wide v26, v15, v5

    mul-double v24, v24, v26

    add-double v21, v21, v24

    aput-wide v21, v8, v14

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v14, v13, -0x1

    sub-int/2addr v14, v1

    sub-int v15, v13, v1

    mul-int/2addr v14, v15

    .line 667
    div-int/lit8 v14, v14, 0x2

    add-int/2addr v14, v2

    sub-int/2addr v14, v1

    add-int v15, v2, v4

    aget-wide v24, v7, v15

    mul-double v21, v21, v24

    add-int v15, v13, v4

    aget-wide v24, v7, v15

    mul-double v21, v21, v24

    aput-wide v21, v3, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 671
    :cond_9
    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->d:[D

    aget-wide v13, v5, v2

    iget-object v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->rhs:[D

    aget-wide v21, v5, v2

    mul-double v13, v13, v21

    add-double v16, v16, v13

    add-int/2addr v2, v4

    add-int v5, v2, v9

    .line 672
    aget-wide v13, v7, v2

    mul-double v16, v16, v13

    mul-double v16, v16, v11

    aput-wide v16, v3, v5

    move v2, v10

    move/from16 v10, v23

    const-wide/16 v13, 0x0

    goto/16 :goto_4

    :cond_a
    return-object v3

    :cond_b
    :goto_8
    const/4 v1, 0x0

    return-object v1
.end method

.method public hasIntercept()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    return v0
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 905
    iget v0, p0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v0

    return-object v0
.end method

.method public regress(I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 919
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v4, v1

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_b

    .line 924
    iget v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-gt v1, v2, :cond_a

    .line 929
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 930
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 932
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v7

    .line 934
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 936
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v2

    move v6, v4

    move v14, v6

    .line 939
    :goto_0
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v9, v8

    if-ge v6, v9, :cond_1

    .line 940
    aget-boolean v8, v8, v6

    if-nez v8, :cond_0

    add-int/lit8 v14, v14, 0x1

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_9

    .line 947
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v8, v8, v6

    if-eq v8, v6, :cond_8

    .line 957
    array-length v6, v7

    new-array v9, v6, [D

    .line 958
    array-length v6, v2

    new-array v6, v6, [D

    .line 960
    array-length v8, v7

    new-array v8, v8, [I

    move v10, v4

    .line 961
    :goto_2
    iget v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v10, v11, :cond_4

    move v11, v4

    :goto_3
    if-ge v11, v1, :cond_3

    .line 963
    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v12, v12, v11

    if-ne v12, v10, :cond_2

    .line 964
    aget-wide v12, v7, v11

    aput-wide v12, v9, v10

    .line 965
    aput v11, v8, v10

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_4
    move v1, v4

    move v10, v1

    .line 974
    :goto_4
    array-length v11, v7

    if-ge v1, v11, :cond_7

    .line 975
    aget v11, v8, v1

    move v12, v4

    :goto_5
    if-gt v12, v1, :cond_6

    .line 977
    aget v13, v8, v12

    if-le v11, v13, :cond_5

    add-int/lit8 v15, v11, 0x1

    mul-int/2addr v15, v11

    .line 979
    div-int/2addr v15, v3

    add-int/2addr v15, v13

    goto :goto_6

    :cond_5
    add-int/lit8 v15, v13, 0x1

    mul-int/2addr v13, v15

    .line 981
    div-int/2addr v13, v3

    add-int v15, v13, v11

    .line 983
    :goto_6
    aget-wide v15, v2, v15

    aput-wide v15, v6, v10

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 986
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v10, v5, [[D

    aput-object v6, v10, v4

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v22, 0x0

    const/4 v11, 0x1

    move-object v8, v1

    move/from16 v21, v15

    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v8 .. v22}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 953
    :cond_9
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v8, v5, [[D

    aput-object v2, v8, v4

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v15, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v20, 0x0

    const/4 v9, 0x1

    move-object v6, v1

    move-wide/from16 v17, v12

    move v12, v14

    move-wide v13, v2

    move v2, v15

    move-wide v15, v4

    move/from16 v19, v2

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 925
    :cond_a
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v4

    aput-object v7, v3, v5

    invoke-direct {v2, v6, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 920
    :cond_b
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v6, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v7, v3, v4

    aput-object v1, v3, v5

    invoke-direct {v2, v6, v3}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1005
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gt v2, v3, :cond_11

    .line 1009
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    int-to-long v2, v3

    cmp-long v2, v7, v2

    if-lez v2, :cond_10

    .line 1014
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([I)V

    move v2, v5

    move v3, v2

    .line 1016
    :goto_0
    array-length v7, v1

    const/4 v8, -0x1

    if-ge v2, v7, :cond_2

    .line 1017
    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v2, v7, :cond_1

    if-lez v2, :cond_0

    .line 1021
    aget v7, v1, v2

    add-int/lit8 v9, v2, -0x1

    aget v9, v1, v9

    if-ne v7, v9, :cond_0

    .line 1022
    aput v8, v1, v2

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1018
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX_LARGER_THAN_MAX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    :cond_2
    if-lez v3, :cond_5

    .line 1029
    array-length v2, v1

    sub-int/2addr v2, v3

    new-array v2, v2, [I

    move v3, v5

    move v7, v3

    .line 1030
    :goto_1
    array-length v9, v1

    if-ge v3, v9, :cond_4

    .line 1031
    aget v9, v1, v3

    if-le v9, v8, :cond_3

    .line 1032
    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    move-object v1, v2

    .line 1040
    :cond_5
    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->reorderRegressors([II)I

    .line 1041
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->tolset()V

    .line 1042
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->singcheck()V

    .line 1044
    array-length v2, v1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->regcf(I)[D

    move-result-object v8

    .line 1046
    invoke-direct/range {p0 .. p0}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->ss()V

    .line 1048
    array-length v2, v1

    invoke-direct {v0, v2}, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->cov(I)[D

    move-result-object v2

    move v3, v5

    move v15, v3

    .line 1051
    :goto_2
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->lindep:[Z

    array-length v9, v7

    if-ge v3, v9, :cond_7

    .line 1052
    aget-boolean v7, v7, v3

    if-nez v7, :cond_6

    add-int/lit8 v15, v15, 0x1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_7
    move v3, v5

    .line 1058
    :goto_3
    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    if-ge v3, v7, :cond_f

    .line 1059
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    aget v7, v7, v3

    aget v9, v1, v3

    if-eq v7, v9, :cond_e

    .line 1069
    array-length v3, v8

    new-array v10, v3, [D

    .line 1070
    array-length v3, v8

    new-array v3, v3, [I

    move v7, v5

    .line 1071
    :goto_4
    array-length v9, v1

    if-ge v7, v9, :cond_a

    move v9, v5

    .line 1072
    :goto_5
    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->vorder:[I

    array-length v12, v11

    if-ge v9, v12, :cond_9

    .line 1073
    aget v11, v11, v9

    aget v12, v1, v7

    if-ne v11, v12, :cond_8

    .line 1074
    aget-wide v11, v8, v9

    aput-wide v11, v10, v7

    .line 1075
    aput v9, v3, v7

    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1079
    :cond_a
    array-length v1, v2

    new-array v1, v1, [D

    move v7, v5

    move v9, v7

    .line 1084
    :goto_6
    array-length v11, v8

    if-ge v7, v11, :cond_d

    .line 1085
    aget v11, v3, v7

    move v12, v5

    :goto_7
    if-gt v12, v7, :cond_c

    .line 1087
    aget v13, v3, v12

    if-le v11, v13, :cond_b

    add-int/lit8 v14, v11, 0x1

    mul-int/2addr v14, v11

    .line 1089
    div-int/2addr v14, v4

    add-int/2addr v14, v13

    goto :goto_8

    :cond_b
    add-int/lit8 v14, v13, 0x1

    mul-int/2addr v13, v14

    .line 1091
    div-int/2addr v13, v4

    add-int v14, v13, v11

    .line 1093
    :goto_8
    aget-wide v13, v2, v14

    aput-wide v13, v1, v9

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    :cond_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1096
    :cond_d
    new-instance v2, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v11, v6, [[D

    aput-object v1, v11, v5

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v23, 0x0

    const/4 v12, 0x1

    move-object v9, v2

    move-wide/from16 v16, v3

    move-wide/from16 v18, v5

    move-wide/from16 v20, v7

    move/from16 v22, v1

    invoke-direct/range {v9 .. v23}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v2

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1065
    :cond_f
    new-instance v1, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    new-array v9, v6, [[D

    aput-object v2, v9, v5

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumy:D

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sumsqy:D

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->sserr:D

    iget-boolean v6, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->hasIntercept:Z

    const/16 v21, 0x0

    const/4 v10, 0x1

    move-object v7, v1

    move-wide/from16 v18, v13

    move v13, v15

    move-wide v14, v2

    move-wide/from16 v16, v4

    move/from16 v20, v6

    invoke-direct/range {v7 .. v21}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v1

    .line 1010
    :cond_10
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nobs:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v1, v2, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 1006
    :cond_11
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_MANY_REGRESSORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v7, v0, Lorg/apache/commons/math3/stat/regression/MillerUpdatingRegression;->nvars:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    aput-object v7, v4, v6

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method
