.class Lorg/jtransforms/dst/DoubleDST_2D$4;
.super Ljava/lang/Object;
.source "DoubleDST_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_2D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstColumn:J

.field final synthetic val$lastColumn:J

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    iput-wide p2, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$firstColumn:J

    iput-wide p4, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$lastColumn:J

    iput-object p6, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p7, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 235
    new-instance v0, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_2D;->access$500(Lorg/jtransforms/dst/DoubleDST_2D;)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 236
    iget-wide v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$firstColumn:J

    :goto_0
    iget-wide v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$lastColumn:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    .line 237
    :goto_1
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_2D;->access$500(Lorg/jtransforms/dst/DoubleDST_2D;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    const-wide/16 v8, 0x1

    if-gez v7, :cond_0

    .line 238
    iget-object v7, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_2D;->access$400(Lorg/jtransforms/dst/DoubleDST_2D;)J

    move-result-wide v10

    mul-long/2addr v10, v5

    add-long/2addr v10, v1

    invoke-virtual {v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v0, v5, v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v5, v8

    goto :goto_1

    .line 240
    :cond_0
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/DoubleDST_2D;->access$300(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v5

    iget-boolean v6, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$scale:Z

    invoke-virtual {v5, v0, v6}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    .line 241
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/DoubleDST_2D;->access$500(Lorg/jtransforms/dst/DoubleDST_2D;)J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    .line 242
    iget-object v5, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_2D$4;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_2D;->access$400(Lorg/jtransforms/dst/DoubleDST_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v3

    add-long/2addr v6, v1

    invoke-virtual {v0, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v5, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v3, v8

    goto :goto_2

    :cond_1
    add-long/2addr v1, v8

    goto :goto_0

    :cond_2
    return-void
.end method
