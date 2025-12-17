.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DifferenceMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
        "TS;>;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler<",
        "TS;>;"
    }
.end annotation


# instance fields
.field private final region1:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final region2:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/Region;Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)V"
        }
    .end annotation

    .line 269
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 270
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    .line 271
    invoke-interface {p3}, Lorg/apache/commons/math3/geometry/partitioning/Region;->copySelf()Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    return-void
.end method


# virtual methods
.method public fixNode(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 295
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->pruneAroundConvexCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->buildNew(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/Region;

    move-result-object p1

    .line 297
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->getBarycenter()Lorg/apache/commons/math3/geometry/Point;

    move-result-object p1

    .line 298
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region1:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->INSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->region2:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/geometry/partitioning/Region;->checkPoint(Lorg/apache/commons/math3/geometry/Point;)Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    move-result-object p1

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Region$Location;->OUTSIDE:Lorg/apache/commons/math3/geometry/partitioning/Region$Location;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public merge(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZZ)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;ZZ)",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;"
        }
    .end annotation

    .line 278
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$DifferenceMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    if-eqz p5, :cond_0

    move-object p1, p2

    :cond_0
    invoke-static {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;->access$400(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    .line 282
    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    return-object p1

    :cond_1
    if-eqz p5, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, p2

    .line 288
    :goto_0
    invoke-virtual {p1, p3, p4, p0}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    return-object p1
.end method
