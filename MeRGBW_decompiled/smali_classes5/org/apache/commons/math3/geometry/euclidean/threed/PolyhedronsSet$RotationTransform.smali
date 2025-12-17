.class Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;
.super Ljava/lang/Object;
.source "PolyhedronsSet.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RotationTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# instance fields
.field private cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

.field private cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation
.end field

.field private center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V
    .locals 0

    .line 630
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 631
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 632
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;"
        }
    .end annotation

    .line 643
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 637
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 638
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->center:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->rotation:Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 612
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 650
    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    if-eq v1, v2, :cond_0

    .line 653
    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 654
    move-object/from16 v2, p3

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 655
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 656
    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/16 v7, 0x0

    invoke-direct {v4, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    .line 657
    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-direct {v9, v7, v8, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    invoke-virtual {v1, v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    .line 658
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    .line 659
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v4

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v4

    .line 660
    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v2

    .line 661
    new-instance v18, Ljava/awt/geom/AffineTransform;

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v5

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    sub-double v6, v5, v7

    invoke-virtual {v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v8

    sub-double v8, v4, v8

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v10

    sub-double v10, v4, v10

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v12

    sub-double v12, v4, v12

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v14

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v16

    move-object/from16 v5, v18

    invoke-direct/range {v5 .. v17}, Ljava/awt/geom/AffineTransform;-><init>(DDDDDD)V

    .line 666
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedOriginal:Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 667
    invoke-static/range {v18 .. v18}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    .line 670
    :cond_0
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    iget-object v2, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;->cachedTransform:Lorg/apache/commons/math3/geometry/partitioning/Transform;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractSubHyperplane;

    move-result-object v1

    return-object v1
.end method
