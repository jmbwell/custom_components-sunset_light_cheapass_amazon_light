.class public Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
.super Ljava/lang/Object;
.source "Circle.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
        "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
        ">;"
    }
.end annotation


# instance fields
.field private pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private final tolerance:D

.field private x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 66
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-void
.end method

.method private constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 90
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 91
    iput-object p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 92
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/spherical/twod/Circle$1;)V
    .locals 0

    .line 45
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 6

    .line 101
    iget-object v1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v2, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v3, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;D)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 77
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object p0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)D
    .locals 2

    .line 45
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-wide v0
.end method

.method public static getTransform(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;"
        }
    .end annotation

    .line 286
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle$CircleTransform;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    return-object v0
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .line 106
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-object v0
.end method

.method public getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;
    .locals 9

    .line 233
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    .line 235
    new-instance p1, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double v4, v0, v2

    add-double/2addr v0, v2

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;-><init>(DDD)V

    return-object p1
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)D"
        }
    .end annotation

    .line 255
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 4

    .line 268
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    const-wide v2, 0x3ff921fb54442d18L    # 1.5707963267948966

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D
    .locals 4

    .line 164
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    neg-double v0, v0

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v2

    neg-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 8

    .line 182
    new-instance v7, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v7
.end method

.method public getPole()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 7

    .line 133
    new-instance v6, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v6
.end method

.method public getTolerance()D
    .locals 2

    .line 143
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    return-wide v0
.end method

.method public getXAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getYAxis()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p1

    return-object p1
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 1

    .line 114
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 115
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->x:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 116
    invoke-static {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->normalize()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public revertSelf()V
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->y:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 124
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)Z"
        }
    .end annotation

    .line 273
    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 274
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->pole:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/oned/Sphere1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;"
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;->getAlpha()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v0
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Sphere2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;"
        }
    .end annotation

    .line 150
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;

    check-cast p1, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/oned/S1Point;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    move-result-object v0

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;
    .locals 4

    .line 240
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;

    new-instance v1, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/SubCircle;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;
    .locals 3

    .line 248
    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/spherical/twod/SphericalPolygonsSet;-><init>(D)V

    return-object v0
.end method
