.class public Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;
.super Ljava/lang/Object;
.source "SphereGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/enclosing/SupportBallGenerator<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 8

    const/4 v0, 0x0

    .line 138
    aget-object v1, p2, v0

    const/4 v2, 0x1

    aget-object v3, p3, v2

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    const/4 v3, 0x2

    aget-object v4, p1, v3

    const/4 v5, 0x3

    aget-object v6, p1, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v0

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v3

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v2

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v2

    aget-object v7, p1, v5

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v5

    aget-object v7, p1, v0

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v3

    aget-object v6, p3, v5

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v3

    aget-object v7, p1, v2

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object v4, p2, v5

    aget-object v6, p3, v2

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aget-object v6, p1, v0

    aget-object v7, p1, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v1

    aget-object p2, p2, v5

    aget-object p3, p3, v3

    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p2

    aget-object p3, p1, v2

    aget-object p1, p1, v0

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 38
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v2, v4, :cond_0

    .line 39
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    new-array v3, v3, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v1, v2, v4, v5, v3}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 41
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 42
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v12, 0x2

    if-ge v5, v12, :cond_1

    .line 43
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-array v4, v4, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v4, v3

    const-wide/16 v5, 0x0

    invoke-direct {v1, v2, v5, v6, v4}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 45
    :cond_1
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v11, 0x3

    if-ge v5, v11, :cond_2

    .line 47
    new-instance v1, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    move-object v5, v14

    move-object v8, v2

    move-object v11, v13

    invoke-direct/range {v5 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    invoke-virtual {v2, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->distance(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    mul-double/2addr v7, v5

    new-array v5, v12, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v5, v3

    aput-object v13, v5, v4

    invoke-direct {v1, v14, v7, v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v1

    .line 51
    :cond_2
    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v14, v5

    check-cast v14, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 52
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ge v5, v6, :cond_3

    .line 55
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v5

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v7

    add-double/2addr v5, v7

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm1()D

    move-result-wide v7

    add-double/2addr v5, v7

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    mul-double v9, v5, v7

    move-object v5, v1

    move-object v6, v2

    move-object v7, v13

    move-object v8, v14

    invoke-direct/range {v5 .. v10}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 57
    new-instance v5, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;

    invoke-direct {v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;-><init>()V

    new-array v6, v11, [Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v1, v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/DiskGenerator;->ballOnSupport(Ljava/util/List;)Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    move-result-object v5

    .line 63
    new-instance v6, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getCenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/geometry/Vector;

    invoke-virtual {v1, v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;->getRadius()D

    move-result-wide v7

    new-array v5, v11, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v5, v3

    aput-object v13, v5, v4

    aput-object v14, v5, v12

    invoke-direct {v6, v1, v7, v8, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v6

    .line 67
    :cond_3
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 91
    new-array v5, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v3

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v4

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v12

    new-instance v7, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v7, v5, v11

    .line 95
    new-array v7, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v3

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v4

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v12

    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v8, v7, v11

    .line 99
    new-array v8, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    new-instance v9, Lorg/apache/commons/math3/fraction/BigFraction;

    move-object/from16 p1, v7

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v6

    invoke-direct {v9, v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v9, v8, v3

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v13}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v8, v4

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v14}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    aput-object v6, v8, v12

    new-instance v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v10

    invoke-direct {v6, v10, v11}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(D)V

    const/4 v7, 0x3

    aput-object v6, v8, v7

    const/4 v6, 0x4

    .line 103
    new-array v9, v6, [Lorg/apache/commons/math3/fraction/BigFraction;

    aget-object v6, v5, v3

    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, p1, v3

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, v8, v3

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v9, v3

    aget-object v6, v5, v4

    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, p1, v4

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, v8, v4

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v9, v4

    aget-object v6, v5, v12

    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, p1, v12

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aget-object v11, v8, v12

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v6, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v9, v12

    const/4 v6, 0x3

    aget-object v7, v5, v6

    invoke-virtual {v7, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v11, p1, v6

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aget-object v11, v8, v6

    invoke-virtual {v11, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    aput-object v7, v9, v6

    move-object/from16 v6, p1

    .line 109
    invoke-direct {v0, v5, v6, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    .line 110
    invoke-direct {v0, v9, v6, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 111
    invoke-direct {v0, v9, v5, v8}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    .line 112
    invoke-direct {v0, v9, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/SphereGenerator;->minor([Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;[Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    .line 113
    invoke-virtual {v15, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v15

    .line 114
    invoke-virtual {v7, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    invoke-virtual {v7}, Lorg/apache/commons/math3/fraction/BigFraction;->negate()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v7

    .line 115
    invoke-virtual {v9, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v9

    .line 116
    aget-object v5, v5, v3

    invoke-virtual {v5, v15}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    .line 117
    aget-object v6, v6, v3

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    .line 118
    aget-object v8, v8, v3

    invoke-virtual {v8, v9}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v8

    .line 119
    invoke-virtual {v5, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v6, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    invoke-virtual {v8, v8}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    .line 120
    new-instance v6, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;

    new-instance v8, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v15}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v17

    invoke-virtual {v7}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v19

    invoke-virtual {v9}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v21

    move-object/from16 v16, v8

    invoke-direct/range {v16 .. v22}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    invoke-virtual {v5}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    const/4 v5, 0x4

    new-array v5, v5, [Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    aput-object v2, v5, v3

    aput-object v13, v5, v4

    aput-object v14, v5, v12

    const/4 v2, 0x3

    aput-object v1, v5, v2

    invoke-direct {v6, v8, v10, v11, v5}, Lorg/apache/commons/math3/geometry/enclosing/EnclosingBall;-><init>(Lorg/apache/commons/math3/geometry/Point;D[Lorg/apache/commons/math3/geometry/Point;)V

    return-object v6
.end method
