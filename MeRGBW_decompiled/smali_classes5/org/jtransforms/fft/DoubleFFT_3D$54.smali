.class Lorg/jtransforms/fft/DoubleFFT_3D$54;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$icr:J

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JIJIJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 5734
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$n0:J

    iput p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$nthreads:I

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$icr:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p11, p0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 5738
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 5739
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v14, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x2

    const-wide/16 v18, 0x1

    if-ne v2, v3, :cond_a

    .line 5740
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$n0:J

    :goto_0
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_16

    .line 5741
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    .line 5742
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$icr:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_0

    move-wide v10, v4

    .line 5743
    :goto_1
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-gez v4, :cond_1

    .line 5744
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    invoke-virtual {v4, v5, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v10, v10, v18

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    .line 5747
    :goto_2
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 5748
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v4

    add-long/2addr v10, v6

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long v4, v4, v18

    goto :goto_2

    .line 5751
    :cond_1
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-lez v4, :cond_5

    const-wide/16 v4, 0x0

    .line 5752
    :goto_3
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    const-wide/16 v8, 0x0

    .line 5753
    :goto_4
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    .line 5754
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    add-long/2addr v10, v4

    mul-long v14, v8, v16

    .line 5756
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    move-wide/from16 v20, v2

    .line 5757
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v16

    add-long/2addr v2, v12

    move-wide/from16 v22, v4

    .line 5758
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long v4, v4, v16

    add-long/2addr v4, v2

    move-wide/from16 v24, v6

    .line 5759
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 5760
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v26, v8

    add-long v7, v10, v18

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5761
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v7, v10, v16

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v12, v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 5762
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x3

    add-long v14, v10, v7

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v12, v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5763
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x4

    add-long v14, v10, v7

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    .line 5764
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x5

    add-long v12, v10, v7

    invoke-virtual {v6, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5765
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x6

    add-long v8, v10, v6

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v18

    .line 5766
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x7

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v26, v18

    move-wide/from16 v2, v20

    move-wide/from16 v4, v22

    move-wide/from16 v6, v24

    const-wide/16 v14, 0x4

    goto/16 :goto_4

    :cond_2
    move-wide/from16 v20, v2

    move-wide/from16 v22, v4

    move-wide/from16 v24, v6

    .line 5768
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 5769
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 5770
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 5771
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5772
    :goto_5
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 5773
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    add-long v6, v6, v22

    mul-long v4, v2, v16

    .line 5775
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5776
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 5777
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 5778
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v26, v2

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5779
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5780
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v3, v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5781
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x3

    add-long v14, v6, v3

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5782
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x4

    add-long v14, v6, v3

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5783
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v8, v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5784
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v10, v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5785
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v6, v7, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v26, v18

    goto/16 :goto_5

    :cond_3
    const-wide/16 v2, 0x8

    add-long v4, v22, v2

    move-wide/from16 v2, v20

    move-wide/from16 v6, v24

    const-wide/16 v14, 0x4

    goto/16 :goto_3

    :cond_4
    move-wide/from16 v20, v2

    goto/16 :goto_a

    :cond_5
    move-wide/from16 v20, v2

    move-wide/from16 v24, v6

    .line 5788
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    .line 5789
    :goto_6
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    .line 5790
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5792
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5793
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v18

    .line 5794
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v6, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5795
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v6, v16

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 5796
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_6

    .line 5798
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 5799
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5800
    :goto_7
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 5801
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5803
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5804
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5805
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v10, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5806
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v6, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v4, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5807
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v6, v10

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_7

    .line 5809
    :cond_7
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_9

    const-wide/16 v2, 0x0

    .line 5810
    :goto_8
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 5811
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5813
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v18

    .line 5814
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v6, v18

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_8

    .line 5816
    :cond_8
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5817
    :goto_9
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 5818
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5820
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v6, v7, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5821
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_9

    .line 5740
    :cond_9
    :goto_a
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v20, v2

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x4

    goto/16 :goto_0

    .line 5827
    :cond_a
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$n0:J

    :goto_b
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_16

    .line 5828
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 5829
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$icr:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    .line 5830
    :goto_c
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    .line 5831
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    iget-boolean v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v6, v6, v18

    goto :goto_c

    :cond_b
    const-wide/16 v6, 0x0

    .line 5834
    :goto_d
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    .line 5835
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    iget-boolean v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long v6, v6, v18

    goto :goto_d

    .line 5838
    :cond_c
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-lez v6, :cond_10

    const-wide/16 v6, 0x0

    .line 5839
    :goto_e
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    const-wide/16 v8, 0x0

    .line 5840
    :goto_f
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_d

    .line 5841
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    add-long/2addr v10, v6

    mul-long v12, v8, v16

    .line 5843
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    move-wide/from16 v20, v2

    .line 5844
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v16

    add-long/2addr v2, v14

    move-wide/from16 v22, v6

    .line 5845
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v16

    add-long/2addr v6, v2

    move-wide/from16 v24, v4

    .line 5846
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 5847
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v26, v8

    add-long v8, v10, v18

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5848
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v10, v16

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 5849
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x3

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5850
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x4

    add-long v14, v10, v8

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    .line 5851
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x5

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5852
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x6

    add-long v8, v10, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 5853
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v10, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v26, v18

    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    move-wide/from16 v4, v24

    goto/16 :goto_f

    :cond_d
    move-wide/from16 v20, v2

    move-wide/from16 v24, v4

    move-wide/from16 v22, v6

    .line 5855
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 5856
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 5857
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 5858
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 5859
    :goto_10
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    .line 5860
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v24, v4

    add-long v4, v4, v22

    mul-long v6, v2, v16

    .line 5862
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 5863
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 5864
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 5865
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v26, v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5866
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5867
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5868
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5869
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5870
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v2, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5871
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x6

    add-long v10, v4, v8

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5872
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x7

    add-long/2addr v4, v10

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v2, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v26, v18

    goto/16 :goto_10

    :cond_e
    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    add-long v4, v22, v2

    move-wide v6, v4

    move-wide/from16 v2, v20

    move-wide/from16 v4, v24

    goto/16 :goto_e

    :cond_f
    move-wide/from16 v20, v2

    const-wide/16 v7, 0x3

    const-wide/16 v12, 0x4

    goto/16 :goto_15

    :cond_10
    move-wide/from16 v20, v2

    move-wide/from16 v24, v4

    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    .line 5875
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    const-wide/16 v12, 0x4

    cmp-long v4, v4, v12

    if-nez v4, :cond_13

    const-wide/16 v4, 0x0

    .line 5876
    :goto_11
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v14

    cmp-long v14, v4, v14

    if-gez v14, :cond_11

    .line 5877
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v14

    mul-long/2addr v14, v4

    add-long v14, v24, v14

    mul-long v2, v4, v16

    .line 5879
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v16

    add-long/2addr v6, v2

    .line 5880
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    .line 5881
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v14, v18

    invoke-virtual {v8, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5882
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v14, v16

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 5883
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x3

    add-long/2addr v14, v8

    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v4, v18

    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    goto :goto_11

    .line 5885
    :cond_11
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 5886
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 5887
    :goto_12
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_12

    .line 5888
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    add-long v5, v24, v5

    mul-long v7, v3, v16

    .line 5890
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v9

    mul-long v9, v9, v16

    add-long/2addr v9, v7

    .line 5891
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v5, v6, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5892
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v5, v18

    add-long v7, v7, v18

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v2, v14, v15, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5893
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v7, v5, v16

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v7, v8, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5894
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x3

    add-long/2addr v5, v7

    add-long v9, v9, v18

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v2, v5, v6, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v18

    goto :goto_12

    :cond_12
    const-wide/16 v7, 0x3

    goto/16 :goto_15

    :cond_13
    const-wide/16 v7, 0x3

    .line 5896
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_15

    const-wide/16 v3, 0x0

    .line 5897
    :goto_13
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_14

    .line 5898
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    add-long v5, v24, v5

    mul-long v9, v3, v16

    .line 5900
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v9, v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v9, v9, v18

    .line 5901
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v5, v5, v18

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v9, v10, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v18

    goto :goto_13

    .line 5903
    :cond_14
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v2, v4

    .line 5904
    :goto_14
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v9

    cmp-long v6, v2, v9

    if-gez v6, :cond_15

    .line 5905
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v9

    mul-long/2addr v9, v2

    add-long v9, v24, v9

    mul-long v14, v2, v16

    .line 5907
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v6, v9, v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 5908
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v9, v9, v18

    add-long v14, v14, v18

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v4, v9, v10, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    const-wide/16 v4, 0x0

    goto :goto_14

    .line 5827
    :cond_15
    :goto_15
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$54;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_b

    :cond_16
    return-void
.end method
