.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->neg(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V
    .locals 0

    .line 1792
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1797
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1798
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 1799
    aget-wide v4, v2, v3

    neg-double v4, v4

    const/4 v6, 0x1

    .line 1800
    aget-wide v7, v2, v6

    neg-double v7, v7

    const/4 v2, 0x2

    new-array v2, v2, [D

    aput-wide v4, v2, v3

    aput-wide v7, v2, v6

    .line 1801
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$23;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v3, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
