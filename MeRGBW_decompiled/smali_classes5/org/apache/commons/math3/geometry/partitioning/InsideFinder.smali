.class Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;
.super Ljava/lang/Object;
.source "InsideFinder.java"


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
.field private minusFound:Z

.field private plusFound:Z

.field private final region:Lorg/apache/commons/math3/geometry/partitioning/Region;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/Region;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/Region<",
            "TS;>;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 43
    iput-boolean p1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    return-void
.end method


# virtual methods
.method public minusFound()Z
    .locals 1

    .line 147
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    return v0
.end method

.method public plusFound()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    return v0
.end method

.method public recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/BSPTree<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)V"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 63
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 65
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 66
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    .line 72
    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder$1;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v1, :cond_f

    const/4 v3, 0x2

    if-eq v2, v3, :cond_b

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    .line 117
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object p2

    invoke-interface {v0, p2}, Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;->sameOrientationAs(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 118
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 119
    :cond_2
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    .line 121
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 122
    :cond_4
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    goto/16 :goto_2

    .line 125
    :cond_5
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 126
    :cond_6
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 128
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p2

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    if-nez p2, :cond_8

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getAttribute()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_13

    .line 129
    :cond_8
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto/16 :goto_2

    .line 105
    :cond_9
    invoke-interface {p2, v0}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->split(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;

    move-result-object p2

    .line 108
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    .line 111
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v0, :cond_13

    .line 112
    :cond_a
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane$SplitSubHyperplane;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto/16 :goto_2

    .line 90
    :cond_b
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v2, :cond_c

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 92
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto :goto_0

    .line 95
    :cond_c
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 96
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 99
    :cond_d
    :goto_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v0, :cond_13

    .line 100
    :cond_e
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    goto :goto_2

    .line 75
    :cond_f
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getCut()Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getHyperplane()Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->side(Lorg/apache/commons/math3/geometry/partitioning/Hyperplane;)Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    sget-object v2, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    if-ne v0, v2, :cond_10

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 77
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    goto :goto_1

    .line 80
    :cond_10
    iget-object v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->region:Lorg/apache/commons/math3/geometry/partitioning/Region;

    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getMinus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/geometry/partitioning/Region;->isEmpty(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 81
    iput-boolean v1, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    .line 84
    :cond_11
    :goto_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->plusFound:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->minusFound:Z

    if-nez v0, :cond_13

    .line 85
    :cond_12
    invoke-virtual {p1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTree;->getPlus()Lorg/apache/commons/math3/geometry/partitioning/BSPTree;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/InsideFinder;->recurseSides(Lorg/apache/commons/math3/geometry/partitioning/BSPTree;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)V

    :cond_13
    :goto_2
    return-void
.end method
