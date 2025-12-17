.class Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;
.super Ljava/lang/Object;
.source "RegionFactory.java"

# interfaces
.implements Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IntersectionMerger"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/geometry/partitioning/BSPTree$LeafMerger<",
        "TS;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$1;)V
    .locals 0

    .line 224
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;)V

    return-void
.end method


# virtual methods
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

    .line 229
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-eqz p5, :cond_0

    .line 231
    new-instance p1, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;

    iget-object p5, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    const/4 v0, 0x1

    invoke-direct {p1, p5, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V

    invoke-virtual {p2, p3, p4, p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    return-object p2

    .line 235
    :cond_0
    new-instance p2, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;

    iget-object p5, p0, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$IntersectionMerger;->this$0:Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;

    const/4 v0, 0x0

    invoke-direct {p2, p5, v0}, Lorg/apache/commons/math3/geometry/partitioning/RegionFactory$VanishingToLeaf;-><init>(Lorg/apache/commons/math3/geometry/partitioning/RegionFactory;Z)V

    invoke-virtual {p1, p3, p4, p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->insertInTree(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;ZLorg/apache/commons/math3/geometry/partitioning/BSPTree$VanishingCutHandler;)V

    return-object p1
.end method
