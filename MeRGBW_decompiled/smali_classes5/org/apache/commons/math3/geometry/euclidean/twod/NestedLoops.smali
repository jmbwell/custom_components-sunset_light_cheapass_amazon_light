.class Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;
.super Ljava/lang/Object;
.source "NestedLoops.java"


# instance fields
.field private loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

.field private originalIsClockwise:Z

.field private polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private surrounded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 74
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    return-void
.end method

.method private constructor <init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v9, p2

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v11, 0x0

    .line 87
    aget-object v2, v1, v11

    if-eqz v2, :cond_2

    .line 91
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 92
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    .line 93
    iput-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    .line 96
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 97
    array-length v2, v1

    const/4 v13, 0x1

    sub-int/2addr v2, v13

    aget-object v2, v1, v2

    move v14, v11

    .line 98
    :goto_0
    array-length v3, v1

    if-ge v14, v3, :cond_0

    .line 100
    aget-object v15, v1, v14

    .line 101
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v7, v2, v15, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 102
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v3

    invoke-virtual {v7, v15}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v5

    move-object v2, v8

    move-object v13, v7

    move-object v11, v8

    move-wide/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(DDD)V

    .line 106
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    invoke-direct {v2, v13, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object v2, v15

    const/4 v11, 0x0

    const/4 v13, 0x1

    goto :goto_0

    .line 108
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v1, v12, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 111
    invoke-interface {v1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->getComplement(Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 v1, 0x0

    .line 113
    iput-boolean v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    .line 115
    iput-boolean v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    :goto_1
    return-void

    :cond_2
    move v1, v11

    .line 88
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method

.method private add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 138
    iget-object v2, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    return-void

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 147
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v3, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->contains(Lorg/apache/commons/math3/geometry/partitioning/Region;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 148
    iget-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 154
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    .line 155
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    .line 156
    iget-object v3, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object v2, v2, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->polygon:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v0, v3, v2}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->intersection(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 157
    :cond_4
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSING_BOUNDARY_LOOPS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    .line 161
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setClockWise(Z)V
    .locals 6

    .line 182
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->originalIsClockwise:Z

    xor-int/2addr v0, p1

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    array-length v0, v0

    const/4 v1, -0x1

    move v2, v1

    :goto_0
    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v1

    if-ge v2, v0, :cond_0

    .line 187
    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->loop:[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    aget-object v4, v3, v2

    .line 188
    aget-object v5, v3, v0

    aput-object v5, v3, v2

    .line 189
    aput-object v4, v3, v0

    goto :goto_0

    .line 194
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    xor-int/lit8 v2, p1, 0x1

    .line 195
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public add([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 126
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->tolerance:D

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;-><init>([Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->add(Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;)V

    return-void
.end method

.method public correctOrientation()V
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->surrounded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;

    const/4 v2, 0x1

    .line 172
    invoke-direct {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/NestedLoops;->setClockWise(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
