.class Lorg/jtransforms/dct/DoubleDCT_1D$4;
.super Ljava/lang/Object;
.source "DoubleDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J

.field final synthetic val$t:Lpl/edu/icm/jlargearrays/DoubleLargeArray;


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    iput-wide p2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$offa:J

    iput-object p9, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 493
    iget-wide v0, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    .line 495
    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v5, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$offa:J

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    .line 496
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v7, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v7}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$100(Lorg/jtransforms/dct/DoubleDCT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    mul-double/2addr v7, v4

    invoke-virtual {v6, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 497
    iget-object v6, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x1

    add-long/2addr v2, v7

    iget-object v9, p0, Lorg/jtransforms/dct/DoubleDCT_1D$4;->this$0:Lorg/jtransforms/dct/DoubleDCT_1D;

    invoke-static {v9}, Lorg/jtransforms/dct/DoubleDCT_1D;->access$100(Lorg/jtransforms/dct/DoubleDCT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    neg-double v9, v9

    mul-double/2addr v9, v4

    invoke-virtual {v6, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v7

    goto :goto_0

    :cond_0
    return-void
.end method
