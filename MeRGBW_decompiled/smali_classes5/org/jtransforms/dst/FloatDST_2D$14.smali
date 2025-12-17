.class Lorg/jtransforms/dst/FloatDST_2D$14;
.super Ljava/lang/Object;
.source "FloatDST_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/FloatDST_2D;->ddxt2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/FloatDST_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/FloatDST_2D;JIJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 742
    iput-object p1, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    iput-wide p2, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$n0:J

    iput p7, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$nthreads:I

    iput-object p8, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 746
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 747
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    const/4 v3, -0x1

    const-wide/16 v8, 0x1

    if-lez v2, :cond_5

    .line 748
    iget v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$isgn:I

    const-wide/16 v10, 0x4

    if-ne v2, v3, :cond_2

    .line 749
    iget-wide v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$n0:J

    mul-long/2addr v2, v10

    :goto_0
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v10}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v10

    cmp-long v10, v2, v10

    if-gez v10, :cond_8

    const-wide/16 v10, 0x0

    .line 750
    :goto_1
    iget-object v14, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v14}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v14

    cmp-long v14, v10, v14

    if-gez v14, :cond_0

    .line 751
    iget-object v14, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v14}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v14

    mul-long/2addr v14, v10

    add-long/2addr v14, v2

    .line 752
    iget-object v6, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    add-long/2addr v6, v10

    .line 753
    iget-object v12, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v1, v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 754
    iget-object v12, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v4, v14, v8

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 755
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v4

    add-long/2addr v4, v6

    iget-object v12, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v16, 0x2

    add-long v8, v14, v16

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 756
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v4

    mul-long v4, v4, v16

    add-long/2addr v6, v4

    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x3

    add-long/2addr v14, v8

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v4, 0x1

    add-long/2addr v10, v4

    move-wide v8, v4

    const-wide/16 v4, 0x2

    goto :goto_1

    .line 758
    :cond_0
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v4

    iget-boolean v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v1, v6, v7, v5}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 759
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v5

    iget-boolean v7, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v4, v1, v5, v6, v7}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 760
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v5

    const-wide/16 v7, 0x2

    mul-long/2addr v5, v7

    iget-boolean v7, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v4, v1, v5, v6, v7}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 761
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v5

    const-wide/16 v7, 0x3

    mul-long/2addr v5, v7

    iget-boolean v7, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v4, v1, v5, v6, v7}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v4, 0x0

    .line 762
    :goto_2
    iget-object v6, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 763
    iget-object v6, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    .line 764
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v8}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 765
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v10, v6, v7, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 766
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v10, v13, v14, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 767
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v11, 0x2

    add-long v13, v6, v11

    iget-object v15, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v15}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v16

    add-long v11, v8, v16

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v10, v13, v14, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 768
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v11, 0x3

    add-long/2addr v6, v11

    iget-object v11, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v11}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v11

    const-wide/16 v13, 0x2

    mul-long/2addr v11, v13

    add-long/2addr v8, v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v10, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_2

    .line 749
    :cond_1
    iget v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x2

    const-wide/16 v8, 0x1

    goto/16 :goto_0

    .line 772
    :cond_2
    iget-wide v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$n0:J

    mul-long/2addr v2, v10

    :goto_3
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    const-wide/16 v4, 0x0

    .line 773
    :goto_4
    iget-object v6, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 774
    iget-object v6, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v6}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    .line 775
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v8}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v8

    add-long/2addr v8, v4

    .line 776
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 777
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    invoke-virtual {v10, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 778
    iget-object v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v10}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v10

    add-long/2addr v10, v8

    iget-object v12, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v18, v2

    const-wide/16 v13, 0x2

    add-long v2, v6, v13

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v10, v11, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 779
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v13

    add-long/2addr v8, v2

    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v6, v10

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    move-wide/from16 v2, v18

    goto :goto_4

    :cond_3
    move-wide/from16 v18, v2

    .line 781
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 782
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v3

    iget-boolean v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 783
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 784
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v6, 0x0

    .line 785
    :goto_5
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_4

    .line 786
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    add-long v2, v2, v18

    .line 787
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v4}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v4

    add-long/2addr v4, v6

    .line 788
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v8, v2, v3, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 789
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x1

    add-long v11, v2, v9

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v8, v11, v12, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 790
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x2

    add-long v11, v2, v9

    iget-object v13, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v13}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v13

    add-long/2addr v13, v4

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    invoke-virtual {v8, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 791
    iget-object v8, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v11, 0x3

    add-long/2addr v2, v11

    iget-object v13, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v13}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v13

    mul-long/2addr v13, v9

    add-long/2addr v4, v13

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v8, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v6, v2

    goto :goto_5

    :cond_4
    const-wide/16 v11, 0x3

    .line 772
    iget v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    add-long v2, v18, v2

    goto/16 :goto_3

    .line 795
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    cmp-long v2, v4, v6

    if-nez v2, :cond_8

    const-wide/16 v4, 0x0

    .line 796
    :goto_6
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v8

    cmp-long v2, v4, v8

    if-gez v2, :cond_6

    .line 797
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v8

    mul-long/2addr v8, v4

    iget-wide v10, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$n0:J

    mul-long/2addr v10, v6

    add-long/2addr v8, v10

    .line 799
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 800
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    add-long/2addr v6, v4

    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v4, v10

    const-wide/16 v6, 0x2

    goto :goto_6

    .line 802
    :cond_6
    iget v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$isgn:I

    if-ne v2, v3, :cond_7

    .line 803
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 804
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    iget-boolean v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/FloatDST_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    goto :goto_7

    :cond_7
    const-wide/16 v4, 0x0

    .line 806
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 807
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$300(Lorg/jtransforms/dst/FloatDST_2D;)Lorg/jtransforms/dst/FloatDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v6

    iget-boolean v3, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    :goto_7
    move-wide v6, v4

    .line 809
    :goto_8
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_8

    .line 810
    iget-object v2, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_2D;->access$400(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$n0:J

    const-wide/16 v8, 0x2

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    .line 812
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 813
    iget-object v4, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x1

    add-long/2addr v2, v10

    iget-object v5, v0, Lorg/jtransforms/dst/FloatDST_2D$14;->this$0:Lorg/jtransforms/dst/FloatDST_2D;

    invoke-static {v5}, Lorg/jtransforms/dst/FloatDST_2D;->access$500(Lorg/jtransforms/dst/FloatDST_2D;)J

    move-result-wide v12

    add-long/2addr v12, v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v10

    goto :goto_8

    :cond_8
    return-void
.end method
