.class public abstract Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.super Ljava/lang/Object;
.source "AbstractFieldMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrix;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrix<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p2, :cond_1

    if-lez p3, :cond_0

    .line 84
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    return-void

    .line 81
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p3, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p1
.end method

.method protected static buildArray(Lorg/apache/commons/math3/Field;I)[Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/FieldElement;

    return-object p0
.end method

.method protected static buildArray(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[Lorg/apache/commons/math3/FieldElement;

    return-object p0
.end method

.method protected static extractField([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([TT;)",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 120
    array-length v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 123
    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    return-object p0

    .line 121
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method protected static extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 101
    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 104
    aget-object p0, p0, v0

    array-length v1, p0

    if-eqz v1, :cond_0

    .line 107
    aget-object p0, p0, v0

    invoke-interface {p0}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    return-object p0

    .line 105
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 102
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 99
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 178
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 180
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 181
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 182
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 185
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public abstract addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method protected checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1120
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1122
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method protected checkColumnIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1046
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 1047
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COLUMN_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1152
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1153
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected checkRowIndex(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    .line 1032
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    .line 1033
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROW_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method protected checkSubMatrixIndex(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1067
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 1068
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    const/4 v0, 0x1

    if-lt p2, p1, :cond_1

    .line 1074
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 1075
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    if-lt p4, p3, :cond_0

    return-void

    .line 1077
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_COLUMN_AFTER_FINAL_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p1, p2, p4, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 1070
    :cond_1
    new-instance p3, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p3, p4, p2, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p3
.end method

.method protected checkSubMatrixIndex([I[I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1098
    array-length v0, p1

    if-eqz v0, :cond_2

    array-length v0, p2

    if-eqz v0, :cond_2

    .line 1103
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p1, v2

    .line 1104
    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1106
    :cond_0
    array-length p1, p2

    :goto_1
    if-ge v1, p1, :cond_1

    aget v0, p2, v1

    .line 1107
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void

    .line 1100
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p1

    .line 1096
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method protected checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1136
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 1138
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    invoke-direct {v0, v1, p1, v2, v3}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public abstract copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end method

.method public copySubMatrix(IIII[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 391
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    add-int/lit8 v0, p2, 0x1

    sub-int/2addr v0, p1

    add-int/lit8 v1, p4, 0x1

    sub-int/2addr v1, p3

    .line 394
    array-length v2, p5

    const/4 v3, 0x0

    if-lt v2, v0, :cond_0

    aget-object v2, p5, v3

    array-length v2, v2

    if-lt v2, v1, :cond_0

    .line 402
    new-instance v5, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;

    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v5, p0, v0, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    invoke-virtual/range {v4 .. v9}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    return-void

    .line 395
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p5

    aget-object p3, p5, v3

    array-length p3, p3

    invoke-direct {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public copySubMatrix([I[I[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 434
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex([I[I)V

    .line 435
    array-length v0, p3

    array-length v1, p1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    aget-object v0, p3, v2

    array-length v0, v0

    array-length v1, p2

    if-lt v0, v1, :cond_2

    move v0, v2

    .line 444
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 445
    aget-object v1, p3, v0

    move v3, v2

    .line 446
    :goto_1
    array-length v4, p2

    if-ge v3, v4, :cond_0

    .line 447
    aget v4, p1, v0

    aget v5, p2, v3

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 437
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length v1, p3

    aget-object p3, p3, v2

    array-length p3, p3

    array-length p1, p1

    array-length p2, p2

    invoke-direct {v0, v1, p3, p1, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v0
.end method

.method public abstract createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 986
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 989
    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 990
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 991
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v3

    .line 992
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v4

    if-ne v4, v3, :cond_6

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

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

    .line 997
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

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

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 623
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 624
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 625
    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 627
    invoke-virtual {p0, v2, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract getColumnDimension()I
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 523
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 524
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    const/4 v1, 0x1

    .line 525
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 527
    invoke-virtual {p0, v3, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v1, v3, v2, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 575
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumn(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 331
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 332
    aget-object v3, v0, v2

    move v4, v1

    .line 333
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 334
    invoke-virtual {p0, v2, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public abstract getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    return-object v0
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 596
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 597
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 598
    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 600
    invoke-virtual {p0, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public abstract getRowDimension()I
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 492
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    const/4 v1, 0x1

    .line 493
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 495
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 554
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRow(I)[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 345
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    .line 347
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    move v1, p1

    :goto_0
    if-gt v1, p2, :cond_1

    move v2, p3

    :goto_1
    if-gt v2, p4, :cond_0

    sub-int v3, v1, p1

    sub-int v4, v2, p3

    .line 351
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v0, v3, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSubMatrix([I[I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 365
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex([I[I)V

    .line 368
    array-length v0, p1

    array-length v1, p2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 370
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v1, p0, v2, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$1;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[I[I)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public getTrace()Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 689
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 693
    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 695
    invoke-virtual {p0, v2, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    .line 691
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v2
.end method

.method public hashCode()I
    .locals 9

    .line 1013
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 1014
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    const v2, 0x98943e

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

    .line 1019
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

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

    .line 677
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 243
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 245
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 246
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    .line 247
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 248
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_1

    .line 251
    iget-object v7, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    move v8, v4

    :goto_2
    if-ge v8, v2, :cond_0

    .line 253
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    invoke-interface {p1, v8, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 255
    :cond_0
    invoke-interface {v3, v5, v6, v7}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method public abstract multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public operate(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 725
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 727
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 728
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 729
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 733
    iget-object v3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v3, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    move v4, v0

    :goto_0
    if-ge v4, v1, :cond_1

    .line 735
    iget-object v5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v0

    :goto_1
    if-ge v6, v2, :cond_0

    .line 737
    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 739
    :cond_0
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 742
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v1, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1

    .line 730
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p1

    invoke-direct {v0, p1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 703
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 704
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 705
    array-length v2, p1

    if-ne v2, v1, :cond_2

    .line 709
    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 711
    iget-object v5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    .line 713
    invoke-virtual {p0, v4, v6}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    aget-object v8, p1, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 715
    :cond_0
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 706
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public power(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareMatrixException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p1, :cond_7

    .line 275
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_0

    .line 280
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createFieldIdentityMatrix(Lorg/apache/commons/math3/Field;I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    return-object p1

    :cond_1
    sub-int/2addr p1, v0

    .line 296
    invoke-static {p1}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 298
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 300
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_3

    .line 301
    aget-char v4, p1, v3

    const/16 v5, 0x31

    if-ne v4, v5, :cond_2

    .line 302
    array-length v4, p1

    sub-int/2addr v4, v3

    sub-int/2addr v4, v0

    .line 303
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 307
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    array-length v4, p1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 310
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 312
    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_4

    add-int/lit8 v2, v0, -0x1

    .line 313
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/FieldMatrix;

    .line 314
    invoke-interface {v2, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 315
    invoke-virtual {v3, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 318
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copy()Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    .line 320
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 321
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/FieldMatrix;

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    goto :goto_2

    :cond_5
    return-object p1

    .line 276
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p1

    .line 272
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 265
    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/FieldMatrix;->multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p1

    return-object p1
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 771
    :try_start_0
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    move-object v3, p1

    check-cast v3, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 773
    :catch_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    .line 774
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    .line 775
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 779
    iget-object v3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 781
    iget-object v5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v0

    :goto_1
    if-ge v6, v1, :cond_0

    .line 783
    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 785
    :cond_0
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {p1, v1, v3, v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1

    .line 776
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p1

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 749
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 750
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 751
    array-length v2, p1

    if-ne v2, v0, :cond_2

    .line 755
    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    .line 757
    iget-object v5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_0

    .line 759
    invoke-virtual {p0, v6, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    aget-object v8, p1, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 761
    :cond_0
    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    .line 752
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {v1, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 214
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 215
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 218
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 227
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 228
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 229
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 232
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 637
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 638
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 639
    array-length v1, p2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 643
    aget-object v2, p2, v1

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 640
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 537
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 538
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 539
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 546
    invoke-interface {p2, v2, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v2, p1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 541
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 582
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 583
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 584
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 589
    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, v1, p1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 585
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public abstract setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 610
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 611
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 612
    array-length v1, p2

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 616
    aget-object v2, p2, v1

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 613
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 505
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 506
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 507
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 514
    invoke-interface {p2, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 509
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 560
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 561
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 562
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 567
    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0, p1, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 563
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 461
    array-length v0, p1

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 466
    aget-object v2, p1, v1

    array-length v2, v2

    if-eqz v2, :cond_4

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    .line 472
    aget-object v5, p1, v4

    array-length v5, v5

    if-ne v5, v2, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 473
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v4

    array-length p1, p1

    invoke-direct {p2, v2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p2

    .line 477
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 478
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    add-int v4, v0, p2

    sub-int/2addr v4, v3

    .line 479
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    add-int v4, v2, p3

    sub-int/2addr v4, v3

    .line 480
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_3

    move v4, v1

    :goto_2
    if-ge v4, v2, :cond_2

    add-int v5, p2, v3

    add-int v6, p3, v4

    .line 484
    aget-object v7, p1, v3

    aget-object v7, v7, v4

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 468
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1

    .line 463
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1

    .line 459
    :cond_6
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 196
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 198
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 200
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_0

    .line 203
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v4, v5, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 948
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 949
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 950
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 951
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2e

    .line 952
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 953
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "{"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v5, v3

    .line 955
    :goto_0
    const-string v6, "}"

    if-ge v5, v0, :cond_3

    .line 956
    const-string v7, ","

    if-lez v5, :cond_0

    .line 957
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 959
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_2

    if-lez v8, :cond_1

    .line 962
    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 964
    :cond_1
    invoke-virtual {p0, v5, v8}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 966
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 969
    :cond_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 970
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v0

    .line 662
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v1

    .line 663
    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v0

    .line 664
    new-instance v1, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$3;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-direct {v1, p0, v2, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$3;-><init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 856
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v7

    .line 857
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 858
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 861
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    .line 862
    invoke-interface {p1, v2, v1, v3}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    .line 863
    invoke-virtual {p0, v2, v1, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 866
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 887
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 888
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 892
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    .line 893
    invoke-interface {p1, v0, p4, v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    .line 894
    invoke-virtual {p0, v0, p4, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 897
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 871
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v7

    .line 872
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 873
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 876
    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 879
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 905
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 906
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 910
    invoke-virtual {p0, v0, p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v0, p4, v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 913
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 918
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 931
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 923
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 939
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 794
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v7

    .line 795
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 796
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    .line 799
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    .line 800
    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    .line 801
    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 804
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 825
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 826
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    move v0, p4

    :goto_1
    if-gt v0, p5, :cond_0

    .line 830
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    .line 831
    invoke-interface {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    .line 832
    invoke-virtual {p0, p2, v0, v1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 835
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 809
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v7

    .line 810
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v8

    add-int/lit8 v4, v7, -0x1

    add-int/lit8 v6, v8, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 811
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v8, :cond_0

    .line 814
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 817
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 843
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 844
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    move v0, p4

    :goto_1
    if-gt v0, p5, :cond_0

    .line 848
    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 851
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    return-object p1
.end method
