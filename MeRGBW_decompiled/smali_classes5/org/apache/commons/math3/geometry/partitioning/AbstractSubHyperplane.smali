.class public abstract Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
.super Ljava/lang/Object;
.source "AbstractSubHyperplane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        "T::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)V"
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    return-void
.end method

.method private recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;",
            "Ljava/util/Map<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TT;>;"
        }
    .end annotation

    .line 151
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    .line 152
    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    goto :goto_2

    .line 156
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    if-eqz v0, :cond_3

    .line 158
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v1, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    .line 160
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v0, v2, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    .line 163
    :goto_1
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    new-instance v3, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v3}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    .line 166
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p3, v2, v3, p2}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-direct {p0, v3, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v4

    invoke-direct {p0, v4, p2, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-direct {v1, v2, v3, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Ljava/lang/Object;)V

    move-object p2, v1

    .line 172
    :goto_2
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method


# virtual methods
.method public applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "TS;TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/Transform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 115
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 116
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-direct {p0, v2, v0, p1, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->recurseTransform(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Transform;Ljava/util/Map;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 120
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    if-eqz v4, :cond_0

    .line 126
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 127
    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 128
    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v6

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    goto :goto_0

    .line 134
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method protected abstract buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v0

    return-object v0
.end method

.method public getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    return-object v0
.end method

.method public getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TT;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    return-object v0
.end method

.method public getSize()D
    .locals 2

    .line 90
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getSize()D

    move-result-wide v0

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane<",
            "TS;TT;>;"
        }
    .end annotation

    .line 96
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    .line 97
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->hyperplane:Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->remainingRegion:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {v1, v2, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->union(Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 0

    .line 38
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method public abstract side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/Side;"
        }
    .end annotation
.end method

.method public abstract split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end method
