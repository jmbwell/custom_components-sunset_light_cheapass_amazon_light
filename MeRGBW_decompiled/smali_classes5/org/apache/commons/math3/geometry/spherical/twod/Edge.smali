.class public Lorg/apache/commons/math3/geometry/spherical/twod/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# instance fields
.field private final circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

.field private end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

.field private final length:D

.field private final start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 54
    iput-object p2, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 55
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    .line 56
    iput-object p5, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    .line 59
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setOutgoing(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 60
    invoke-virtual {p2, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    return-void
.end method

.method private addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;",
            "D",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            ")",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v0

    cmpg-double v0, p3, v0

    if-gtz v0, :cond_0

    return-object p1

    .line 215
    :cond_0
    invoke-virtual {p2, p6}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 216
    new-instance p6, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;

    iget-object v6, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object v1, p6

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    .line 217
    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p2
.end method


# virtual methods
.method public getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    return-object v0
.end method

.method public getEnd()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 82
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    return-wide v0
.end method

.method public getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;
    .locals 3

    .line 103
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v1

    add-double/2addr p1, v1

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object p1

    return-object p1
.end method

.method public getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    return-object v0
.end method

.method setNextEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V
    .locals 1

    .line 110
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getStart()Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 111
    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->setIncoming(Lorg/apache/commons/math3/geometry/spherical/twod/Edge;)V

    .line 112
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->getCircle()Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->bindWith(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)V

    return-void
.end method

.method split(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;Ljava/util/List;Ljava/util/List;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Circle;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/spherical/twod/Edge;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 129
    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    iget-object v1, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;->getLocation()Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;->getVector()Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPhase(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)D

    move-result-wide v8

    .line 130
    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    move-object/from16 v10, p1

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getInsideArc(Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/oned/Arc;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getInf()D

    move-result-wide v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v3, v8

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v1

    sub-double v11, v1, v8

    .line 132
    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/oned/Arc;->getSize()D

    move-result-wide v0

    add-double v13, v11, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    sub-double v15, v13, v0

    .line 136
    iget-object v0, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getTolerance()D

    move-result-wide v17

    .line 137
    iget-object v1, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->start:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    .line 138
    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v2, v2, v17

    cmpl-double v0, v15, v2

    if-ltz v0, :cond_0

    move-object/from16 v6, p3

    .line 142
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    move-object/from16 v6, p3

    const-wide/16 v2, 0x0

    cmpl-double v19, v15, v2

    if-ltz v19, :cond_1

    .line 151
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double v4, v8, v15

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    move-object/from16 v0, p0

    move-wide v3, v15

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-wide v15, v2

    .line 157
    :goto_0
    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v4, v2, v17

    cmpl-double v0, v11, v4

    if-ltz v0, :cond_3

    if-ltz v19, :cond_2

    .line 160
    iget-object v4, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double v5, v2, v15

    move-object/from16 v0, p0

    move-object v2, v4

    move-wide v3, v5

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    goto :goto_1

    :cond_2
    move-object/from16 v6, p2

    .line 165
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object/from16 v6, p2

    .line 169
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    add-double/2addr v8, v11

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v11, v15

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 174
    iget-wide v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double v4, v2, v17

    cmpl-double v0, v13, v4

    if-ltz v0, :cond_4

    .line 176
    iget-object v4, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    sub-double v5, v2, v11

    move-object/from16 v0, p0

    move-object v2, v4

    move-wide v3, v5

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    goto :goto_1

    .line 180
    :cond_4
    new-instance v2, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    new-instance v0, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;

    iget-object v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->circle:Lorg/apache/commons/math3/geometry/spherical/twod/Circle;

    invoke-virtual {v3, v8, v9}, Lorg/apache/commons/math3/geometry/spherical/twod/Circle;->getPointAt(D)Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;-><init>(Lorg/apache/commons/math3/geometry/euclidean/threed/Vector3D;)V

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;-><init>(Lorg/apache/commons/math3/geometry/spherical/twod/S2Point;)V

    sub-double v3, v11, v11

    move-object/from16 v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    move-result-object v1

    .line 184
    iget-object v2, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->end:Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    iget-wide v3, v7, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->length:D

    sub-double/2addr v3, v11

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/geometry/spherical/twod/Edge;->addSubEdge(Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;DLjava/util/List;Lorg/apache/commons/math3/geometry/spherical/twod/Circle;)Lorg/apache/commons/math3/geometry/spherical/twod/Vertex;

    :goto_1
    return-void
.end method
