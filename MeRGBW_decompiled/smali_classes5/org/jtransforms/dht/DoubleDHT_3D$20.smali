.class Lorg/jtransforms/dht/DoubleDHT_3D$20;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/DoubleDHT_3D;->ddxt3da_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 1754
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput-wide p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$n0:J

    iput p7, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$nthreads:I

    iput-object p8, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v0, p0

    .line 1759
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 1760
    iget v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v8, 0x2

    const-wide/16 v12, 0x1

    if-ne v2, v3, :cond_7

    .line 1761
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$n0:J

    :goto_0
    iget-object v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v14}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v14

    cmp-long v14, v2, v14

    if-gez v14, :cond_f

    .line 1762
    iget-object v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v14}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v14

    int-to-long v14, v14

    mul-long/2addr v14, v2

    const-wide/16 v16, 0x0

    .line 1763
    :goto_1
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_0

    .line 1764
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$300(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v10, v10

    mul-long v10, v10, v16

    add-long/2addr v10, v14

    invoke-virtual {v4, v5, v10, v11}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v16, v16, v12

    goto :goto_1

    .line 1766
    :cond_0
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v4, v8

    if-lez v4, :cond_4

    const-wide/16 v4, 0x0

    .line 1767
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_3

    const-wide/16 v10, 0x0

    .line 1768
    :goto_3
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    cmp-long v6, v10, v6

    if-gez v6, :cond_1

    .line 1769
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v10

    add-long/2addr v6, v14

    add-long/2addr v6, v4

    .line 1770
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v8

    add-long/2addr v8, v10

    .line 1771
    iget-object v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1772
    iget-object v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v25, v2

    const-wide/16 v23, 0x1

    add-long v2, v6, v23

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1773
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    add-long/2addr v2, v8

    iget-object v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v4

    const-wide/16 v21, 0x2

    add-long v4, v6, v21

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1774
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v21

    add-long/2addr v8, v2

    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x3

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v10, v2

    move-wide v12, v2

    move-wide/from16 v2, v25

    move-wide/from16 v4, v27

    const-wide/16 v8, 0x2

    goto :goto_3

    :cond_1
    move-wide/from16 v25, v2

    move-wide/from16 v27, v4

    .line 1776
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1777
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1778
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1779
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 1780
    :goto_4
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    .line 1781
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v14

    add-long v4, v4, v27

    .line 1782
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 1783
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v4, v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1784
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x1

    add-long v12, v4, v9

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v12, v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1785
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x2

    add-long v11, v4, v9

    iget-object v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v13}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v21

    add-long v9, v6, v21

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1786
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x3

    add-long/2addr v4, v9

    iget-object v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    mul-long/2addr v9, v11

    add-long/2addr v6, v9

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_4

    :cond_2
    const-wide/16 v2, 0x4

    const-wide/16 v11, 0x2

    add-long v4, v27, v2

    move-wide v8, v11

    move-wide/from16 v2, v25

    const-wide/16 v12, 0x1

    goto/16 :goto_2

    :cond_3
    move-wide/from16 v25, v2

    goto/16 :goto_7

    :cond_4
    move-wide/from16 v25, v2

    move-wide v11, v8

    .line 1789
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v11

    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    .line 1790
    :goto_5
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 1791
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v14

    .line 1792
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1793
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    add-long/2addr v6, v2

    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v9

    goto :goto_5

    .line 1795
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 1796
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 1797
    :goto_6
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    .line 1798
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v14

    .line 1799
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v6, v4, v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1800
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x1

    add-long/2addr v4, v7

    iget-object v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v9

    add-long/2addr v9, v2

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v6, v4, v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v7

    goto :goto_6

    .line 1761
    :cond_6
    :goto_7
    iget v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v25, v2

    const-wide/16 v8, 0x2

    const-wide/16 v12, 0x1

    goto/16 :goto_0

    .line 1805
    :cond_7
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$n0:J

    :goto_8
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_f

    .line 1806
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 1807
    :goto_9
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_8

    .line 1808
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$300(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    iget-boolean v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    goto :goto_9

    .line 1810
    :cond_8
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    cmp-long v6, v6, v8

    if-lez v6, :cond_c

    const-wide/16 v6, 0x0

    .line 1811
    :goto_a
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_b

    const-wide/16 v8, 0x0

    .line 1812
    :goto_b
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_9

    .line 1813
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v10, v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    add-long/2addr v10, v6

    .line 1814
    iget-object v12, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v12}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v12

    add-long/2addr v12, v8

    .line 1815
    iget-object v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1816
    iget-object v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v25, v2

    const-wide/16 v23, 0x1

    add-long v2, v10, v23

    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1817
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    add-long/2addr v2, v12

    iget-object v14, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v6

    const-wide/16 v21, 0x2

    add-long v6, v10, v21

    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1818
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v21

    add-long/2addr v12, v2

    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    move-wide/from16 v2, v25

    move-wide/from16 v6, v27

    goto :goto_b

    :cond_9
    move-wide/from16 v25, v2

    move-wide/from16 v27, v6

    .line 1820
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1821
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    iget-boolean v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1822
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    iget-boolean v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1823
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    iget-boolean v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 1824
    :goto_c
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_a

    .line 1825
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v6

    int-to-long v6, v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    add-long v6, v6, v27

    .line 1826
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v8

    add-long/2addr v8, v2

    .line 1827
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1828
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1829
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x2

    add-long v13, v6, v11

    iget-object v15, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v15}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v21

    add-long v11, v8, v21

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1830
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x3

    add-long/2addr v6, v11

    iget-object v13, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v13}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v10, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_c

    :cond_a
    const-wide/16 v2, 0x4

    const-wide/16 v11, 0x3

    const-wide/16 v15, 0x2

    add-long v6, v27, v2

    move-wide/from16 v2, v25

    goto/16 :goto_a

    :cond_b
    move-wide/from16 v25, v2

    const-wide/16 v11, 0x3

    const-wide/16 v15, 0x2

    goto/16 :goto_f

    :cond_c
    move-wide/from16 v25, v2

    const-wide/16 v2, 0x4

    const-wide/16 v11, 0x3

    const-wide/16 v15, 0x2

    .line 1833
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v6

    cmp-long v6, v6, v15

    if-nez v6, :cond_e

    const-wide/16 v6, 0x0

    .line 1834
    :goto_d
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_d

    .line 1835
    iget-object v8, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v8

    int-to-long v8, v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    .line 1836
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v1, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1837
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v13

    add-long/2addr v13, v6

    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v17

    goto :goto_d

    .line 1839
    :cond_d
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v1, v8, v9, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 1840
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$500(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    iget-object v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v13

    iget-boolean v7, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$scale:Z

    invoke-virtual {v6, v1, v13, v14, v7}, Lorg/jtransforms/dht/DoubleDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v6, v8

    .line 1841
    :goto_e
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-gez v10, :cond_e

    .line 1842
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v13, v10

    mul-long/2addr v13, v6

    add-long/2addr v13, v4

    .line 1843
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v10, v13, v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1844
    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v19, 0x1

    add-long v13, v13, v19

    iget-object v3, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v3}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$800(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v21

    add-long v8, v21, v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v2, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    const-wide/16 v2, 0x4

    const-wide/16 v8, 0x0

    goto :goto_e

    :cond_e
    :goto_f
    const-wide/16 v19, 0x1

    .line 1805
    iget v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$20;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v25, v2

    goto/16 :goto_8

    :cond_f
    return-void
.end method
