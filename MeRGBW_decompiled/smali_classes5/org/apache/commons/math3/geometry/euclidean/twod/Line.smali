.class public Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
.super Ljava/lang/Object;
.source "Line.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
.implements Lorg/apache/commons/math3/geometry/partitioning/Embedding;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        ">;",
        "Lorg/apache/commons/math3/geometry/partitioning/Embedding<",
        "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
        "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_TOLERANCE:D = 1.0E-10


# instance fields
.field private angle:D

.field private cos:D

.field private originOffset:D

.field private reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

.field private sin:D

.field private final tolerance:D


# direct methods
.method private constructor <init>(DDDDD)V
    .locals 0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 120
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 121
    iput-wide p5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 122
    iput-wide p7, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 123
    iput-wide p9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method

.method synthetic constructor <init>(DDDDDLorg/apache/commons/math3/geometry/euclidean/twod/Line$1;)V
    .locals 0

    .line 63
    invoke-direct/range {p0 .. p10}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V
    .locals 4

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 155
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 156
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 157
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    .line 158
    iget-wide v0, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 145
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;DD)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    .line 106
    iput-wide p4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    .line 135
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V

    .line 95
    iput-wide p3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    return-wide v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    return-wide v0
.end method

.method static synthetic access$200(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method static synthetic access$300(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 2

    .line 63
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public static getTransform(Ljava/awt/geom/AffineTransform;)Lorg/apache/commons/math3/geometry/partitioning/Transform;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/awt/geom/AffineTransform;",
            ")",
            "Lorg/apache/commons/math3/geometry/partitioning/Transform<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 453
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line$LineTransform;-><init>(Ljava/awt/geom/AffineTransform;)V

    return-object v0
.end method

.method private unlinkReverse()V
    .locals 2

    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 220
    iput-object v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 222
    :cond_0
    iput-object v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-void
.end method


# virtual methods
.method public contains(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)Z
    .locals 4

    .line 374
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 1

    .line 164
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)V

    return-object v0
.end method

.method public bridge synthetic copySelf()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->copySelf()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    move-result-object v0

    return-object v0
.end method

.method public distance(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)D
    .locals 2

    .line 387
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Vector;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getAngle()D
    .locals 4

    .line 410
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Point;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 346
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 347
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v4, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/Vector;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)D"
        }
    .end annotation

    .line 341
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->getOffset(Lorg/apache/commons/math3/geometry/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public getOffset(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)D
    .locals 10

    .line 332
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v8, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v2 .. v9}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v2, v2

    goto :goto_0

    :cond_0
    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    :goto_0
    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getOriginOffset()D
    .locals 2

    .line 427
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-wide v0
.end method

.method public getPointAt(Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;D)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 12

    .line 363
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v8

    .line 364
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    sub-double/2addr p2, v0

    .line 365
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    move-wide v0, v8

    move-wide v4, p2

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v10

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, p2

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p2

    invoke-direct {p1, v10, v11, p2, p3}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public getReverse()Lorg/apache/commons/math3/geometry/euclidean/twod/Line;
    .locals 12

    .line 241
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    if-nez v0, :cond_1

    .line 242
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    cmpg-double v5, v1, v3

    if-gez v5, :cond_0

    add-double/2addr v1, v3

    goto :goto_0

    :cond_0
    sub-double/2addr v1, v3

    :goto_0
    move-wide v2, v1

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v8, v8

    iget-wide v10, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;-><init>(DDDDD)V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 244
    iput-object p0, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 246
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->reverse:Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    return-object v0
.end method

.method public getTolerance()D
    .locals 2

    .line 305
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    return-wide v0
.end method

.method public intersection(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 13

    .line 286
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    .line 287
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 290
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v3, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v5, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v7, v7

    iget-wide v9, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v3 .. v10}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v3

    div-double/2addr v3, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v7, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v9, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v9, v9

    iget-wide v11, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    invoke-static/range {v5 .. v12}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v5

    div-double/2addr v5, v0

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object v2
.end method

.method public isParallelTo(Lorg/apache/commons/math3/geometry/euclidean/twod/Line;)Z
    .locals 8

    .line 396
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v4, v4

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    cmpg-double p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
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
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;"
        }
    .end annotation

    .line 298
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;D)V
    .locals 8

    .line 195
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 196
    invoke-static {p2, p3, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 197
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 198
    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p2

    iput-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 199
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-wide p2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, p2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public reset(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 15

    move-object v0, p0

    .line 173
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 174
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    sub-double/2addr v1, v3

    .line 175
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v5

    sub-double/2addr v3, v5

    .line 176
    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpl-double v9, v5, v7

    if-nez v9, :cond_0

    .line 178
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 179
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 180
    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 181
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    goto :goto_0

    :cond_0
    neg-double v7, v3

    neg-double v9, v1

    .line 183
    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v7, v9

    iput-wide v7, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    div-double/2addr v1, v5

    .line 184
    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    div-double/2addr v3, v5

    .line 185
    iput-wide v3, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 186
    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v9

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v1

    neg-double v11, v1

    invoke-virtual/range {p2 .. p2}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v13

    invoke-static/range {v7 .. v14}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    div-double/2addr v1, v5

    iput-wide v1, v0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    :goto_0
    return-void
.end method

.method public revertSelf()V
    .locals 5

    .line 205
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    add-double/2addr v0, v2

    .line 207
    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    goto :goto_0

    :cond_0
    sub-double/2addr v0, v2

    .line 209
    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 211
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 212
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    .line 213
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Hyperplane<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)Z"
        }
    .end annotation

    .line 352
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;

    .line 353
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v2, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v6, p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

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

.method public setAngle(D)V
    .locals 2

    .line 417
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    .line 418
    invoke-static {p1, p2, v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->normalizeAngle(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    .line 419
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    .line 420
    iget-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->angle:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    return-void
.end method

.method public setOriginOffset(D)V
    .locals 0

    .line 434
    invoke-direct {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->unlinkReverse()V

    .line 435
    iput-wide p1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public bridge synthetic toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 275
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;->getX()D

    move-result-wide v8

    .line 276
    new-instance p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    neg-double v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    move-wide v0, v8

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v10

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    iget-wide v6, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    invoke-direct {p1, v10, v11, v0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;-><init>(DD)V

    return-object p1
.end method

.method public toSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;"
        }
    .end annotation

    .line 264
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/Point;
    .locals 0

    .line 63
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Point<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 269
    check-cast p1, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;

    .line 270
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v7

    invoke-static/range {v1 .. v8}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;-><init>(D)V

    return-object v0
.end method

.method public toSubSpace(Lorg/apache/commons/math3/geometry/Vector;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/Vector<",
            "Lorg/apache/commons/math3/geometry/euclidean/twod/Euclidean2D;",
            ">;)",
            "Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;"
        }
    .end annotation

    .line 255
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->toSubSpace(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/euclidean/oned/Vector1D;

    move-result-object p1

    return-object p1
.end method

.method public translateToPoint(Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;)V
    .locals 8

    .line 403
    iget-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->cos:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getY()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->sin:D

    neg-double v4, v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/euclidean/twod/Vector2D;->getX()D

    move-result-wide v6

    invoke-static/range {v0 .. v7}, Lorg/apache/commons/math3/util/MathArrays;->linearCombination(DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->originOffset:D

    return-void
.end method

.method public wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;
    .locals 4

    .line 310
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    new-instance v1, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;

    iget-wide v2, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/geometry/euclidean/oned/IntervalsSet;-><init>(D)V

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;-><init>(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;Lorg/apache/commons/math3/geometry/partitioning/Region;)V

    return-object v0
.end method

.method public bridge synthetic wholeHyperplane()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeHyperplane()Lorg/apache/commons/math3/geometry/euclidean/twod/SubLine;

    move-result-object v0

    return-object v0
.end method

.method public wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;
    .locals 3

    .line 318
    new-instance v0, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    iget-wide v1, p0, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->tolerance:D

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;-><init>(D)V

    return-object v0
.end method

.method public bridge synthetic wholeSpace()Lorg/apache/commons/math3/geometry/partitioning/Region;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lorg/apache/commons/math3/geometry/euclidean/twod/Line;->wholeSpace()Lorg/apache/commons/math3/geometry/euclidean/twod/PolygonsSet;

    move-result-object v0

    return-object v0
.end method
