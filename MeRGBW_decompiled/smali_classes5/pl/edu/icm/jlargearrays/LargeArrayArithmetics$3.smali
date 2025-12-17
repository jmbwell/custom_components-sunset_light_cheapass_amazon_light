.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->add(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

.field final synthetic val$_bc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V
    .locals 0

    .line 661
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$_bc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 666
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 667
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    .line 668
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$_bc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v3

    const/4 v4, 0x0

    .line 669
    aget v5, v2, v4

    aget v6, v3, v4

    add-float/2addr v5, v6

    const/4 v6, 0x1

    .line 670
    aget v2, v2, v6

    aget v3, v3, v6

    add-float/2addr v2, v3

    const/4 v3, 0x2

    new-array v3, v3, [F

    aput v5, v3, v4

    aput v2, v3, v6

    .line 671
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$3;->val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
