.class public abstract Lorg/apache/commons/math3/linear/RealVector;
.super Ljava/lang/Object;
.source "RealVector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;,
        Lorg/apache/commons/math3/linear/RealVector$Entry;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unmodifiableRealVector(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 1215
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/RealVector$2;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 233
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 234
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    .line 235
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 236
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 238
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v2

    .line 239
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public addToEntry(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    add-double/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    return-void
.end method

.method public abstract append(D)Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public abstract append(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
.end method

.method protected checkIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 189
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 191
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected checkIndices(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, v0, :cond_1

    if-lt p2, p1, :cond_0

    return-void

    .line 218
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v2, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 213
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 209
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p2, v1, p1, v2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method protected checkVectorDimensions(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    .line 178
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v1, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method protected checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 164
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(I)V

    return-void
.end method

.method public combine(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 838
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/linear/RealVector;->combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public combineToSelf(DDLorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 855
    invoke-virtual {p0, p5}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    const/4 v0, 0x0

    .line 856
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 857
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v1

    .line 858
    invoke-virtual {p5, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    mul-double/2addr v1, p1

    mul-double/2addr v3, p3

    add-double/2addr v1, v3

    .line 859
    invoke-virtual {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public abstract copy()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method public cosine(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    .line 329
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v0, v4

    if-eqz v6, :cond_0

    cmpl-double v4, v2, v4

    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v4

    mul-double/2addr v0, v2

    div-double/2addr v4, v0

    return-wide v4

    .line 333
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 306
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 308
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 310
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public abstract ebeDivide(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method

.method public abstract ebeMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 1096
    new-instance p1, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public abstract getDimension()I
.end method

.method public getDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 375
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 377
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 378
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 379
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 380
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    mul-double/2addr v4, v4

    add-double/2addr v1, v4

    goto :goto_0

    .line 383
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getEntry(I)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public getL1Distance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 460
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 463
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 465
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getL1Norm()D
    .locals 5

    .line 419
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 420
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 422
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getLInfDistance(Lorg/apache/commons/math3/linear/RealVector;)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 486
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 488
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 489
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 491
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getLInfNorm()D
    .locals 5

    .line 439
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 440
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 441
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 442
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public getMaxIndex()I
    .locals 7

    .line 536
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    .line 537
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 539
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v5

    cmpl-double v5, v5, v2

    if-ltz v5, :cond_0

    .line 540
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v1

    .line 541
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMaxValue()D
    .locals 2

    .line 554
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getMaxIndex()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 555
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getMinIndex()I
    .locals 7

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 506
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 507
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 508
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v5

    cmpg-double v5, v5, v2

    if-gtz v5, :cond_0

    .line 509
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v1

    .line 510
    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMinValue()D
    .locals 2

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getMinIndex()I

    move-result v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    goto :goto_0

    .line 524
    :cond_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getNorm()D
    .locals 5

    .line 398
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 399
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 400
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 401
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v3

    mul-double/2addr v3, v3

    add-double/2addr v1, v3

    goto :goto_0

    .line 404
    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public abstract getSubVector(II)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public hashCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .line 1109
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract isInfinite()Z
.end method

.method public abstract isNaN()Z
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .line 752
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 753
    new-instance v1, Lorg/apache/commons/math3/linear/RealVector$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/RealVector$1;-><init>(Lorg/apache/commons/math3/linear/RealVector;I)V

    return-object v1
.end method

.method public map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 798
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/linear/RealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAdd(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 273
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-eqz v0, :cond_0

    .line 285
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Add;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Add;-><init>()V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p0
.end method

.method public mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 611
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 622
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Divide;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Divide;-><init>()V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapMultiplyToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 578
    new-instance v0, Lorg/apache/commons/math3/analysis/function/Multiply;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/function/Multiply;-><init>()V

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->fix2ndArgument(Lorg/apache/commons/math3/analysis/BivariateFunction;D)Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapSubtract(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 589
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapSubtractToSelf(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 0

    neg-double p1, p1

    .line 600
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/RealVector;->mapAddToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public mapToSelf(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    .line 815
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 816
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 817
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 818
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v2

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setValue(D)V

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    .line 632
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 633
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    .line 635
    instance-of v2, p1, Lorg/apache/commons/math3/linear/SparseRealVector;

    if-nez v2, :cond_1

    instance-of v2, p0, Lorg/apache/commons/math3/linear/SparseRealVector;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    goto :goto_1

    .line 636
    :cond_1
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/OpenMapRealMatrix;-><init>(II)V

    :goto_1
    const/4 v3, 0x0

    move v4, v3

    :goto_2
    if-ge v4, v0, :cond_3

    move v5, v3

    :goto_3
    if-ge v5, v1, :cond_2

    .line 642
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    invoke-virtual {p1, v5}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    return-object v2
.end method

.method public projection(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 660
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 664
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1

    .line 662
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public set(D)V
    .locals 2

    .line 673
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 674
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 675
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 676
    invoke-virtual {v1, p1, p2}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setValue(D)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public abstract setEntry(ID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public abstract setSubVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public sparseIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/commons/math3/linear/RealVector$Entry;",
            ">;"
        }
    .end annotation

    .line 738
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 254
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->checkVectorDimensions(Lorg/apache/commons/math3/linear/RealVector;)V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 255
    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->mapMultiply(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    .line 256
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 259
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v2

    .line 260
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v3

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-virtual {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public toArray()[D
    .locals 5

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    .line 689
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 691
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public unitVector()Lorg/apache/commons/math3/linear/RealVector;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 704
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    .line 708
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->mapDivide(D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0

    .line 706
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public unitize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_0

    .line 722
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getNorm()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->mapDivideToSelf(D)Lorg/apache/commons/math3/linear/RealVector;

    return-void

    .line 720
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 5

    .line 955
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 956
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 958
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v3

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 960
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 979
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->checkIndices(II)V

    .line 980
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 982
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->visit(ID)D

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 984
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 5

    .line 875
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 876
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 878
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v3

    invoke-interface {p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 880
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 899
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->checkIndices(II)V

    .line 900
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 902
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v0

    invoke-interface {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->visit(ID)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 904
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D
    .locals 2

    .line 1000
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1021
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorChangingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D
    .locals 2

    .line 920
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/RealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 941
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/RealVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/RealVectorPreservingVisitor;II)D

    move-result-wide p1

    return-wide p1
.end method
