.class Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;
.super Ljava/lang/Object;
.source "EdgesBuilder.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;"
    }
.end annotation


# instance fields
.field private final edgeToNode:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;>;"
        }
    .end annotation
.end field

.field private final nodeToEdgesList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;>;"
        }
    .end annotation
.end field

.field private final root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation
.end field

.field private final tolerance:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;D)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 57
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 58
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    .line 59
    new-instance p1, Ljava/util/IdentityHashMap;

    invoke-direct {p1}, Ljava/util/IdentityHashMap;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    return-void
.end method

.method private addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;",
            "Z",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 92
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;->asList()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    .line 94
    new-instance v4, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-direct {v4, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 95
    new-instance v3, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSup()D

    move-result-wide v5

    invoke-direct {v2, v5, v6}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    .line 96
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 97
    invoke-virtual {v3, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    if-eqz p2, :cond_0

    .line 100
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v7

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    goto :goto_1

    .line 102
    :cond_0
    new-instance v8, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v5

    move-object v1, v8

    move-object v2, v4

    move-wide v4, v5

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 104
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v1, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    invoke-interface {v1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 119
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->root:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCloseCuts(Lorg/apache/commons/math3/geometry/Point;D)Ljava/util/List;

    move-result-object v1

    .line 123
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    .line 125
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x0

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 126
    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    if-eq v6, p1, :cond_1

    .line 127
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getIncoming()Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v7

    if-nez v7, :cond_1

    .line 128
    invoke-virtual {v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v7

    .line 129
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v8

    invoke-static {v8, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v7

    cmpg-double v9, v7, v2

    if-gtz v9, :cond_1

    move-object v4, v6

    move-wide v2, v7

    goto :goto_0

    :cond_2
    if-nez v4, :cond_4

    .line 139
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->tolerance:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_3

    return-object p1

    .line 146
    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUTLINE_BOUNDARY_LOOP_OPEN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1

    :cond_4
    return-object v4
.end method


# virtual methods
.method public getEdges()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    .line 162
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->getFollowingEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    goto :goto_0

    .line 165
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->edgeToNode:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->nodeToEdgesList:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 72
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 75
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/EdgesBuilder;->addContribution(Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    :cond_1
    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public visitOrder(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 64
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p1
.end method
