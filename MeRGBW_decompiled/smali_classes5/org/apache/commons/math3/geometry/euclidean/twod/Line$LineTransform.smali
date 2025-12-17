.class Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Transform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LineTransform"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# instance fields
.field private c11:D

.field private c1X:D

.field private c1Y:D

.field private cX1:D

.field private cXX:D

.field private cXY:D

.field private cY1:D

.field private cYX:D

.field private cYY:D


# direct methods
.method public constructor <init>(Ljava/awt/geom/AffineTransform;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 486
    new-array v0, v0, [D

    .line 487
    invoke-virtual {p1, v0}, Ljava/awt/geom/AffineTransform;->getMatrix([D)V

    const/4 p1, 0x0

    .line 488
    aget-wide v1, v0, p1

    iput-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    const/4 v1, 0x2

    .line 489
    aget-wide v2, v0, v1

    iput-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    const/4 v1, 0x4

    .line 490
    aget-wide v8, v0, v1

    iput-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    const/4 v1, 0x1

    .line 491
    aget-wide v4, v0, v1

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    const/4 v1, 0x3

    .line 492
    aget-wide v4, v0, v1

    iput-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    const/4 v1, 0x5

    .line 493
    aget-wide v6, v0, v1

    iput-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    neg-double v0, v4

    move-wide v4, v6

    move-wide v6, v0

    .line 495
    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    .line 496
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    neg-double v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    .line 497
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    neg-double v6, v0

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    .line 499
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_0

    return-void

    .line 500
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NON_INVERTIBLE_TRANSFORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p1, p1, [Ljava/lang/Object;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Line;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 516
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 517
    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1X:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v4

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c1Y:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->c11:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    .line 518
    iget-wide v4, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v6

    iget-wide v8, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v10

    invoke-static/range {v4 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v4

    .line 519
    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v8

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v12

    invoke-static/range {v6 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v6

    mul-double v8, v6, v6

    mul-double v10, v4, v4

    add-double/2addr v8, v10

    .line 520
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double/2addr v10, v8

    .line 521
    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    neg-double v12, v6

    neg-double v14, v4

    invoke-static {v12, v13, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v12

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    add-double v13, v12, v14

    mul-double v15, v10, v4

    mul-double v17, v10, v6

    mul-double v19, v10, v2

    invoke-static {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v21

    const/16 v23, 0x0

    move-object v12, v8

    invoke-direct/range {v12 .. v23}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V

    return-object v8
.end method

.method public apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 507
    move-object/from16 v1, p1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 508
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v14

    .line 509
    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v16

    .line 510
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXX:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cXY:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cX1:D

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-wide v4, v14

    move-wide/from16 v8, v16

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v12

    iget-wide v2, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYX:D

    iget-wide v6, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cYY:D

    iget-wide v10, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->cY1:D

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-wide v14, v12

    move-wide/from16 v12, v18

    invoke-static/range {v2 .. v13}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v2

    invoke-direct {v1, v14, v15, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v1
.end method

.method public bridge synthetic apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 0

    .line 463
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .line 530
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    .line 531
    check-cast p2, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 532
    check-cast p3, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 533
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->getLocation()Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object v0

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;->apply(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v0

    invoke-virtual {p3, v0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p3

    .line 535
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->isDirect()Z

    move-result p1

    invoke-static {p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D

    move-result-wide v1

    invoke-direct {v0, p3, p1, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;-><init>(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;ZD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/oned/OrientedPoint;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/oned/SubOrientedPoint;

    move-result-object p1

    return-object p1
.end method
