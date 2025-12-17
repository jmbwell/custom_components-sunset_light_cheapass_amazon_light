.class public Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
.super Ljava/lang/Object;
.source "Plane.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private originOffset:D

.field private final tolerance:D

.field private u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

.field private w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 146
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 147
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 148
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 149
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 150
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 109
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 67
    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    const-wide/16 p1, 0x0

    .line 68
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 69
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 120
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 82
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    .line 83
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 84
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 135
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 99
    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-virtual {p3, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p3

    invoke-virtual {p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p2

    invoke-direct {p0, p1, p2, p4, p5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-void
.end method

.method public static intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 428
    iget-object v3, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v3

    .line 429
    iget-object v5, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v5}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v5

    .line 430
    iget-object v7, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    .line 431
    iget-wide v9, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 433
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v11

    .line 434
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v13

    .line 435
    iget-object v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v15

    .line 436
    iget-wide v0, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    move-wide/from16 p0, v0

    .line 438
    iget-object v0, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getX()D

    move-result-wide v0

    move-wide/from16 v17, v9

    .line 439
    iget-object v9, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getY()D

    move-result-wide v9

    move-wide/from16 v19, v7

    .line 440
    iget-object v7, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v7}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getZ()D

    move-result-wide v7

    move-wide/from16 v21, v5

    .line 441
    iget-wide v5, v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    mul-double v23, v13, v7

    mul-double v25, v9, v15

    move-wide/from16 v27, v5

    sub-double v5, v23, v25

    mul-double v23, v15, v0

    mul-double v25, v7, v11

    move-wide/from16 v29, v7

    sub-double v7, v23, v25

    mul-double v23, v11, v9

    mul-double v25, v0, v13

    move-wide/from16 v31, v11

    sub-double v11, v23, v25

    mul-double v23, v3, v5

    mul-double v25, v21, v7

    add-double v23, v23, v25

    mul-double v25, v19, v11

    add-double v23, v23, v25

    .line 449
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    const-wide v33, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v25, v33

    if-gez v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-wide/high16 v25, 0x3ff0000000000000L    # 1.0

    div-double v25, v25, v23

    .line 454
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    neg-double v5, v5

    mul-double v5, v5, v17

    mul-double v23, v19, v9

    mul-double v33, v29, v21

    sub-double v23, v23, v33

    move-wide/from16 v33, p0

    mul-double v23, v23, v33

    sub-double v5, v5, v23

    mul-double v23, v15, v21

    mul-double v35, v19, v13

    sub-double v23, v23, v35

    mul-double v23, v23, v27

    sub-double v5, v5, v23

    mul-double v5, v5, v25

    neg-double v7, v7

    mul-double v7, v7, v17

    mul-double v23, v29, v3

    mul-double v29, v19, v0

    sub-double v23, v23, v29

    mul-double v23, v23, v33

    sub-double v7, v7, v23

    mul-double v19, v19, v31

    mul-double/2addr v15, v3

    sub-double v19, v19, v15

    mul-double v19, v19, v27

    sub-double v7, v7, v19

    mul-double v36, v7, v25

    neg-double v7, v11

    mul-double v7, v7, v17

    mul-double v0, v0, v21

    mul-double/2addr v9, v3

    sub-double/2addr v0, v9

    mul-double v0, v0, v33

    sub-double/2addr v7, v0

    mul-double/2addr v13, v3

    mul-double v0, v21, v31

    sub-double/2addr v13, v0

    mul-double v13, v13, v27

    sub-double/2addr v7, v13

    mul-double v38, v7, v25

    move-object/from16 v33, v2

    move-wide/from16 v34, v5

    invoke-direct/range {v33 .. v39}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DDD)V

    return-object v2
.end method

.method private setFrame()V
    .locals 4

    .line 203
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v1, v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 204
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->orthogonal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 205
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method private setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-ltz v2, :cond_0

    .line 197
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double/2addr v3, v0

    invoke-direct {v2, v3, v4, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    iput-object v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void

    .line 195
    :cond_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ZERO_NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p1, v0, v1}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Z
    .locals 4

    .line 481
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 1

    .line 160
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    move-result-object v0

    return-object v0
.end method

.method public getNormal()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 515
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)D"
        }
    .end annotation

    .line 503
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)D
    .locals 4

    .line 495
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v2, v2

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    :goto_0
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOrigin()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11

    .line 336
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double v7, p2, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v10
.end method

.method public getTolerance()D
    .locals 2

    .line 265
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    return-wide v0
.end method

.method public getU()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public getV()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 1

    .line 251
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Line;
    .locals 5

    .line 411
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->crossProduct(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->getNorm()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v1, v1, v3

    if-gez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 415
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-direct {v1, v0, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    invoke-static {p0, p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    .line 416
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    return-object v1
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/threed/Line;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 9

    .line 395
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->getDirection()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v6

    .line 396
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    .line 397
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 400
    :cond_0
    sget-object v2, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->ZERO:Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    .line 401
    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v7

    add-double/2addr v4, v7

    neg-double v4, v4

    div-double/2addr v4, v0

    .line 402
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object p1
.end method

.method public isSimilarTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)Z
    .locals 6

    .line 347
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->angle(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v0

    const-wide v2, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 348
    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const-wide v2, 0x400921fb5440bd7cL    # 3.141592653489793

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public project(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;"
        }
    .end annotation

    .line 258
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;)V
    .locals 2

    .line 181
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 182
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 183
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 184
    iget-object v0, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 185
    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 169
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setNormal(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    .line 170
    iget-object p2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide p1

    neg-double p1, p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    .line 171
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->setFrame()V

    return-void
.end method

.method public revertSelf()V
    .locals 2

    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 281
    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 282
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 283
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->negate()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 284
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    return-void
.end method

.method public rotate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 4

    .line 360
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->subtract(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    .line 361
    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, p1, v0, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 365
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 366
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Rotation;->applyTo(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v1
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)Z"
        }
    .end annotation

    .line 524
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object p1, p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 324
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 325
    new-instance v10, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v4

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v7, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->originOffset:D

    neg-double v7, v7

    iget-object v9, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;-><init>(DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;DLorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    return-object v10
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;"
        }
    .end annotation

    .line 302
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 313
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 314
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->dotProduct(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/threed/Euclidean3D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 293
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public translate(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;
    .locals 4

    .line 379
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->origin:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;->add(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->w:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, p1, v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;D)V

    .line 382
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->u:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    .line 383
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    iput-object p1, v0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->v:Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    return-object v0
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;
    .locals 4

    .line 465
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/threed/SubPlane;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;
    .locals 3

    .line 473
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/threed/Plane;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/threed/PolyhedronsSet;

    move-result-object v0

    return-object v0
.end method
