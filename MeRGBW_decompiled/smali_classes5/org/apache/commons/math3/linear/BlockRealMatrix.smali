.class public Lorg/apache/commons/math3/linear/BlockRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "BlockRealMatrix.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final BLOCK_SIZE:I = 0x34

.field private static final serialVersionUID:J = 0x4546c684f3b7c9deL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[D

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 98
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 99
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v0, p1, 0x33

    .line 102
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, p2, 0x33

    .line 103
    div-int/lit8 v0, v0, 0x34

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    .line 106
    invoke-static {p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    return-void
.end method

.method public constructor <init>(II[[DZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 148
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 149
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    .line 150
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 p1, p1, 0x33

    .line 153
    div-int/lit8 p1, p1, 0x34

    iput p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 p2, p2, 0x33

    .line 154
    div-int/lit8 p2, p2, 0x34

    iput p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-eqz p4, :cond_0

    mul-int/2addr p1, p2

    .line 158
    new-array p1, p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    goto :goto_0

    .line 161
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    :goto_0
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    .line 165
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge p2, v1, :cond_4

    .line 166
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v1

    move v2, p1

    .line 167
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v3, :cond_3

    .line 168
    aget-object v3, p3, v0

    array-length v3, v3

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v4, v1

    if-ne v3, v4, :cond_2

    if-eqz p4, :cond_1

    .line 173
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, p3, v0

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    aput-object v4, v3, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 169
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v0

    array-length p2, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result p3

    mul-int/2addr v1, p3

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 126
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->toBlocksLayout([[D)[[D

    move-result-object p1

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-void
.end method

.method private blockHeight(I)I
    .locals 2

    .line 1570
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x34

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    mul-int/2addr p1, v1

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method

.method private blockWidth(I)I
    .locals 2

    .line 1579
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x34

    if-ne p1, v0, :cond_0

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    mul-int/2addr p1, v1

    sub-int v1, v0, p1

    :cond_0
    return v1
.end method

.method private copyBlockPart([DIIIII[DIII)V
    .locals 1

    sub-int/2addr p6, p5

    mul-int v0, p3, p2

    add-int/2addr v0, p5

    mul-int/2addr p9, p8

    add-int/2addr p9, p10

    :goto_0
    if-ge p3, p4, :cond_0

    .line 780
    invoke-static {p1, v0, p7, p9, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, p2

    add-int/2addr p9, p8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createBlocksLayout(II)[[D
    .locals 10

    add-int/lit8 v0, p0, 0x33

    .line 257
    div-int/lit8 v0, v0, 0x34

    add-int/lit8 v1, p1, 0x33

    .line 258
    div-int/lit8 v1, v1, 0x34

    mul-int v2, v0, v1

    .line 260
    new-array v2, v2, [[D

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 264
    invoke-static {v7, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v8, v6, 0x34

    add-int/lit8 v9, v8, 0x34

    .line 268
    invoke-static {v9, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int/2addr v9, v8

    mul-int/2addr v9, v7

    .line 270
    new-array v8, v9, [D

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static toBlocksLayout([[D)[[D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 202
    array-length v1, v0

    const/4 v2, 0x0

    .line 203
    aget-object v3, v0, v2

    array-length v3, v3

    add-int/lit8 v4, v1, 0x33

    .line 204
    div-int/lit8 v4, v4, 0x34

    add-int/lit8 v5, v3, 0x33

    .line 205
    div-int/lit8 v5, v5, 0x34

    move v6, v2

    .line 208
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    .line 209
    aget-object v7, v0, v6

    array-length v7, v7

    if-ne v7, v3, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_1
    mul-int v6, v4, v5

    .line 216
    new-array v6, v6, [[D

    move v7, v2

    move v8, v7

    :goto_1
    if-ge v7, v4, :cond_4

    mul-int/lit8 v9, v7, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 220
    invoke-static {v10, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    sub-int v11, v10, v9

    move v12, v2

    :goto_2
    if-ge v12, v5, :cond_3

    mul-int/lit8 v13, v12, 0x34

    add-int/lit8 v14, v13, 0x34

    .line 224
    invoke-static {v14, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    sub-int/2addr v14, v13

    mul-int v15, v11, v14

    .line 228
    new-array v15, v15, [D

    .line 229
    aput-object v15, v6, v8

    move/from16 v16, v1

    move v1, v2

    move v2, v9

    :goto_3
    if-ge v2, v10, :cond_2

    move/from16 v17, v3

    .line 234
    aget-object v3, v0, v2

    invoke-static {v3, v13, v15, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v14

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v17

    goto :goto_3

    :cond_2
    move/from16 v17, v3

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v16

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    add-int/lit8 v7, v7, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    return-object v6
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 351
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 353
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 356
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 357
    aget-object v3, v3, v2

    .line 358
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    .line 359
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v2

    move v6, v1

    .line 360
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 361
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    add-double/2addr v7, v9

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 305
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 308
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 310
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 314
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    move v6, v3

    .line 315
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 318
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v5

    .line 319
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 321
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x34

    add-int/lit8 v12, v11, 0x34

    .line 323
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    move v13, v3

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 327
    aget-wide v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v17

    add-double v15, v15, v17

    aput-wide v15, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->add(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public addToEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1190
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1191
    div-int/lit8 v0, p1, 0x34

    .line 1192
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1193
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1195
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide v0, p2, p1

    add-double/2addr v0, p3

    aput-wide v0, p2, p1

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 6

    .line 290
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 293
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 294
    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copy()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 283
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createMatrix(II)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumn(I)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1118
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1119
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1122
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 1124
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1126
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1127
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1128
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1130
    aget-wide v10, v7, v10

    aput-wide v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    .line 1256
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    return v0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 929
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 930
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 933
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 935
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    .line 938
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move v5, v4

    move v6, v5

    move v7, v6

    .line 939
    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v8, :cond_2

    .line 940
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v8

    .line 941
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    .line 943
    array-length v11, v3

    if-lt v6, v11, :cond_0

    .line 944
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v7, v7, 0x1

    aget-object v3, v3, v7

    move v6, v4

    :cond_0
    add-int/lit8 v11, v6, 0x1

    mul-int v12, v10, v2

    add-int/2addr v12, p1

    .line 947
    aget-wide v12, v9, v12

    aput-wide v12, v3, v6

    add-int/lit8 v10, v10, 0x1

    move v6, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic getColumnMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1043
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1044
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v0, v0, [D

    .line 1047
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 1049
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 1051
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    .line 1052
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v6

    .line 1053
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    .line 1055
    aget-wide v10, v7, v10

    aput-wide v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1059
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public getData()[[D
    .locals 17

    move-object/from16 v0, p0

    .line 597
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v2, v3, v4

    const/4 v2, 0x0

    aput v1, v3, v2

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 598
    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v5, v4

    const/16 v6, 0x34

    mul-int/2addr v5, v6

    sub-int/2addr v3, v5

    move v5, v2

    .line 600
    :goto_0
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v7, :cond_2

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 602
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    move v9, v2

    move v10, v9

    :goto_1
    if-ge v7, v8, :cond_1

    .line 606
    aget-object v11, v1, v7

    .line 607
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v5

    move v13, v2

    move v14, v13

    .line 609
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    sub-int/2addr v15, v4

    if-ge v13, v15, :cond_0

    .line 610
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v16, v12, 0x1

    aget-object v12, v15, v12

    invoke-static {v12, v9, v11, v14, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v14, v14, 0x34

    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v16

    goto :goto_2

    .line 613
    :cond_0
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v12, v13, v12

    invoke-static {v12, v10, v11, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x34

    add-int/2addr v10, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getEntry(II)D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1165
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1166
    div-int/lit8 v0, p1, 0x34

    .line 1167
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1168
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1170
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide p1, p2, p1

    return-wide p1
.end method

.method public getFrobeniusNorm()D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    .line 652
    :goto_0
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v5, v4

    if-ge v3, v5, :cond_1

    .line 653
    aget-object v4, v4, v3

    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_0

    aget-wide v7, v4, v6

    mul-double/2addr v7, v7

    add-double/2addr v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 657
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getNorm()D
    .locals 18

    move-object/from16 v0, p0

    const/16 v1, 0x34

    .line 625
    new-array v1, v1, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v6, v2

    move v5, v4

    .line 627
    :goto_0
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v8, :cond_4

    .line 628
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v8

    .line 629
    invoke-static {v1, v4, v8, v2, v3}, Ljava/util/Arrays;->fill([DIID)V

    move v9, v4

    .line 630
    :goto_1
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v9, v10, :cond_2

    .line 631
    invoke-direct {v0, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    .line 632
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v9

    add-int/2addr v12, v5

    aget-object v11, v11, v12

    move v12, v4

    :goto_2
    if-ge v12, v8, :cond_1

    move-wide v14, v2

    move v13, v4

    :goto_3
    if-ge v13, v10, :cond_0

    mul-int v16, v13, v8

    add-int v16, v16, v12

    .line 636
    aget-wide v16, v11, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 638
    :cond_0
    aget-wide v16, v1, v12

    add-double v16, v16, v14

    aput-wide v16, v1, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v4

    :goto_4
    if-ge v9, v8, :cond_3

    .line 642
    aget-wide v10, v1, v9

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-wide v6
.end method

.method public getRow(I)[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1076
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1077
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1080
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    .line 1083
    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v4, :cond_0

    .line 1084
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 1085
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    mul-int v6, p1, v4

    .line 1086
    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 1250
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    return v0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 843
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 844
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    const/4 v1, 0x1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 847
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    .line 851
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move v4, v3

    move v5, v4

    move v6, v5

    .line 852
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v7, :cond_1

    .line 853
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    .line 854
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    .line 855
    array-length v9, v2

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_0

    mul-int v10, p1, v7

    .line 857
    invoke-static {v8, v10, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 858
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    sub-int/2addr v7, v9

    .line 859
    invoke-static {v8, v10, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    goto :goto_1

    :cond_0
    mul-int v9, p1, v7

    .line 862
    invoke-static {v8, v9, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic getRowMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowMatrix(I)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1011
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1012
    iget v0, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v0, v0, [D

    .line 1015
    div-int/lit8 v1, p1, 0x34

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1018
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v5, :cond_0

    .line 1019
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    .line 1020
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aget-object v6, v6, v7

    mul-int v7, p1, v5

    .line 1021
    invoke-static {v6, v7, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1025
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p1, v0, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p1
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v11, p0

    .line 667
    invoke-static/range {p0 .. p4}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 670
    new-instance v12, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    sub-int v1, p4, p3

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v12, v0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 674
    div-int/lit8 v0, p1, 0x34

    .line 675
    rem-int/lit8 v13, p1, 0x34

    .line 676
    div-int/lit8 v14, p3, 0x34

    .line 677
    rem-int/lit8 v15, p3, 0x34

    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v10, v16

    .line 681
    :goto_0
    iget v0, v12, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v10, v0, :cond_4

    .line 682
    invoke-direct {v12, v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v18

    move v8, v14

    move/from16 v9, v16

    .line 684
    :goto_1
    iget v0, v12, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v9, v0, :cond_3

    .line 685
    invoke-direct {v12, v9}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v19

    .line 688
    iget v0, v12, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    .line 689
    iget-object v1, v12, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v20, v1, v0

    .line 690
    iget v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int v0, v0, v17

    add-int v21, v0, v8

    .line 691
    invoke-direct {v11, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v22

    add-int v23, v18, v13

    add-int/lit8 v24, v23, -0x34

    add-int v25, v19, v15

    add-int/lit8 v26, v25, -0x34

    if-lez v24, :cond_1

    if-lez v26, :cond_0

    add-int/lit8 v0, v8, 0x1

    .line 699
    invoke-direct {v11, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v23

    .line 700
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v0, v21

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v4, 0x34

    const/16 v6, 0x34

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move v5, v15

    move-object/from16 v7, v20

    move/from16 v28, v8

    move/from16 v8, v19

    move/from16 v29, v9

    move/from16 v9, v25

    move/from16 v30, v10

    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 704
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v1, v21, 0x1

    aget-object v1, v0, v1

    sub-int v25, v19, v26

    const/4 v5, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v23

    move/from16 v6, v26

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 708
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v1, v21, v1

    aget-object v1, v0, v1

    sub-int v27, v18, v24

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x34

    move-object/from16 v0, p0

    move/from16 v2, v22

    move/from16 v4, v24

    move v5, v15

    move/from16 v9, v27

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 712
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v21, v21, v1

    add-int/lit8 v21, v21, 0x1

    aget-object v1, v0, v21

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v23

    move/from16 v6, v26

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto/16 :goto_2

    :cond_0
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    .line 718
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v0, v21

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x34

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move v5, v15

    move/from16 v6, v25

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 722
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    add-int v21, v21, v1

    aget-object v1, v0, v21

    sub-int v9, v18, v24

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v4, v24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto :goto_2

    :cond_1
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    if-lez v26, :cond_2

    add-int/lit8 v8, v28, 0x1

    .line 731
    invoke-direct {v11, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v24

    .line 732
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v0, v21

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v6, 0x34

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move/from16 v4, v23

    move v5, v15

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    .line 736
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v21, v21, 0x1

    aget-object v1, v0, v21

    sub-int v10, v19, v26

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 v6, v26

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    goto :goto_2

    .line 742
    :cond_2
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v1, v0, v21

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move/from16 v4, v23

    move v5, v15

    move/from16 v6, v25

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->copyBlockPart([DIIIII[DIII)V

    :goto_2
    add-int/lit8 v8, v28, 0x1

    add-int/lit8 v9, v29, 0x1

    move/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move/from16 v30, v10

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v10, v30, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v12
.end method

.method public bridge synthetic getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 536
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 538
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 542
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_6

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 545
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 547
    :goto_1
    iget v9, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v9, :cond_5

    .line 548
    invoke-direct {v2, v8}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v9

    add-int v10, v9, v9

    add-int v11, v10, v9

    add-int v12, v11, v9

    .line 554
    iget-object v13, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v13, v13, v5

    const/4 v14, 0x0

    .line 557
    :goto_2
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v14, v15, :cond_4

    .line 558
    invoke-direct {v0, v14}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v15

    .line 559
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move-object/from16 v16, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v2, v4

    add-int/2addr v2, v14

    aget-object v2, v3, v2

    .line 560
    iget-object v3, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v14

    add-int/2addr v0, v8

    aget-object v0, v3, v0

    move v3, v6

    const/16 v17, 0x0

    :goto_3
    if-ge v3, v7, :cond_3

    sub-int v18, v3, v6

    mul-int v18, v18, v15

    add-int v1, v18, v15

    move/from16 v19, v6

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v9, :cond_2

    const-wide/16 v20, 0x0

    move/from16 v23, v6

    move/from16 v22, v7

    move/from16 v7, v18

    :goto_5
    move/from16 v24, v15

    add-int/lit8 v15, v1, -0x3

    if-ge v7, v15, :cond_0

    .line 570
    aget-wide v25, v2, v7

    aget-wide v27, v0, v23

    mul-double v25, v25, v27

    add-int/lit8 v15, v7, 0x1

    aget-wide v27, v2, v15

    add-int v15, v23, v9

    aget-wide v29, v0, v15

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v15, v7, 0x2

    aget-wide v27, v2, v15

    add-int v15, v23, v10

    aget-wide v29, v0, v15

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-int/lit8 v15, v7, 0x3

    aget-wide v27, v2, v15

    add-int v15, v23, v11

    aget-wide v29, v0, v15

    mul-double v27, v27, v29

    add-double v25, v25, v27

    add-double v20, v20, v25

    add-int/lit8 v7, v7, 0x4

    add-int v23, v23, v12

    move/from16 v15, v24

    goto :goto_5

    :cond_0
    :goto_6
    if-ge v7, v1, :cond_1

    add-int/lit8 v15, v7, 0x1

    .line 578
    aget-wide v25, v2, v7

    aget-wide v27, v0, v23

    mul-double v25, v25, v27

    add-double v20, v20, v25

    add-int v23, v23, v9

    move v7, v15

    goto :goto_6

    .line 581
    :cond_1
    aget-wide v25, v13, v17

    add-double v25, v25, v20

    aput-wide v25, v13, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v22

    move/from16 v15, v24

    goto :goto_4

    :cond_2
    move/from16 v22, v7

    move/from16 v24, v15

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v6, v19

    goto :goto_3

    :cond_3
    move/from16 v19, v6

    move/from16 v22, v7

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    goto/16 :goto_2

    :cond_4
    move-object/from16 v16, v2

    move/from16 v19, v6

    move/from16 v22, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v16, v2

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v16, v2

    return-object v16
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 476
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 479
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 481
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 485
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_5

    mul-int/lit8 v6, v4, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 487
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    .line 489
    :goto_1
    iget v9, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v8, v9, :cond_4

    mul-int/lit8 v9, v8, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 491
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v11

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    .line 494
    iget-object v11, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v11, v11, v5

    const/4 v12, 0x0

    .line 497
    :goto_2
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v12, v13, :cond_3

    .line 498
    invoke-direct {v0, v12}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v13

    .line 499
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v15, v4

    add-int/2addr v15, v12

    aget-object v14, v14, v15

    mul-int/lit8 v15, v12, 0x34

    move v3, v6

    const/16 v16, 0x0

    :goto_3
    if-ge v3, v7, :cond_2

    sub-int v17, v3, v6

    mul-int v17, v17, v13

    add-int v0, v17, v13

    move/from16 v18, v6

    move v6, v9

    :goto_4
    if-ge v6, v10, :cond_1

    const-wide/16 v19, 0x0

    move/from16 v21, v7

    move/from16 v22, v9

    move v9, v15

    move/from16 v7, v17

    :goto_5
    if-ge v7, v0, :cond_0

    .line 509
    aget-wide v23, v14, v7

    invoke-interface {v1, v9, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v19, v19, v23

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 512
    :cond_0
    aget-wide v23, v11, v16

    add-double v23, v23, v19

    aput-wide v23, v11, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v21

    move/from16 v9, v22

    goto :goto_4

    :cond_1
    move/from16 v21, v7

    move/from16 v22, v9

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    move/from16 v6, v18

    goto :goto_3

    :cond_2
    move/from16 v18, v6

    move/from16 v21, v7

    move/from16 v22, v9

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    goto :goto_2

    :cond_3
    move/from16 v18, v6

    move/from16 v21, v7

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method

.method public bridge synthetic multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public multiplyEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1203
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1204
    div-int/lit8 v0, p1, 0x34

    .line 1205
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1206
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1208
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aget-wide v0, p2, p1

    mul-double/2addr v0, p3

    aput-wide v0, p2, p1

    return-void
.end method

.method public operate([D)[D
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1263
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    if-ne v2, v3, :cond_5

    .line 1266
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    new-array v2, v2, [D

    const/4 v4, 0x0

    .line 1269
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v5, :cond_4

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v5, 0x34

    .line 1271
    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    const/4 v7, 0x0

    .line 1272
    :goto_1
    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v7, v8, :cond_3

    .line 1273
    iget-object v9, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    mul-int/2addr v8, v4

    add-int/2addr v8, v7

    aget-object v8, v9, v8

    mul-int/lit8 v9, v7, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 1275
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v11, v5

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v6, :cond_2

    const-wide/16 v13, 0x0

    move v15, v9

    :goto_3
    add-int/lit8 v3, v10, -0x3

    if-ge v15, v3, :cond_0

    .line 1281
    aget-wide v16, v8, v12

    aget-wide v18, v1, v15

    mul-double v16, v16, v18

    add-int/lit8 v3, v12, 0x1

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x1

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-int/lit8 v3, v12, 0x2

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x2

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-int/lit8 v3, v12, 0x3

    aget-wide v18, v8, v3

    add-int/lit8 v3, v15, 0x3

    aget-wide v20, v1, v3

    mul-double v18, v18, v20

    add-double v16, v16, v18

    add-double v13, v13, v16

    add-int/lit8 v12, v12, 0x4

    add-int/lit8 v15, v15, 0x4

    goto :goto_3

    :cond_0
    :goto_4
    if-ge v15, v10, :cond_1

    add-int/lit8 v3, v12, 0x1

    .line 1289
    aget-wide v16, v8, v12

    add-int/lit8 v12, v15, 0x1

    aget-wide v18, v1, v15

    mul-double v16, v16, v18

    add-double v13, v13, v16

    move v15, v12

    move v12, v3

    goto :goto_4

    .line 1291
    :cond_1
    aget-wide v16, v2, v11

    add-double v16, v16, v13

    aput-wide v16, v2, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-object v2

    .line 1264
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([D)[D
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1303
    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    if-ne v2, v3, :cond_5

    .line 1306
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    new-array v2, v2, [D

    const/4 v4, 0x0

    .line 1309
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v4, v5, :cond_4

    .line 1310
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v5

    add-int v6, v5, v5

    add-int v7, v6, v5

    add-int v8, v7, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 1315
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    const/4 v11, 0x0

    .line 1316
    :goto_1
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v11, v12, :cond_3

    .line 1317
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v13, v11

    add-int/2addr v13, v4

    aget-object v12, v12, v13

    mul-int/lit8 v13, v11, 0x34

    add-int/lit8 v14, v13, 0x34

    .line 1319
    iget v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v14

    move v15, v9

    :goto_2
    if-ge v15, v10, :cond_2

    sub-int v16, v15, v9

    const-wide/16 v17, 0x0

    move v3, v13

    :goto_3
    move/from16 v19, v9

    add-int/lit8 v9, v14, -0x3

    if-ge v3, v9, :cond_0

    .line 1325
    aget-wide v20, v12, v16

    aget-wide v22, v1, v3

    mul-double v20, v20, v22

    add-int v9, v16, v5

    aget-wide v22, v12, v9

    add-int/lit8 v9, v3, 0x1

    aget-wide v24, v1, v9

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v9, v16, v6

    aget-wide v22, v12, v9

    add-int/lit8 v9, v3, 0x2

    aget-wide v24, v1, v9

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-int v9, v16, v7

    aget-wide v22, v12, v9

    add-int/lit8 v9, v3, 0x3

    aget-wide v24, v1, v9

    mul-double v22, v22, v24

    add-double v20, v20, v22

    add-double v17, v17, v20

    add-int v16, v16, v8

    add-int/lit8 v3, v3, 0x4

    move/from16 v9, v19

    goto :goto_3

    :cond_0
    :goto_4
    if-ge v3, v14, :cond_1

    .line 1333
    aget-wide v20, v12, v16

    add-int/lit8 v9, v3, 0x1

    aget-wide v22, v1, v3

    mul-double v20, v20, v22

    add-double v17, v17, v20

    add-int v16, v16, v5

    move v3, v9

    goto :goto_4

    .line 1336
    :cond_1
    aget-wide v20, v2, v15

    add-double v20, v20, v17

    aput-wide v20, v2, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v19

    goto :goto_2

    :cond_2
    move/from16 v19, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2

    .line 1304
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 8

    .line 440
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 443
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 444
    aget-object v3, v3, v2

    .line 445
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    move v5, v1

    .line 446
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 447
    aget-wide v6, v4, v5

    add-double/2addr v6, p1

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public bridge synthetic scalarAdd(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->scalarAdd(D)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    .line 457
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 460
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 461
    aget-object v3, v3, v2

    .line 462
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    move v5, v1

    .line 463
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    .line 464
    aget-wide v6, v4, v5

    mul-double/2addr v6, p1

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setColumn(I[D)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1141
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1142
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v0

    .line 1143
    array-length v1, p2

    if-ne v1, v0, :cond_2

    .line 1148
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    .line 1150
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 1152
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v3, v5, :cond_1

    .line 1153
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v5

    .line 1154
    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_0

    mul-int v8, v7, v1

    add-int/2addr v8, p1

    add-int/lit8 v9, v4, 0x1

    .line 1156
    aget-wide v10, p2, v4

    aput-wide v10, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 1144
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, p2, v1, v0, v1}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 978
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkColumnIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 979
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v2

    .line 980
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v2, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 988
    div-int/lit8 v2, p1, 0x34

    mul-int/lit8 v3, v2, 0x34

    sub-int v3, p1, v3

    .line 990
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v4

    .line 993
    iget-object v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v6, 0x0

    aget-object v5, v5, v6

    move v7, v6

    move v8, v7

    move v9, v8

    .line 994
    :goto_0
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v7, v10, :cond_2

    .line 995
    invoke-direct {v0, v7}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    .line 996
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v12, v7

    add-int/2addr v12, v2

    aget-object v11, v11, v12

    move v12, v6

    :goto_1
    if-ge v12, v10, :cond_1

    .line 998
    array-length v13, v5

    if-lt v8, v13, :cond_0

    .line 999
    iget-object v5, v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v9, v9, 0x1

    aget-object v5, v5, v9

    move v8, v6

    :cond_0
    mul-int v13, v12, v4

    add-int/2addr v13, v3

    add-int/lit8 v14, v8, 0x1

    .line 1002
    aget-wide v15, v5, v8

    aput-wide v15, v11, v13

    add-int/lit8 v12, v12, 0x1

    move v8, v14

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 982
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v1

    invoke-direct {v3, v5, v1, v2, v4}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw v3
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 959
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 961
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    :goto_0
    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1067
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setColumn(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1069
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/RealVector;)V

    :goto_0
    return-void
.end method

.method public setEntry(IID)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1177
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    .line 1178
    div-int/lit8 v0, p1, 0x34

    .line 1179
    div-int/lit8 v1, p2, 0x34

    mul-int/lit8 v2, v0, 0x34

    sub-int/2addr p1, v2

    .line 1180
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x34

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    .line 1182
    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v0, v2

    add-int/2addr v0, v1

    aget-object p2, p2, v0

    aput-wide p3, p2, p1

    return-void
.end method

.method public setRow(I[D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1097
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 1098
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 1099
    array-length v1, p2

    if-ne v1, v0, :cond_1

    .line 1104
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    move v2, v1

    .line 1107
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v1, v3, :cond_0

    .line 1108
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v3

    .line 1109
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    mul-int v5, p1, v3

    .line 1110
    invoke-static {p2, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 1100
    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p2, p2

    const/4 v1, 0x1

    invoke-direct {p1, v1, p2, v1, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 894
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    .line 895
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v0

    .line 896
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 904
    div-int/lit8 v0, p1, 0x34

    mul-int/lit8 v1, v0, 0x34

    sub-int/2addr p1, v1

    .line 908
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move v3, v2

    move v4, v3

    move v5, v4

    .line 909
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v3, v6, :cond_1

    .line 910
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    .line 911
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 912
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v6, v8, :cond_0

    mul-int v9, p1, v6

    .line 914
    invoke-static {v1, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 915
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    sub-int/2addr v6, v8

    .line 916
    invoke-static {v1, v2, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_1

    :cond_0
    mul-int v8, p1, v6

    .line 919
    invoke-static {v1, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 898
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p1, v1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p1
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 875
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockRealMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 877
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/RealMatrix;)V

    :goto_0
    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 1033
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->setRow(I[D)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setRowVector(ILorg/apache/commons/math3/linear/RealVector;)V

    :goto_0
    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 793
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    .line 794
    aget-object v5, v1, v4

    array-length v5, v5

    if-eqz v5, :cond_5

    .line 798
    array-length v6, v1

    add-int/2addr v6, v2

    add-int/lit8 v7, v6, -0x1

    add-int v8, v3, v5

    add-int/lit8 v9, v8, -0x1

    .line 800
    invoke-static {v0, v2, v7, v3, v9}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 801
    array-length v7, v1

    :goto_0
    if-ge v4, v7, :cond_1

    aget-object v9, v1, v4

    .line 802
    array-length v10, v9

    if-ne v10, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 803
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v5, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 808
    :cond_1
    div-int/lit8 v4, v2, 0x34

    add-int/lit8 v5, v6, 0x33

    .line 809
    div-int/lit8 v5, v5, 0x34

    .line 810
    div-int/lit8 v7, v3, 0x34

    add-int/lit8 v9, v8, 0x33

    .line 811
    div-int/lit8 v9, v9, 0x34

    :goto_1
    if-ge v4, v5, :cond_4

    .line 815
    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockHeight(I)I

    move-result v10

    mul-int/lit8 v11, v4, 0x34

    .line 817
    invoke-static {v2, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    add-int/2addr v10, v11

    .line 818
    invoke-static {v6, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v13, v7

    :goto_2
    if-ge v13, v9, :cond_3

    .line 821
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v14

    mul-int/lit8 v15, v13, 0x34

    .line 823
    invoke-static {v3, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v16

    move/from16 v17, v5

    add-int v5, v15, v14

    .line 824
    invoke-static {v8, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    sub-int v5, v5, v16

    move/from16 v18, v6

    .line 828
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move/from16 v19, v7

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v13

    aget-object v6, v6, v7

    move v7, v12

    :goto_3
    if-ge v7, v10, :cond_2

    sub-int v20, v7, v2

    .line 830
    aget-object v0, v1, v20

    sub-int v1, v16, v3

    sub-int v20, v7, v11

    mul-int v20, v20, v14

    sub-int v21, v16, v15

    add-int v2, v20, v21

    invoke-static {v0, v1, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_2

    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_1

    :cond_4
    return-void

    .line 796
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 419
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 421
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v1, 0x0

    move v2, v1

    .line 424
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 425
    aget-object v3, v3, v2

    .line 426
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v4, v4, v2

    .line 427
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v5, v5, v2

    move v6, v1

    .line 428
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 429
    aget-wide v7, v4, v6

    aget-wide v9, v5, v6

    sub-double/2addr v7, v9

    aput-wide v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 373
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockRealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 376
    :catch_0
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 378
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    .line 382
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    move v6, v3

    .line 383
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 386
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v7, v7, v5

    .line 387
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x34

    add-int/lit8 v10, v9, 0x34

    .line 389
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x34

    add-int/lit8 v12, v11, 0x34

    .line 391
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    move v13, v3

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 395
    aget-wide v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v17

    sub-double v15, v15, v17

    aput-wide v15, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public bridge synthetic subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 71
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->subtract(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object p1

    return-object p1
.end method

.method public transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;
    .locals 18

    move-object/from16 v0, p0

    .line 1214
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getRowDimension()I

    move-result v1

    .line 1215
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->getColumnDimension()I

    move-result v2

    .line 1216
    new-instance v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v3, v2, v1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 1220
    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v2, v5, :cond_3

    const/4 v5, 0x0

    .line 1221
    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v5, v6, :cond_2

    .line 1223
    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v6, v6, v4

    .line 1224
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    mul-int/lit8 v8, v2, 0x34

    add-int/lit8 v9, v8, 0x34

    .line 1226
    iget v10, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    mul-int/lit8 v10, v5, 0x34

    add-int/lit8 v11, v10, 0x34

    .line 1228
    iget v12, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    move v12, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v9, :cond_1

    sub-int v14, v9, v8

    sub-int v15, v12, v8

    move v1, v10

    :goto_3
    if-ge v1, v11, :cond_0

    .line 1234
    aget-wide v16, v7, v15

    aput-wide v16, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public bridge synthetic transpose()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->transpose()Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 14

    .line 1455
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1457
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x34

    add-int/lit8 v4, v3, 0x34

    .line 1459
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v5, v0

    .line 1460
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 1462
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1463
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v2

    move v10, v0

    move v9, v3

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1467
    aget-wide v12, v8, v10

    invoke-interface {p1, v9, v11, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v12

    aput-wide v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1474
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1509
    invoke-static {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1510
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1511
    div-int/lit8 v1, v8, 0x34

    :goto_0
    div-int/lit8 v2, v9, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1513
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v9, 0x1

    .line 1514
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1515
    div-int/lit8 v6, v10, 0x34

    :goto_1
    div-int/lit8 v7, v11, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_2

    .line 1516
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x34

    .line 1518
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x34

    move/from16 v16, v3

    add-int/lit8 v3, v11, 0x1

    .line 1519
    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1520
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move/from16 v17, v4

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v6

    aget-object v4, v15, v4

    move/from16 v6, v16

    :goto_2
    if-ge v6, v5, :cond_1

    sub-int v15, v6, v2

    mul-int/2addr v15, v7

    add-int/2addr v15, v13

    sub-int/2addr v15, v12

    move v0, v13

    :goto_3
    if-ge v0, v3, :cond_0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 1524
    aget-wide v1, v4, v15

    move/from16 v20, v3

    move-object/from16 v3, p1

    invoke-interface {v3, v6, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v1

    aput-wide v1, v4, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_3

    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v3, p1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v20

    goto :goto_2

    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move/from16 v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, p1

    .line 1530
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 14

    .line 1480
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1482
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x34

    add-int/lit8 v4, v3, 0x34

    .line 1484
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v5, v0

    .line 1485
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x34

    add-int/lit8 v7, v6, 0x34

    .line 1487
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 1488
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    aget-object v8, v8, v2

    move v10, v0

    move v9, v3

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 1492
    aget-wide v12, v8, v10

    invoke-interface {p1, v9, v11, v12, v13}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1499
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1540
    invoke-static {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1541
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1542
    div-int/lit8 v1, v8, 0x34

    :goto_0
    div-int/lit8 v2, v9, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1544
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v9, 0x1

    .line 1545
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 1546
    div-int/lit8 v6, v10, 0x34

    :goto_1
    div-int/lit8 v7, v11, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_2

    .line 1547
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x34

    .line 1549
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x34

    move/from16 v16, v3

    add-int/lit8 v3, v11, 0x1

    .line 1550
    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 1551
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move/from16 v17, v4

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v6

    aget-object v4, v15, v4

    move/from16 v6, v16

    :goto_2
    if-ge v6, v5, :cond_1

    sub-int v15, v6, v2

    mul-int/2addr v15, v7

    add-int/2addr v15, v13

    sub-int/2addr v15, v12

    move v0, v13

    :goto_3
    if-ge v0, v3, :cond_0

    move/from16 v18, v1

    move/from16 v19, v2

    .line 1555
    aget-wide v1, v4, v15

    move/from16 v20, v3

    move-object/from16 v3, p1

    invoke-interface {v3, v6, v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_3

    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v3

    move-object/from16 v3, p1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v3, v20

    goto :goto_2

    :cond_1
    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v3, v16

    move/from16 v4, v17

    goto :goto_1

    :cond_2
    move-object/from16 v3, p1

    move/from16 v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, p1

    .line 1561
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 13

    .line 1347
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    .line 1348
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    add-int/lit8 v3, v2, 0x34

    .line 1350
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    move v5, v0

    .line 1352
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1353
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 1355
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1356
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int/2addr v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1359
    aget-wide v11, v9, v10

    invoke-interface {p1, v4, v7, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v11

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1365
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1398
    invoke-static {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1399
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    .line 1400
    div-int/lit8 v1, v8, 0x34

    :goto_0
    div-int/lit8 v2, v9, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1402
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v9, 0x1

    .line 1403
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_2

    .line 1405
    div-int/lit8 v6, v10, 0x34

    :goto_2
    div-int/lit8 v7, v11, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 1406
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x34

    .line 1408
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x34

    move/from16 v16, v4

    add-int/lit8 v4, v11, 0x1

    .line 1409
    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 1410
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move/from16 v17, v5

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v6

    aget-object v5, v15, v5

    sub-int v6, v3, v2

    mul-int/2addr v6, v7

    add-int/2addr v6, v13

    sub-int/2addr v6, v12

    :goto_3
    if-ge v13, v4, :cond_0

    move v7, v1

    .line 1413
    aget-wide v0, v5, v6

    move-object/from16 v12, p1

    invoke-interface {v12, v3, v13, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v0

    aput-wide v0, v5, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v1, v7

    goto :goto_3

    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_2

    :cond_1
    move-object/from16 v12, p1

    move v7, v1

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_0

    :cond_3
    move-object/from16 v12, p1

    .line 1419
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 13

    .line 1371
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v6, v2, -0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    .line 1372
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    add-int/lit8 v3, v2, 0x34

    .line 1374
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    move v5, v0

    .line 1376
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 1377
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x34

    add-int/lit8 v8, v7, 0x34

    .line 1379
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 1380
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int/2addr v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 1383
    aget-wide v11, v9, v10

    invoke-interface {p1, v4, v7, v11, v12}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1389
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 1428
    invoke-static {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 1429
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    .line 1430
    div-int/lit8 v1, v8, 0x34

    :goto_0
    div-int/lit8 v2, v9, 0x34

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x34

    .line 1432
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x34

    add-int/lit8 v6, v9, 0x1

    .line 1433
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_2

    .line 1435
    div-int/lit8 v6, v10, 0x34

    :goto_2
    div-int/lit8 v7, v11, 0x34

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 1436
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x34

    .line 1438
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x34

    move/from16 v16, v4

    add-int/lit8 v4, v11, 0x1

    .line 1439
    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 1440
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blocks:[[D

    move/from16 v17, v5

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v6

    aget-object v5, v15, v5

    sub-int v6, v3, v2

    mul-int/2addr v6, v7

    add-int/2addr v6, v13

    sub-int/2addr v6, v12

    :goto_3
    if-ge v13, v4, :cond_0

    move v7, v1

    .line 1443
    aget-wide v0, v5, v6

    move-object/from16 v12, p1

    invoke-interface {v12, v3, v13, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move v1, v7

    goto :goto_3

    :cond_0
    move-object/from16 v12, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_2

    :cond_1
    move-object/from16 v12, p1

    move v7, v1

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v4

    move-object/from16 v0, p0

    move/from16 v1, v16

    goto :goto_0

    :cond_3
    move-object/from16 v12, p1

    .line 1449
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide v0

    return-wide v0
.end method
