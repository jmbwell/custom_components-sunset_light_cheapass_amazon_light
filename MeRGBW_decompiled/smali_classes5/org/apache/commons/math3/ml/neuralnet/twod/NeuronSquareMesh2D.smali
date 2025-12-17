.class public Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;
.super Ljava/lang/Object;
.source "NeuronSquareMesh2D.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final identifiers:[[J

.field private final neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

.field private final network:Lorg/apache/commons/math3/ml/neuralnet/Network;

.field private final numberOfColumns:I

.field private final numberOfRows:I

.field private final wrapColumns:Z

.field private final wrapRows:Z


# direct methods
.method public constructor <init>(IZIZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;)V
    .locals 5

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-lt p1, v1, :cond_4

    if-lt p3, v1, :cond_3

    .line 149
    iput p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    .line 150
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 151
    iput p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    .line 152
    iput-boolean p4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 153
    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 154
    new-array p2, v1, [I

    aput p3, p2, v0

    const/4 p4, 0x0

    aput p1, p2, p4

    sget-object p5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p5, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[J

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    .line 156
    array-length p2, p6

    .line 157
    new-instance p5, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v0, 0x0

    invoke-direct {p5, v0, v1, p2}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object p5, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    move p5, p4

    :goto_0
    if-ge p5, p1, :cond_2

    move v0, p4

    :goto_1
    if-ge v0, p3, :cond_1

    .line 162
    new-array v1, p2, [D

    move v2, p4

    :goto_2
    if-ge v2, p2, :cond_0

    .line 164
    aget-object v3, p6, v2

    invoke-interface {v3}, Lorg/apache/commons/math3/ml/neuralnet/FeatureInitializer;->value()D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v2, v2, p5

    iget-object v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    return-void

    .line 146
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 143
    :cond_4
    new-instance p2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p2, p1, v2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p2
.end method

.method constructor <init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V
    .locals 8

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    array-length v0, p4

    iput v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    const/4 v1, 0x0

    .line 83
    aget-object v2, p4, v1

    array-length v3, v2

    iput v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    const/4 v4, 0x1

    const/4 v5, 0x2

    .line 86
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-lt v0, v5, :cond_3

    if-lt v3, v5, :cond_2

    .line 92
    iput-boolean p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    .line 93
    iput-boolean p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    .line 94
    iput-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    .line 96
    aget-object p1, v2, v1

    array-length p1, p1

    .line 97
    new-instance p2, Lorg/apache/commons/math3/ml/neuralnet/Network;

    const-wide/16 v6, 0x0

    invoke-direct {p2, v6, v7, p1}, Lorg/apache/commons/math3/ml/neuralnet/Network;-><init>(JI)V

    iput-object p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    .line 98
    new-array p1, v5, [I

    aput v3, p1, v4

    aput v0, p1, v1

    sget-object p2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[J

    iput-object p1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    move p1, v1

    .line 101
    :goto_0
    iget p2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge p1, p2, :cond_1

    move p2, v1

    .line 102
    :goto_1
    iget p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge p2, p3, :cond_0

    .line 103
    iget-object p3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object p3, p3, p1

    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    aget-object v2, p4, p1

    aget-object v2, v2, p2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->createNeuron([D)J

    move-result-wide v2

    aput-wide v2, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->createLinks()V

    return-void

    .line 89
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v6, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    .line 86
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p1, p2, v6, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1
.end method

.method private createLinks()V
    .locals 12

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 235
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    sub-int/2addr v3, v2

    const/4 v4, 0x0

    move v5, v4

    .line 236
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v5, v6, :cond_1c

    move v6, v4

    .line 237
    :goto_1
    iget v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v6, v7, :cond_1b

    .line 238
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 240
    sget-object v7, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$1;->$SwitchMap$org$apache$commons$math3$ml$neuralnet$SquareNeighbourhood:[I

    iget-object v8, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-virtual {v8}, Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v2, :cond_1

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    goto/16 :goto_4

    .line 349
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_1
    if-lez v5, :cond_3

    if-lez v6, :cond_2

    .line 246
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    if-ge v6, v3, :cond_3

    .line 249
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    if-ge v5, v1, :cond_5

    if-lez v6, :cond_4

    .line 254
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-ge v6, v3, :cond_5

    .line 257
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_5
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_9

    if-nez v5, :cond_7

    if-lez v6, :cond_6

    .line 263
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-ge v6, v3, :cond_9

    .line 266
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    if-ne v5, v1, :cond_9

    if-lez v6, :cond_8

    .line 270
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-ge v6, v3, :cond_9

    .line 273
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    :cond_9
    :goto_2
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_d

    if-nez v6, :cond_b

    if-lez v5, :cond_a

    .line 280
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    if-ge v5, v1, :cond_d

    .line 283
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_b
    if-ne v6, v3, :cond_d

    if-lez v5, :cond_c

    .line 287
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    if-ge v5, v1, :cond_d

    .line 290
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    :cond_d
    :goto_3
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_11

    if-nez v5, :cond_e

    if-nez v6, :cond_e

    .line 298
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_e
    if-nez v5, :cond_f

    if-ne v6, v3, :cond_f

    .line 301
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_f
    if-ne v5, v1, :cond_10

    if-nez v6, :cond_10

    .line 304
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_10
    if-ne v5, v1, :cond_11

    if-ne v6, v3, :cond_11

    .line 307
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_11
    :goto_4
    if-lez v5, :cond_12

    .line 319
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, -0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    if-ge v5, v1, :cond_13

    .line 322
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    add-int/lit8 v8, v5, 0x1

    aget-object v7, v7, v8

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    :cond_13
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    if-eqz v7, :cond_15

    if-nez v5, :cond_14

    .line 326
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v1

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_14
    if-ne v5, v1, :cond_15

    .line 328
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v4

    aget-wide v8, v7, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_5
    if-lez v6, :cond_16

    .line 334
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    add-int/lit8 v8, v6, -0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    if-ge v6, v3, :cond_17

    .line 337
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    add-int/lit8 v8, v6, 0x1

    aget-wide v8, v7, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    :cond_17
    iget-boolean v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    if-eqz v7, :cond_19

    if-nez v6, :cond_18

    .line 341
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    aget-wide v8, v7, v3

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_18
    if-ne v6, v3, :cond_19

    .line 343
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v7, v7, v5

    aget-wide v8, v7, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_19
    :goto_6
    iget-object v7, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v8, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object v8, v8, v5

    aget-wide v9, v8, v6

    invoke-virtual {v7, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v7

    .line 353
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 354
    iget-object v11, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v11, v9, v10}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v9

    .line 357
    iget-object v10, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    invoke-virtual {v10, v7, v9}, Lorg/apache/commons/math3/ml/neuralnet/Network;->addLink(Lorg/apache/commons/math3/ml/neuralnet/Neuron;Lorg/apache/commons/math3/ml/neuralnet/Neuron;)V

    goto :goto_7

    :cond_1a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_1b
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_1c
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 369
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 6

    .line 378
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, [D

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[D

    move v2, v1

    .line 379
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge v2, v3, :cond_1

    move v3, v1

    .line 380
    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge v3, v4, :cond_0

    .line 381
    aget-object v4, v0, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ml/neuralnet/Neuron;->getFeatures()[D

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 385
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;

    iget-boolean v2, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapRows:Z

    iget-boolean v3, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->wrapColumns:Z

    iget-object v4, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->neighbourhood:Lorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D$SerializationProxy;-><init>(ZZLorg/apache/commons/math3/ml/neuralnet/SquareNeighbourhood;[[[D)V

    return-object v1
.end method


# virtual methods
.method public getNetwork()Lorg/apache/commons/math3/ml/neuralnet/Network;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    return-object v0
.end method

.method public getNeuron(II)Lorg/apache/commons/math3/ml/neuralnet/Neuron;
    .locals 3

    const/4 v0, 0x0

    .line 218
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 216
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    if-ge p1, v1, :cond_1

    if-ltz p2, :cond_0

    .line 220
    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    if-ge p2, v1, :cond_0

    .line 225
    iget-object v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->network:Lorg/apache/commons/math3/ml/neuralnet/Network;

    iget-object v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->identifiers:[[J

    aget-object p1, v1, p1

    aget-wide v1, p1, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/ml/neuralnet/Network;->getNeuron(J)Lorg/apache/commons/math3/ml/neuralnet/Neuron;

    move-result-object p1

    return-object p1

    .line 222
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    .line 218
    :cond_1
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v1, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p2, p1, v0, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method public getNumberOfColumns()I
    .locals 1

    .line 202
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfColumns:I

    return v0
.end method

.method public getNumberOfRows()I
    .locals 1

    .line 193
    iget v0, p0, Lorg/apache/commons/math3/ml/neuralnet/twod/NeuronSquareMesh2D;->numberOfRows:I

    return v0
.end method
