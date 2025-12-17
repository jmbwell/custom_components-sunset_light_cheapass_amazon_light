.class Lorg/apache/commons/math3/geometry/partitioning/Characterization;
.super Ljava/lang/Object;
.source "Characterization.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S::",
        "Lorg/apache/commons/math3/geometry/Space;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation
.end field

.field private insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field

.field private final outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation
.end field

.field private outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 58
    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 59
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .line 60
    new-instance v0, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-direct {v0}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    return-void
.end method

.method private addInsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 131
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    goto :goto_0

    .line 133
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 135
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addOutsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-nez v0, :cond_0

    .line 117
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    goto :goto_0

    .line 119
    :cond_0
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->reunite(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    .line 121
    :goto_0
    iget-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/NodesSet;->addAll(Ljava/lang/Iterable;)V

    return-void
.end method

.method private characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;>;)V"
        }
    .end annotation

    .line 79
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 83
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->addInsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->addOutsideTouching(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 89
    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Characterization$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    .line 97
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p2

    .line 98
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 100
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    .line 101
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-interface {p3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 105
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p1

    .line 94
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    goto :goto_0

    .line 91
    :cond_4
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->characterize(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Ljava/util/List;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getInsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object v0
.end method

.method public getOutsideSplitters()Lorg/apache/commons/math3/geometry/partitioning/NodesSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/NodesSet<",
            "TS;>;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideSplitters:Lorg/apache/commons/math3/geometry/partitioning/NodesSet;

    return-object v0
.end method

.method public insideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public outsideTouching()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    return-object v0
.end method

.method public touchInside()Z
    .locals 1

    .line 168
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->insideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public touchOutside()Z
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/Characterization;->outsideTouching:Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
