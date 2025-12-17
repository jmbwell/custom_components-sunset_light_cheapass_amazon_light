.class public Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;
.super Ljava/lang/Object;
.source "FieldHermiteInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final abscissae:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final bottomDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[TT;>;"
        }
    .end annotation
.end field

.field private final topDiagonal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public varargs addSamplePoint(Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 94
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    const/4 v1, 0x0

    move v2, v1

    .line 96
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_4

    .line 98
    aget-object v3, p2, v2

    invoke-virtual {v3}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    .line 100
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 101
    invoke-interface {v0}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v1

    .line 102
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 103
    aget-object v7, v3, v6

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 108
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 109
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    sub-int v7, v5, v2

    invoke-interface {v6, v7, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v6, v2

    move-object v7, v3

    :goto_2
    if-ge v6, v5, :cond_3

    .line 112
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->bottomDiagonal:Ljava/util/List;

    add-int/lit8 v6, v6, 0x1

    sub-int v9, v5, v6

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    .line 113
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 116
    iget-object v10, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {p1, v9}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/FieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    move v10, v1

    .line 117
    :goto_3
    array-length v11, v3

    if-ge v10, v11, :cond_1

    .line 118
    aget-object v11, v7, v10

    aget-object v12, v8, v10

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/FieldElement;

    aput-object v11, v8, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_1
    move-object v7, v8

    goto :goto_2

    .line 114
    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DUPLICATED_ABSCISSA_DIVISION_BY_ZERO:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-direct {p2, v0, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    .line 124
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-virtual {v7}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public derivatives(Lorg/apache/commons/math3/FieldElement;I)[[Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 173
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 178
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    .line 179
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    .line 180
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x0

    .line 181
    aput-object v0, v2, v4

    move v0, v4

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 183
    aget-object v0, v2, v0

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    aput-object v0, v2, v5

    move v0, v5

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v3, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    .line 188
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    .line 189
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v1, v4

    move v3, v4

    .line 190
    :goto_1
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 191
    iget-object v5, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/apache/commons/math3/FieldElement;

    .line 192
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    move v7, p2

    :goto_2
    if-ltz v7, :cond_3

    move v8, v4

    .line 194
    :goto_3
    aget-object v9, v0, v7

    array-length v10, v9

    if-ge v8, v10, :cond_1

    .line 195
    aget-object v10, v9, v8

    aget-object v11, v5, v8

    aget-object v12, v1, v7

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    aput-object v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 198
    :cond_1
    aget-object v8, v1, v7

    invoke-interface {v8, v6}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v1, v7

    if-lez v7, :cond_2

    .line 200
    aget-object v9, v2, v7

    add-int/lit8 v10, v7, -0x1

    aget-object v10, v1, v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v1, v7

    :cond_2
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v0

    .line 175
    :cond_5
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, p2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method

.method public value(Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 142
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/apache/commons/math3/FieldElement;

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    .line 148
    invoke-interface {p1}, Lorg/apache/commons/math3/FieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    move v3, v2

    .line 149
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 150
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->topDiagonal:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    move v5, v2

    .line 151
    :goto_1
    array-length v6, v0

    if-ge v5, v6, :cond_0

    .line 152
    aget-object v6, v0, v5

    aget-object v7, v4, v5

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 154
    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/FieldHermiteInterpolator;->abscissae:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    .line 155
    invoke-interface {v1, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 144
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_INTERPOLATION_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p1
.end method
