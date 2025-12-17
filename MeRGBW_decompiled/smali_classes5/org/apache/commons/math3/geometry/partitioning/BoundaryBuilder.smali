.class Lorg/apache/commons/math3/geometry/partitioning/BoundaryBuilder;
.super Ljava/lang/Object;
.source "BoundaryBuilder.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor<",
        "TS;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitInternalNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
        }
    .end annotation

    .line 45
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 47
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 51
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 52
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    .line 56
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    .line 57
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 58
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    move-object v4, v3

    .line 62
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchInside()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    new-instance v1, Lorg/apache/commons/math3/geometry/partitioning/Characterization;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 67
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->touchOutside()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v2

    if-nez v4, :cond_1

    .line 72
    new-instance v4, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v4}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    .line 74
    :cond_1
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v1

    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    .line 75
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    :cond_2
    if-eqz v4, :cond_3

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 82
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->add(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V

    .line 81
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getParent()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    goto :goto_1

    .line 87
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    invoke-direct {v0, v3, v2, v4}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;-><init>(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/NodesSet;)V

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->setAttribute(Ljava/lang/Object;)V

    return-void
.end method

.method public visitLeafNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)V"
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
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;"
        }
    .end annotation

    .line 33
    sget-object p1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    return-object p1
.end method
