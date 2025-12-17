.class public Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;,
        Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 162
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v9, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    .line 216
    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDD)V
    .locals 0

    .line 120
    invoke-static/range {p1 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    invoke-direct {p0, p1, p9, p10}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;D)V

    return-void
.end method

.method public varargs constructor <init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 0

    .line 154
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p3

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 203
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;>;D)V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 177
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;D)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method private static boxBoundary(DDDDD)[Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 2

    sub-double v0, p2, p8

    cmpl-double v0, p0, v0

    if-gez v0, :cond_1

    sub-double v0, p6, p8

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_0

    goto :goto_0

    .line 234
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v0, p0, p1, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 235
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v1, p0, p1, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 236
    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    .line 237
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {p1, p2, p3, p6, p7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    const/4 p2, 0x4

    .line 238
    new-array p2, p2, [Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p3, v0, p0, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p4, 0x0

    aput-object p3, p2, p4

    new-instance p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p3, p0, p1, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p0, 0x1

    aput-object p3, p2, p0

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p0, p1, v1, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p1, 0x2

    aput-object p0, p2, p1

    new-instance p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p0, v1, v0, p8, p9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    const/4 p1, 0x3

    aput-object p0, p2, p1

    return-object p2

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private closeVerticesConnections(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 843
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 844
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 845
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 848
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/high16 v6, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 849
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 850
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-static {v3, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D

    move-result-wide v9

    cmpg-double v11, v9, v6

    if-gez v11, :cond_1

    move-object v5, v8

    move-wide v6, v9

    goto :goto_1

    .line 857
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v3

    cmpg-double v3, v6, v3

    if-gtz v3, :cond_0

    .line 859
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 860
    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method private filterSpuriousVertices(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 931
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 932
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v2, v0, 0x1

    .line 933
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    rem-int/2addr v2, v3

    .line 934
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    if-eqz v3, :cond_0

    .line 935
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getAngle()D

    move-result-wide v7

    sget-wide v9, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 939
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    invoke-direct {v4, v5, v3, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {p1, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v0, -0x1

    .line 940
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ")",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;",
            ">;"
        }
    .end annotation

    .line 892
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 893
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 894
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 897
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    :goto_0
    if-eq v2, p1, :cond_0

    if-eqz v2, :cond_0

    .line 899
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 900
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 901
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 907
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    .line 909
    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 910
    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setProcessed(Z)V

    .line 911
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object p1

    goto :goto_1

    .line 916
    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->filterSpuriousVertices(Ljava/util/List;)V

    .line 918
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    return-object p1

    :cond_2
    return-object v0
.end method

.method private getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;"
        }
    .end annotation

    .line 874
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 875
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->isProcessed()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;",
            ">;)V"
        }
    .end annotation

    move-wide/from16 v0, p0

    move-object/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    move-object v5, v4

    :goto_1
    if-nez v5, :cond_1

    .line 328
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    move-object/from16 v6, p3

    .line 329
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    .line 330
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-nez v7, :cond_0

    .line 331
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertCut(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 332
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    move/from16 v17, v5

    move-object v5, v3

    move/from16 v3, v17

    goto :goto_1

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move-object/from16 v6, p3

    if-nez v5, :cond_4

    .line 344
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 345
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    if-ne v2, v0, :cond_2

    goto :goto_2

    .line 348
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    goto :goto_3

    .line 346
    :cond_3
    :goto_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :goto_3
    return-void

    .line 355
    :cond_4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 356
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 357
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    if-eq v7, v5, :cond_5

    .line 359
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v9

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v8

    .line 360
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v10

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v11

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v10

    .line 361
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpg-double v12, v12, v0

    const-wide/16 v13, 0x0

    if-gtz v12, :cond_6

    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_6
    cmpg-double v8, v8, v13

    if-gez v8, :cond_7

    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_5

    :cond_7
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 363
    :goto_5
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v9, v15, v0

    if-gtz v9, :cond_8

    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->HYPER:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_6

    :cond_8
    cmpg-double v9, v10, v13

    if-gez v9, :cond_9

    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    goto :goto_6

    :cond_9
    sget-object v9, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    .line 365
    :goto_6
    sget-object v10, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v8

    aget v8, v10, v8

    const/4 v10, 0x1

    if-eq v8, v10, :cond_d

    const/4 v10, 0x2

    if-eq v8, v10, :cond_b

    .line 387
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_a

    .line 388
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 389
    :cond_a
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_5

    .line 390
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 377
    :cond_b
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_c

    .line 379
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v7

    .line 380
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 383
    :cond_c
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 367
    :cond_d
    sget-object v8, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v9, v8, :cond_e

    .line 369
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    move-result-object v7

    .line 370
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getOutgoing()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 373
    :cond_e
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 398
    :cond_f
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    .line 399
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-static {v0, v1, v5, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_7

    .line 401
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    .line 403
    :goto_7
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    .line 404
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-static {v0, v1, v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    goto :goto_8

    .line 406
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    :goto_8
    return-void
.end method

.method private naturalFollowerConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 787
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 788
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 789
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    .line 790
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 791
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 792
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v4, :cond_1

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v3, :cond_1

    .line 796
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 797
    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private splitEdgeConnections(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;",
            ">;)I"
        }
    .end annotation

    .line 813
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 814
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNext()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v3

    if-nez v3, :cond_0

    .line 815
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v3

    .line 816
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getEndNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    .line 817
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    .line 818
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getPrevious()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v7

    if-nez v7, :cond_1

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v7

    if-ne v7, v3, :cond_1

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->getStartNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v7

    if-ne v7, v4, :cond_1

    .line 822
    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setNext(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    .line 823
    invoke-virtual {v6, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;->setPrevious(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private static varargs verticesToTree(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D[",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 264
    array-length v0, p2

    if-nez v0, :cond_0

    .line 267
    new-instance p0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object p0

    .line 271
    :cond_0
    new-array v1, v0, [Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 273
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    aget-object v5, p2, v3

    invoke-direct {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 277
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v3, v2

    :cond_2
    if-ge v3, v0, :cond_5

    .line 281
    aget-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    .line 282
    rem-int v5, v3, v0

    aget-object v5, v1, v5

    .line 287
    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->sharedLineWith(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v6

    if-nez v6, :cond_3

    .line 289
    new-instance v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v8

    invoke-direct {v6, v7, v8, p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 293
    :cond_3
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    invoke-direct {v7, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v2

    :goto_1
    if-ge v7, v0, :cond_2

    .line 296
    aget-object v8, v1, v7

    if-eq v8, v4, :cond_4

    if-eq v8, v5, :cond_4

    .line 297
    invoke-virtual {v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v9

    invoke-virtual {v6, v9}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, p0

    if-gtz v9, :cond_4

    .line 299
    invoke-virtual {v8, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 306
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>()V

    .line 307
    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->insertEdges(DLorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;"
        }
    .end annotation

    .line 604
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 28

    move-object/from16 v0, p0

    .line 611
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    .line 613
    array-length v2, v1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-nez v2, :cond_1

    .line 614
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 615
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 617
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 618
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_2

    .line 620
    :cond_0
    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 621
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v1, v6, v7, v6, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_2

    .line 623
    :cond_1
    aget-object v2, v1, v5

    aget-object v2, v2, v5

    if-nez v2, :cond_2

    .line 625
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 626
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto/16 :goto_2

    .line 634
    :cond_2
    array-length v2, v1

    move v8, v5

    move-wide v9, v6

    move-wide v11, v9

    move-wide v13, v11

    :goto_0
    if-ge v8, v2, :cond_4

    aget-object v15, v1, v8

    .line 635
    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v16

    .line 636
    array-length v5, v15

    add-int/lit8 v5, v5, -0x1

    aget-object v5, v15, v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v18

    .line 637
    array-length v5, v15

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v5, :cond_3

    aget-object v4, v15, v3

    .line 640
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v20

    .line 641
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v22

    mul-double v24, v16, v22

    mul-double v26, v18, v20

    sub-double v24, v24, v26

    add-double v9, v9, v24

    add-double v16, v16, v20

    mul-double v16, v16, v24

    add-double v11, v11, v16

    add-double v18, v18, v22

    mul-double v24, v24, v18

    add-double v13, v13, v24

    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v16, v20

    move-wide/from16 v18, v22

    goto :goto_1

    :cond_3
    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    cmpg-double v1, v9, v6

    if-gez v1, :cond_5

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 651
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 652
    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_2

    :cond_5
    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    div-double v1, v9, v1

    .line 654
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setSize(D)V

    .line 655
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    mul-double/2addr v9, v2

    div-double/2addr v11, v9

    div-double/2addr v13, v9

    invoke-direct {v1, v11, v12, v13, v14}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_2
    return-void
.end method

.method public getVertices()[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 20

    move-object/from16 v0, p0

    .line 686
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    if-nez v1, :cond_e

    const/4 v1, 0x0

    .line 687
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v2, :cond_0

    .line 688
    new-array v1, v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    goto/16 :goto_8

    .line 692
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTolerance()D

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;-><init>(D)V

    const/4 v3, 0x1

    .line 693
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 694
    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$SegmentsBuilder;->getSegments()Ljava/util/List;

    move-result-object v2

    .line 698
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 699
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->naturalFollowerConnections(Ljava/util/List;)I

    move-result v5

    sub-int/2addr v4, v5

    if-lez v4, :cond_1

    .line 701
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->splitEdgeConnections(Ljava/util/List;)I

    move-result v5

    sub-int/2addr v4, v5

    :cond_1
    if-lez v4, :cond_2

    .line 704
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->closeVerticesConnections(Ljava/util/List;)I

    .line 708
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 709
    :cond_3
    :goto_0
    invoke-direct {v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->getUnprocessed(Ljava/util/List;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 710
    invoke-direct {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->followLoop(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$ConnectableSegment;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 712
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    if-nez v6, :cond_4

    .line 714
    invoke-virtual {v4, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 717
    :cond_4
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 723
    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iput-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 726
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v4, v1

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 727
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-lt v6, v8, :cond_d

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_6

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    if-nez v6, :cond_6

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    if-nez v6, :cond_6

    goto/16 :goto_6

    .line 736
    :cond_6
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v6

    if-nez v6, :cond_b

    .line 738
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v8, v6, 0x2

    new-array v8, v8, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 740
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v9, v1

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    if-nez v9, :cond_7

    .line 744
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v15

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    invoke-virtual {v15, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v16

    div-double v18, v16, v11

    move-object v15, v2

    .line 745
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    sub-double v1, v16, v1

    add-int/lit8 v16, v9, 0x1

    .line 746
    aput-object v7, v8, v9

    add-int/lit8 v9, v9, 0x2

    .line 747
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v3

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v7, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v3, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    aput-object v1, v8, v16

    goto :goto_3

    :cond_7
    move-object v15, v2

    :goto_3
    add-int/lit8 v1, v6, 0x1

    if-ge v9, v1, :cond_8

    add-int/lit8 v2, v9, 0x1

    .line 752
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    aput-object v3, v8, v9

    move v9, v2

    :cond_8
    if-ne v9, v1, :cond_9

    .line 757
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v1

    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v1

    div-double v11, v1, v11

    .line 758
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v13, v14, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    add-double/2addr v1, v11

    add-int/lit8 v3, v9, 0x1

    .line 759
    invoke-virtual {v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v7

    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-direct {v10, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    aput-object v1, v8, v9

    move v9, v3

    :cond_9
    move-object v2, v15

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_a
    move-object v15, v2

    .line 763
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v2, v4, 0x1

    aput-object v8, v1, v4

    move v4, v2

    goto :goto_5

    :cond_b
    move-object v15, v2

    .line 765
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 767
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    add-int/lit8 v6, v3, 0x1

    .line 768
    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v5

    aput-object v5, v1, v3

    move v3, v6

    goto :goto_4

    .line 770
    :cond_c
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v3, v4, 0x1

    aput-object v1, v2, v4

    move v4, v3

    :goto_5
    const/4 v1, 0x0

    const/4 v9, 0x1

    goto :goto_7

    :cond_d
    :goto_6
    move-object v15, v2

    .line 730
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Segment;->getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v2

    .line 731
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x3

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const/4 v7, 0x0

    aput-object v7, v6, v1

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v9, -0x3810000020000000L    # -3.4028234663852886E38

    invoke-direct {v7, v9, v10}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    const-wide v10, 0x47efffffe0000000L    # 3.4028234663852886E38

    invoke-direct {v7, v10, v11}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    aput-object v2, v6, v8

    aput-object v6, v3, v4

    move v4, v5

    :goto_7
    move v3, v9

    move-object v2, v15

    goto/16 :goto_1

    .line 777
    :cond_e
    :goto_8
    iget-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;->vertices:[[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1}, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    return-object v1
.end method
