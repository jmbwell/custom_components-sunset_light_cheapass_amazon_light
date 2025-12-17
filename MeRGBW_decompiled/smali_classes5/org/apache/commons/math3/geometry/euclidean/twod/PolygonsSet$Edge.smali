.class Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;
.super Ljava/lang/Object;
.source "PolygonsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Edge"
.end annotation


# instance fields
.field private final end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

.field private final line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation
.end field

.field private final start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 0

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 534
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    .line 535
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 p3, 0x0

    .line 536
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 539
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V

    .line 540
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;)V

    return-void
.end method


# virtual methods
.method public getEnd()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 1

    .line 555
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    return-object v0
.end method

.method public getLine()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 562
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getNode()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 1

    .line 548
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    return-object v0
.end method

.method public setNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)V"
        }
    .end annotation

    .line 569
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-void
.end method

.method public split(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;
    .locals 4

    .line 590
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 591
    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;->bindWith(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 592
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->start:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {p1, v1, v0, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 593
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->end:Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->line:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Vertex;Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    .line 594
    iget-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    .line 595
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iput-object p1, v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet$Edge;->node:Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    return-object v0
.end method
