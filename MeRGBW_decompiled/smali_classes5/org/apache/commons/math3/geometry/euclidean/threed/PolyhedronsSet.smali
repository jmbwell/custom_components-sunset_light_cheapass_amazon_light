.class public Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
.super Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
.source "PolyhedronsSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;,
        Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 157
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(D)V

    return-void
.end method

.method public constructor <init>(DDDDDD)V
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v13, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    .line 214
    invoke-direct/range {v0 .. v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(DDDDDDD)V

    return-void
.end method

.method public constructor <init>(DDDDDDD)V
    .locals 0

    .line 149
    invoke-static/range {p1 .. p14}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p13, p14}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 197
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;D)V"
        }
    .end annotation

    .line 109
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;D)V"
        }
    .end annotation

    .line 132
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 172
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;D)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method static synthetic access$400(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;D)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;Lorg/apache/commons/math3/geometry/Point;)V
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    return-void
.end method

.method private boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 586
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    .line 588
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;

    .line 590
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v0, v1, :cond_0

    .line 592
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusOutside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1

    .line 594
    :cond_0
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;->getRemainingRegion()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne p1, v0, :cond_1

    .line 596
    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BoundaryAttribute;->getPlusInside()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private static buildBoundary(Ljava/util/List;Ljava/util/List;D)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;D)",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v7, p2

    const/4 v9, 0x0

    move v1, v9

    .line 261
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v10, 0x1

    sub-int/2addr v2, v10

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-ge v1, v2, :cond_2

    .line 262
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    add-int/lit8 v1, v1, 0x1

    move v3, v1

    .line 263
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 264
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v2, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v4

    cmpg-double v4, v4, v7

    if-lez v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 265
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CLOSE_VERTICES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    new-array v5, v11, [Ljava/lang/Object;

    aput-object v3, v5, v9

    aput-object v4, v5, v10

    aput-object v2, v5, v12

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 272
    :cond_2
    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->findReferences(Ljava/util/List;Ljava/util/List;)[[I

    move-result-object v1

    move-object/from16 v2, p1

    .line 275
    invoke-static {v0, v2, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->successors(Ljava/util/List;Ljava/util/List;[[I)[[I

    move-result-object v1

    move v3, v9

    .line 278
    :goto_1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_9

    .line 279
    aget-object v4, v1, v3

    array-length v5, v4

    move v6, v9

    :goto_2
    if-ge v6, v5, :cond_8

    aget v13, v4, v6

    if-ltz v13, :cond_7

    .line 285
    aget-object v14, v1, v13

    array-length v15, v14

    move v11, v9

    move/from16 v16, v11

    :goto_3
    if-ge v11, v15, :cond_5

    aget v12, v14, v11

    if-nez v16, :cond_4

    if-ne v12, v3, :cond_3

    goto :goto_4

    :cond_3
    move/from16 v16, v9

    goto :goto_5

    :cond_4
    :goto_4
    move/from16 v16, v10

    :goto_5
    add-int/lit8 v11, v11, 0x1

    const/4 v12, 0x2

    goto :goto_3

    :cond_5
    if-eqz v16, :cond_6

    goto :goto_6

    .line 289
    :cond_6
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 290
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 291
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EDGE_CONNECTED_TO_ONE_FACET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v9

    aput-object v5, v8, v10

    const/4 v4, 0x2

    aput-object v1, v8, v4

    const/4 v1, 0x3

    aput-object v6, v8, v1

    const/4 v1, 0x4

    aput-object v7, v8, v1

    const/4 v1, 0x5

    aput-object v0, v8, v1

    invoke-direct {v2, v3, v8}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    :cond_7
    :goto_6
    add-int/lit8 v6, v6, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto :goto_2

    :cond_8
    add-int/lit8 v3, v3, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x2

    goto/16 :goto_1

    .line 299
    :cond_9
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 301
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, [I

    .line 304
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    aget v1, v13, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aget v1, v13, v10

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const/4 v1, 0x2

    aget v4, v13, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v1, v14

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 308
    array-length v1, v13

    new-array v1, v1, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move v2, v9

    .line 309
    :goto_8
    array-length v3, v13

    if-ge v2, v3, :cond_b

    .line 310
    aget v3, v13, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 311
    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 315
    invoke-virtual {v14, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 312
    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_PLANE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v9

    aput-object v4, v5, v10

    const/4 v2, 0x2

    aput-object v3, v5, v2

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_b
    const/4 v2, 0x2

    const/4 v5, 0x3

    .line 319
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v4, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    invoke-direct {v4, v7, v8, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D[Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    invoke-direct {v3, v14, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_c
    return-object v11
.end method

.method private static buildBoundary(DDDDDDD)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDDDDD)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    move-wide/from16 v7, p12

    sub-double v0, p2, v7

    cmpl-double v0, p0, v0

    if-gez v0, :cond_1

    sub-double v0, p6, v7

    cmpl-double v0, p4, v0

    if-gez v0, :cond_1

    sub-double v0, p10, v7

    cmpl-double v0, p8, v0

    if-ltz v0, :cond_0

    goto/16 :goto_0

    .line 236
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    move-object v9, v0

    move-wide/from16 v10, p0

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v5, v0, v1, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 237
    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v9, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v3, 0x0

    const-wide/16 v10, 0x0

    move-object v0, v9

    move-wide/from16 v1, p2

    move-object/from16 v16, v5

    move-wide v5, v10

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_I:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v14, v9, v0, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 238
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v2, 0x0

    move-object v9, v1

    move-wide/from16 v12, p4

    move-object v4, v14

    move-wide v14, v2

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 239
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v14, 0x0

    move-object v9, v2

    move-wide/from16 v12, p6

    invoke-direct/range {v9 .. v15}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_J:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v1, v2, v3, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 240
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    move-object/from16 p0, v3

    move-wide/from16 p1, v5

    move-wide/from16 p3, v9

    move-wide/from16 p5, p8

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->MINUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v2, v3, v5, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 241
    new-instance v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/16 v11, 0x0

    move-object/from16 p0, v5

    move-wide/from16 p1, v9

    move-wide/from16 p3, v11

    move-wide/from16 p5, p10

    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    sget-object v6, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->PLUS_K:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v3, v5, v6, v7, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 243
    new-instance v5, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {v5}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;-><init>()V

    const/4 v6, 0x6

    new-array v6, v6, [Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    const/4 v4, 0x2

    aput-object v0, v6, v4

    const/4 v0, 0x3

    aput-object v1, v6, v0

    const/4 v0, 0x4

    aput-object v2, v6, v0

    const/4 v0, 0x5

    aput-object v3, v6, v0

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->buildConvex([Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object v0

    .line 245
    invoke-interface {v0, v7}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    return-object v0

    .line 234
    :cond_1
    :goto_0
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static findReferences(Ljava/util/List;Ljava/util/List;)[[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;)[[I"
        }
    .end annotation

    .line 337
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 340
    array-length v6, v4

    const/4 v7, 0x3

    if-lt v6, v7, :cond_1

    .line 344
    array-length v6, v4

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v4, v7

    .line 345
    aget v9, v0, v8

    add-int/2addr v9, v5

    aput v9, v0, v8

    invoke-static {v3, v9}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 341
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    array-length v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 350
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v5

    aput p0, v0, v2

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[I

    .line 351
    array-length v0, p0

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v4, p0, v1

    const/4 v5, -0x1

    .line 352
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move v0, v2

    .line 354
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 355
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    array-length v4, v1

    move v5, v2

    :goto_3
    if-ge v5, v4, :cond_5

    aget v6, v1, v5

    move v7, v2

    :goto_4
    if-ge v7, v3, :cond_4

    .line 358
    aget-object v8, p0, v6

    aget v8, v8, v7

    if-ltz v8, :cond_4

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 361
    :cond_4
    aget-object v6, p0, v6

    aput v0, v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    return-object p0
.end method

.method private recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 527
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 531
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v1

    .line 532
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    .line 533
    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    .line 536
    invoke-virtual {v0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v3

    .line 537
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    const-wide/16 v6, 0x0

    cmpg-double v3, v3, v6

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    :goto_1
    if-eqz v5, :cond_3

    .line 550
    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v3

    if-eqz v3, :cond_3

    return-object v3

    .line 557
    :cond_3
    invoke-direct {p0, v1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    if-eqz v1, :cond_4

    return-object v1

    :cond_4
    if-nez v5, :cond_5

    .line 564
    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 565
    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v3

    invoke-virtual {p3, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getAbscissa(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v5

    cmpl-double v1, v3, v5

    if-lez v1, :cond_5

    .line 566
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->boundaryFacet(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    if-eqz p1, :cond_5

    return-object p1

    .line 574
    :cond_5
    invoke-direct {p0, v2, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method private static successors(Ljava/util/List;Ljava/util/List;[[I)[[I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;",
            "Ljava/util/List<",
            "[I>;[[I)[[I"
        }
    .end annotation

    .line 383
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v2, v4, v5

    aput v0, v4, v1

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    .line 384
    array-length v2, v0

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v6, v0, v4

    const/4 v7, -0x1

    .line 385
    invoke-static {v6, v7}, Ljava/util/Arrays;->fill([II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    .line 388
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    move v4, v1

    .line 389
    :goto_2
    aget-object v6, v0, v2

    array-length v6, v6

    if-ge v4, v6, :cond_4

    aget-object v6, p2, v2

    aget v6, v6, v4

    if-ltz v6, :cond_4

    .line 392
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    move v7, v1

    .line 394
    :goto_3
    array-length v8, v6

    if-ge v7, v8, :cond_1

    aget v8, v6, v7

    if-eq v8, v2, :cond_1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 399
    :cond_1
    aget-object v8, v0, v2

    add-int/lit8 v7, v7, 0x1

    array-length v9, v6

    rem-int/2addr v7, v9

    aget v6, v6, v7

    aput v6, v8, v4

    move v6, v1

    :goto_4
    if-ge v6, v4, :cond_3

    .line 401
    aget-object v7, v0, v2

    aget v8, v7, v6

    aget v7, v7, v4

    if-eq v8, v7, :cond_2

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 402
    :cond_2
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 403
    aget-object p2, v0, v2

    aget p2, p2, v4

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 404
    new-instance p2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FACET_ORIENTATION_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v2, v8, v1

    aput-object v4, v8, v5

    aput-object p1, v8, v3

    const/4 p1, 0x3

    aput-object v6, v8, p1

    const/4 p1, 0x4

    aput-object v7, v8, p1

    const/4 p1, 0x5

    aput-object p0, v8, p1

    invoke-direct {p2, v0, v8}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    return-object v0
.end method


# virtual methods
.method public buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;"
        }
    .end annotation

    .line 420
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTolerance()D

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;D)V

    return-object v0
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 0

    .line 48
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object p1

    return-object p1
.end method

.method protected computeGeometricalProperties()V
    .locals 5

    const/4 v0, 0x1

    .line 428
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$FacetsContributionVisitor;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;)V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->visit(Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor;)V

    .line 430
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 433
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 434
    sget-object v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->NaN:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    goto :goto_0

    .line 437
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setSize(D)V

    .line 438
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x4010000000000000L    # 4.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getSize()D

    move-result-wide v3

    mul-double/2addr v3, v1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    div-double/2addr v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->setBarycenter(Lorg/apache/commons/math3/geometry/Point;)V

    :goto_0
    return-void
.end method

.method public firstIntersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Line;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 512
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->getTree(Z)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->recurseFirstIntersection(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    return-object p1
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1

    .line 608
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$RotationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object p1
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 1

    .line 681
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet$TranslationTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;->applyTransform(Lorg/apache/commons/math3/geometry/partitioning/Transform;)Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    return-object p1
.end method
