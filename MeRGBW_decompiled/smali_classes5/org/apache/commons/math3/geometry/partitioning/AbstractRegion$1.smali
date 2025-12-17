.class Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;
.super Ljava/lang/Object;
.source "AbstractRegion.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;-><init>(Ljava/util/Collection;D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
        "TS;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;->this$0:Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 112
    check-cast p1, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    check-cast p2, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/geometry/partitioning/AbstractRegion$1;->compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)I

    move-result p1

    return p1
.end method

.method public compare(Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;",
            "Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane<",
            "TS;>;)I"
        }
    .end annotation

    .line 114
    invoke-interface {p1}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v0

    .line 115
    invoke-interface {p2}, Lorg/apache/commons/math3/geometry/partitioning/SubHyperplane;->getSize()D

    move-result-wide v2

    cmpg-double v0, v2, v0

    if-gez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method
