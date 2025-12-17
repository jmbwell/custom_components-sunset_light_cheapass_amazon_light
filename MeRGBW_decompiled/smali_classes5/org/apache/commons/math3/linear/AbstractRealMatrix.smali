.class public abstract Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "AbstractRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrix;


# static fields
.field private static final DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 46
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getInstance(Ljava/util/Locale;)Lorg/apache/commons/math3/linear/RealMatrixFormat;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    .line 49
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->getFormat()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    if-lt p2, v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p1

    .line 68
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p2
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 78
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 82
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 85
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public addToEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 596
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 597
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v0

    add-double/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    return-void
.end method

.method public abstract copy()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method public copySubMatrix(IIII[[D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 347
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v1, p4, 0x1

    sub-int/2addr v1, p3

    .line 350
    array-length v2, p5

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    aget-object v2, p5, v3

    array-length v2, v2

    if-lt v2, v1, :cond_2

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 356
    aget-object v3, p5, v2

    array-length v3, v3

    if-lt v3, v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 357
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p5

    aget-object p3, p5, v2

    array-length p3, p3

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1

    .line 362
    :cond_1
    new-instance v3, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;

    invoke-direct {v3, p0, p5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$4;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[[D)V

    move-object v2, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    return-void

    .line 351
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p5

    aget-object p3, p5, v3

    array-length p3, p3

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public copySubMatrix([I[I[[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 393
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V

    .line 394
    array-length v0, p2

    .line 395
    array-length v1, p3

    array-length v2, p1

    const/4 v3, 0x0

    if-lt v1, v2, :cond_3

    aget-object v1, p3, v3

    array-length v1, v1

    if-lt v1, v0, :cond_3

    move v1, v3

    .line 401
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 402
    aget-object v2, p3, v1

    .line 403
    array-length v4, v2

    if-lt v4, v0, :cond_1

    move v4, v3

    .line 407
    :goto_1
    array-length v5, p2

    if-ge v4, v5, :cond_0

    .line 408
    aget v5, p1, v1

    aget v6, p2, v4

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p3, p3

    array-length v1, v2

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, p3, v1, p1, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0

    :cond_2
    return-void

    .line 397
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v1, p3

    aget-object p3, p3, v3

    array-length p3, p3

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public abstract createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 932
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 935
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/RealMatrix;

    .line 936
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 937
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v3

    .line 938
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v4

    if-eq v4, v1, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_0
    if-ge v4, v1, :cond_5

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_4

    .line 943
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method public getColumn(I)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 570
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 571
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 572
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 574
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract getColumnDimension()I
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 477
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 478
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    const/4 v1, 0x1

    .line 479
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 481
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 526
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumn(I)[D

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public getData()[[D
    .locals 7

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

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

    .line 229
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 230
    aget-object v3, v0, v2

    move v4, v1

    .line 231
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 232
    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getEntry(II)D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public getFrobeniusNorm()D
    .locals 2

    .line 279
    new-instance v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 2

    .line 241
    new-instance v0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$1;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getRow(I)[D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 545
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 546
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 547
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract getRowDimension()I
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 448
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 449
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x1

    .line 450
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 452
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 506
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRow(I)[D

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 307
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    .line 309
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_1

    move v2, p3

    :goto_1
    if-gt v2, p4, :cond_0

    sub-int v3, v1, p1

    sub-int v4, v2, p3

    .line 313
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v5

    invoke-interface {v0, v3, v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSubMatrix([I[I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 324
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;[I[I)V

    .line 326
    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 328
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;

    invoke-direct {v1, p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[I[I)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D

    return-object v0
.end method

.method public getTrace()D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 648
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 649
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    .line 655
    invoke-virtual {p0, v3, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    .line 651
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2
.end method

.method public hashCode()I
    .locals 10

    .line 959
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 960
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    const/16 v2, 0xd9

    add-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    add-int/lit8 v6, v4, 0x1

    mul-int/lit8 v6, v6, 0xb

    add-int/lit8 v7, v5, 0x1

    mul-int/lit8 v8, v7, 0x11

    add-int/2addr v6, v8

    .line 965
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v5

    mul-int/2addr v6, v5

    add-int/2addr v2, v6

    move v5, v7

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public isSquare()Z
    .locals 2

    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 140
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 142
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 143
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 144
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 145
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_1

    const-wide/16 v7, 0x0

    move v9, v4

    :goto_2
    if-ge v9, v2, :cond_0

    .line 150
    invoke-virtual {p0, v5, v9}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-interface {p1, v9, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 152
    :cond_0
    invoke-interface {v3, v5, v6, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public multiplyEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 603
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 604
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v0

    mul-double/2addr v0, p3

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    return-void
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 686
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->operate([D)[D

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 688
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 690
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 694
    new-array v3, v1, [D

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    const-wide/16 v5, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v2, :cond_0

    .line 698
    invoke-virtual {p0, v4, v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 700
    :cond_0
    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 703
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 691
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v0, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public operate([D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 663
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 664
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 665
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 669
    new-array v2, v0, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_0

    .line 673
    invoke-virtual {p0, v4, v7}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v8

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 675
    :cond_0
    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 666
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public power(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    if-ltz p1, :cond_7

    .line 172
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result p1

    invoke-static {p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v0

    .line 193
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    move v4, v2

    move v5, v3

    .line 197
    :goto_0
    array-length v6, p1

    if-ge v4, v6, :cond_3

    .line 198
    aget-char v6, p1, v4

    const/16 v7, 0x31

    if-ne v6, v7, :cond_2

    .line 199
    array-length v6, p1

    sub-int/2addr v6, v4

    sub-int/2addr v6, v0

    .line 200
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v5, v3, :cond_2

    move v5, v6

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v5, 0x1

    .line 209
    new-array p1, p1, [Lorg/apache/commons/math3/linear/RealMatrix;

    .line 210
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    aput-object v3, p1, v2

    :goto_1
    if-gt v0, v5, :cond_4

    add-int/lit8 v2, v0, -0x1

    .line 213
    aget-object v2, p1, v2

    invoke-interface {v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    aput-object v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 218
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 219
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, p1, v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    goto :goto_2

    :cond_5
    return-object v0

    .line 173
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    .line 169
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_EXPONENT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 162
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 731
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-object v2, p1

    check-cast v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->preMultiply([D)[D

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 734
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    .line 735
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    .line 736
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 740
    new-array v3, v2, [D

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    const-wide/16 v5, 0x0

    move v7, v0

    :goto_1
    if-ge v7, v1, :cond_0

    .line 744
    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 746
    :cond_0
    aput-wide v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 749
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1

    .line 737
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public preMultiply([D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 710
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 711
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 712
    array-length v2, p1

    if-ne v2, v0, :cond_2

    .line 716
    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_0

    .line 720
    invoke-virtual {p0, v7, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v8

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 722
    :cond_0
    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 713
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 112
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 113
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 116
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    add-double/2addr v6, p1

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 125
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 126
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 127
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 130
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    mul-double/2addr v6, p1

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public setColumn(I[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 583
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 584
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 585
    array-length v1, p2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    aget-wide v2, p2, v1

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 586
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 490
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 491
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 492
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 499
    invoke-interface {p2, v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-virtual {p0, v2, p1, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 494
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 532
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 533
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 534
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 539
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 535
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public abstract setEntry(IID)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public setRow(I[D)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 558
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 559
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 560
    array-length v1, p2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 564
    aget-wide v2, p2, v1

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 561
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 461
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 462
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 463
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 470
    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-virtual {p0, p1, v2, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 465
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 512
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 513
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v0

    .line 514
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 519
    invoke-virtual {p2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v2

    invoke-virtual {p0, p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 515
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setSubMatrix([[DII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 417
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 418
    array-length v0, p1

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 423
    aget-object v2, p1, v1

    array-length v2, v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 429
    aget-object v5, p1, v4

    array-length v5, v5

    if-ne v5, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 430
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v4

    array-length p1, p1

    invoke-direct {p2, v2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 434
    :cond_1
    invoke-static {p0, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 435
    invoke-static {p0, p3}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    add-int v4, v0, p2

    sub-int/2addr v4, v3

    .line 436
    invoke-static {p0, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    add-int v4, v2, p3

    sub-int/2addr v4, v3

    .line 437
    invoke-static {p0, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_2

    add-int v5, p2, v3

    add-int v6, p3, v4

    .line 441
    aget-object v7, p1, v3

    aget-wide v8, v7, v4

    invoke-virtual {p0, v5, v6, v8, v9}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 425
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1

    .line 420
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 95
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 98
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 99
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 102
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-interface {v2, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    .line 913
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    sget-object v1, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->DEFAULT_FORMAT:Lorg/apache/commons/math3/linear/RealMatrixFormat;

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/linear/RealMatrixFormat;->format(Lorg/apache/commons/math3/linear/RealMatrix;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    .line 609
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v0

    .line 610
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v1

    .line 611
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 612
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractRealMatrix$5;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix$5;-><init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    return-object v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 9

    .line 817
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v7

    .line 818
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 819
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 822
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 823
    invoke-interface {p1, v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v3

    .line 824
    invoke-virtual {p0, v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 827
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 848
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 849
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 853
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v1

    .line 854
    invoke-interface {p1, v0, p4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    .line 855
    invoke-virtual {p0, v0, p4, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 858
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 9

    .line 832
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v7

    .line 833
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 834
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 837
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-interface {p1, v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 840
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 866
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 867
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 871
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p1, v0, p4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 874
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 2

    .line 879
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 893
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 2

    .line 884
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 902
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 9

    .line 755
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v7

    .line 756
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 757
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    .line 760
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    .line 761
    invoke-interface {p1, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v3

    .line 762
    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 765
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 786
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 787
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    move v0, p4

    :goto_1
    if-gt v0, p5, :cond_0

    .line 791
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v1

    .line 792
    invoke-interface {p1, p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    .line 793
    invoke-virtual {p0, p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setEntry(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 796
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 9

    .line 770
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v7

    .line 771
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 772
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    .line 775
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-interface {p1, v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 778
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 804
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    move v0, p4

    :goto_1
    if-gt v0, p5, :cond_0

    .line 809
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v1

    invoke-interface {p1, p2, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 812
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p1

    return-wide p1
.end method
