.class Lorg/jtransforms/fft/FloatFFT_3D$54;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(JILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$icr:J

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JIJIJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 5741
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$n0:J

    iput p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$nthreads:I

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$icr:J

    iput-object p10, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p11, p0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 5745
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 5746
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v14, 0x4

    const-wide/16 v4, 0x0

    const-wide/16 v16, 0x2

    const-wide/16 v18, 0x1

    if-ne v2, v3, :cond_a

    .line 5747
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$n0:J

    :goto_0
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_17

    .line 5748
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$800(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    .line 5749
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$icr:J

    cmp-long v10, v10, v4

    if-nez v10, :cond_0

    move-wide v10, v4

    .line 5750
    :goto_1
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v10, v4

    if-gez v4, :cond_1

    .line 5751
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v4

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v10

    add-long/2addr v8, v6

    invoke-virtual {v4, v5, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v10, v10, v18

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x0

    .line 5754
    :goto_2
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    .line 5755
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v4

    add-long/2addr v10, v6

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    add-long v4, v4, v18

    goto :goto_2

    .line 5758
    :cond_1
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v4, v14

    if-lez v4, :cond_5

    const-wide/16 v4, 0x0

    .line 5759
    :goto_3
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_4

    const-wide/16 v8, 0x0

    .line 5760
    :goto_4
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_2

    .line 5761
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    add-long/2addr v10, v4

    mul-long v14, v8, v16

    .line 5763
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    move-wide/from16 v20, v2

    .line 5764
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v16

    add-long/2addr v2, v12

    move-wide/from16 v22, v4

    .line 5765
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long v4, v4, v16

    add-long/2addr v4, v2

    move-wide/from16 v24, v6

    .line 5766
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v18

    .line 5767
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v26, v8

    add-long v7, v10, v18

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v14, v15, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5768
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v7, v10, v16

    invoke-virtual {v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v18

    .line 5769
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v7, 0x3

    add-long v14, v10, v7

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v12, v13, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5770
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v7, 0x4

    add-long v14, v10, v7

    invoke-virtual {v6, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    .line 5771
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v7, 0x5

    add-long v12, v10, v7

    invoke-virtual {v6, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5772
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x6

    add-long v8, v10, v6

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v18

    .line 5773
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x7

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v4, v5, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

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

    .line 5775
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 5776
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 5777
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 5778
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5779
    :goto_5
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 5780
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    add-long v6, v6, v22

    mul-long v4, v2, v16

    .line 5782
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5783
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 5784
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 5785
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v14, v6, v7, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5786
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v26, v2

    add-long v2, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v14, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5787
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5788
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x3

    add-long v14, v6, v3

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5789
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x4

    add-long v14, v6, v3

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5790
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v8, v9, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5791
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v10, v11, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5792
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

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

    .line 5795
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_7

    const-wide/16 v2, 0x0

    .line 5796
    :goto_6
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_6

    .line 5797
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5799
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5800
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v18

    .line 5801
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v6, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    invoke-virtual {v1, v4, v5, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5802
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v6, v16

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v18

    .line 5803
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    goto :goto_6

    .line 5805
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 5806
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5807
    :goto_7
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 5808
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5810
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 5811
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v10, v6, v7, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5812
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v10, v11, v12, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5813
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v6, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v10, v11, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5814
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v6, v10

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v6, v7, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    goto :goto_7

    .line 5816
    :cond_7
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_9

    const-wide/16 v2, 0x0

    .line 5817
    :goto_8
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 5818
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5820
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v4, v5, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v18

    .line 5821
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v6, v18

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    goto :goto_8

    .line 5823
    :cond_8
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 5824
    :goto_9
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_9

    .line 5825
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v6, v24, v4

    mul-long v4, v2, v16

    .line 5827
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v8, v6, v7, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5828
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v6, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v8, v6, v7, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    goto :goto_9

    .line 5747
    :cond_9
    :goto_a
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v20, v2

    const-wide/16 v4, 0x0

    const-wide/16 v14, 0x4

    goto/16 :goto_0

    .line 5834
    :cond_a
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$n0:J

    :goto_b
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_17

    .line 5835
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$800(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    .line 5836
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$icr:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    const-wide/16 v6, 0x0

    .line 5837
    :goto_c
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    .line 5838
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    iget-boolean v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v6, v6, v18

    goto :goto_c

    :cond_b
    const-wide/16 v6, 0x0

    .line 5841
    :goto_d
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    .line 5842
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    iget-boolean v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11, v12}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    add-long v6, v6, v18

    goto :goto_d

    .line 5845
    :cond_c
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x4

    cmp-long v6, v6, v8

    if-lez v6, :cond_10

    const-wide/16 v6, 0x0

    .line 5846
    :goto_e
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_f

    const-wide/16 v8, 0x0

    .line 5847
    :goto_f
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_d

    .line 5848
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    add-long/2addr v10, v6

    mul-long v12, v8, v16

    .line 5850
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    move-wide/from16 v20, v2

    .line 5851
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v16

    add-long/2addr v2, v14

    move-wide/from16 v22, v6

    .line 5852
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v16

    add-long/2addr v6, v2

    move-wide/from16 v24, v4

    .line 5853
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v12, v12, v18

    .line 5854
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v26, v8

    add-long v8, v10, v18

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5855
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v8, v10, v16

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v14, v15, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v14, v14, v18

    .line 5856
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x3

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v14, v15, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5857
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x4

    add-long v14, v10, v8

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    .line 5858
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x5

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5859
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x6

    add-long v8, v10, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v6, v6, v18

    .line 5860
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v10, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v26, v18

    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    move-wide/from16 v4, v24

    goto/16 :goto_f

    :cond_d
    move-wide/from16 v20, v2

    move-wide/from16 v24, v4

    move-wide/from16 v22, v6

    .line 5862
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 5863
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 5864
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 5865
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 5866
    :goto_10
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_e

    .line 5867
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v24, v4

    add-long v4, v4, v22

    mul-long v6, v2, v16

    .line 5869
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 5870
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 5871
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 5872
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v14, v4, v5, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5873
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v26, v2

    add-long v2, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v14, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5874
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v6, v7, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5875
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5876
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v14, v15, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5877
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v8, v9, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5878
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x6

    add-long v10, v4, v8

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v10, v11, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5879
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x7

    add-long/2addr v4, v10

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    invoke-virtual {v2, v4, v5, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

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

    const-wide/16 v4, 0x0

    const-wide/16 v7, 0x3

    const-wide/16 v12, 0x4

    goto/16 :goto_16

    :cond_10
    move-wide/from16 v20, v2

    move-wide/from16 v24, v4

    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    .line 5882
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v4

    const-wide/16 v12, 0x4

    cmp-long v4, v4, v12

    if-nez v4, :cond_13

    const-wide/16 v4, 0x0

    .line 5883
    :goto_11
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v14

    cmp-long v14, v4, v14

    if-gez v14, :cond_11

    .line 5884
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v14

    mul-long/2addr v14, v4

    add-long v14, v24, v14

    mul-long v2, v4, v16

    .line 5886
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v16

    add-long/2addr v6, v2

    .line 5887
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v2, v3, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    .line 5888
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v14, v18

    invoke-virtual {v8, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v2, v3, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5889
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v8, v14, v16

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v6, v6, v18

    .line 5890
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x3

    add-long/2addr v14, v8

    invoke-virtual {v2, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v6, v7, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v18

    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    goto :goto_11

    .line 5892
    :cond_11
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 5893
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v3, 0x0

    .line 5894
    :goto_12
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_12

    .line 5895
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    add-long v5, v24, v5

    mul-long v7, v3, v16

    .line 5897
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v9

    mul-long v9, v9, v16

    add-long/2addr v9, v7

    .line 5898
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v2, v5, v6, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5899
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v14, v5, v18

    add-long v7, v7, v18

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v2, v14, v15, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5900
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v7, v5, v16

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v2, v7, v8, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5901
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v7, 0x3

    add-long/2addr v5, v7

    add-long v9, v9, v18

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    invoke-virtual {v2, v5, v6, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v18

    goto :goto_12

    :cond_12
    const-wide/16 v7, 0x3

    goto/16 :goto_15

    :cond_13
    const-wide/16 v7, 0x3

    .line 5903
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v16

    if-nez v2, :cond_15

    const-wide/16 v3, 0x0

    .line 5904
    :goto_13
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_14

    .line 5905
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    add-long v5, v24, v5

    mul-long v9, v3, v16

    .line 5907
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v9, v9, v18

    .line 5908
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v5, v5, v18

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    invoke-virtual {v1, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v3, v3, v18

    goto :goto_13

    .line 5910
    :cond_14
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v2, v4

    .line 5911
    :goto_14
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v9

    cmp-long v6, v2, v9

    if-gez v6, :cond_16

    .line 5912
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v9

    mul-long/2addr v9, v2

    add-long v9, v24, v9

    mul-long v14, v2, v16

    .line 5914
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v6, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 5915
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v9, v9, v18

    add-long v14, v14, v18

    invoke-virtual {v1, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    invoke-virtual {v6, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v2, v2, v18

    goto :goto_14

    :cond_15
    :goto_15
    const-wide/16 v4, 0x0

    .line 5834
    :cond_16
    :goto_16
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$54;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_b

    :cond_17
    return-void
.end method
