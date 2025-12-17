.class Lorg/jtransforms/fft/DoubleFFT_3D$58;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 6540
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    iput p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 29

    move-object/from16 v0, p0

    .line 6545
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 6546
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v14, 0x4

    const-wide/16 v17, 0x2

    const-wide/16 v19, 0x1

    if-ne v2, v3, :cond_9

    .line 6547
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v14

    if-lez v2, :cond_3

    .line 6548
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_0
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6549
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v21, 0x0

    .line 6550
    :goto_1
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v21, v6

    if-gez v6, :cond_2

    const-wide/16 v6, 0x0

    .line 6551
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_0

    .line 6552
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long v10, v10, v21

    mul-long v8, v6, v17

    .line 6554
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v14

    mul-long v14, v14, v17

    add-long/2addr v14, v8

    .line 6555
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v17

    add-long/2addr v12, v14

    move-wide/from16 v23, v2

    .line 6556
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v17

    add-long/2addr v2, v12

    move-wide/from16 v25, v4

    .line 6557
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v19

    .line 6558
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v6

    add-long v5, v10, v19

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6559
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v5, v10, v17

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v19

    .line 6560
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x3

    add-long v7, v10, v5

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6561
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x4

    add-long v14, v10, v5

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v19

    .line 6562
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x5

    add-long v8, v10, v5

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6563
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x6

    add-long v7, v10, v5

    invoke-virtual {v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    .line 6564
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x7

    add-long/2addr v10, v5

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v27, v19

    move-wide/from16 v2, v23

    move-wide/from16 v4, v25

    const-wide/16 v14, 0x4

    goto/16 :goto_2

    :cond_0
    move-wide/from16 v23, v2

    move-wide/from16 v25, v4

    .line 6566
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 6567
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v17

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 6568
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 6569
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 6570
    :goto_3
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 6571
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v25

    add-long v4, v4, v21

    mul-long v6, v2, v17

    .line 6573
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v17

    add-long/2addr v8, v6

    .line 6574
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v17

    add-long/2addr v10, v8

    .line 6575
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v17

    add-long/2addr v12, v10

    .line 6576
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6577
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v4, v19

    add-long v6, v6, v19

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6578
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v4, v17

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6579
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6580
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6581
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v19

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6582
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x6

    add-long v10, v4, v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6583
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x7

    add-long/2addr v4, v6

    add-long v12, v12, v19

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v27, v19

    goto/16 :goto_3

    :cond_1
    const-wide/16 v2, 0x8

    add-long v21, v21, v2

    move-wide/from16 v2, v23

    move-wide/from16 v4, v25

    const-wide/16 v14, 0x4

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v23, v2

    .line 6548
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v23, v2

    const-wide/16 v14, 0x4

    goto/16 :goto_0

    .line 6587
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 6588
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_4
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6589
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 6590
    :goto_5
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 6591
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    mul-long v10, v6, v17

    .line 6593
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v17

    add-long/2addr v12, v10

    .line 6594
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    .line 6595
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v15, v2

    add-long v2, v8, v19

    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6596
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v8, v17

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v19

    .line 6597
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    move-wide v2, v15

    goto :goto_5

    :cond_4
    move-wide v15, v2

    .line 6599
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v1, v6, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 6600
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v17

    invoke-virtual {v2, v1, v6, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 6601
    :goto_6
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_5

    .line 6602
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    mul-long v8, v2, v17

    .line 6604
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v17

    add-long/2addr v10, v8

    .line 6605
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6606
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v13, v6, v19

    add-long v8, v8, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6607
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v12, v6, v17

    move-wide/from16 v21, v4

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6608
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    add-long v10, v10, v19

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    move-wide/from16 v4, v21

    goto :goto_6

    .line 6588
    :cond_5
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v2, v15

    goto/16 :goto_4

    .line 6611
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_13

    .line 6612
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_7
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6613
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 6614
    :goto_8
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_7

    .line 6615
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    mul-long v10, v6, v17

    .line 6617
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    .line 6618
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v8, v19

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    goto :goto_8

    .line 6620
    :cond_7
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v1, v7, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v6, 0x0

    .line 6621
    :goto_9
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_8

    .line 6622
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    mul-long v10, v6, v17

    .line 6624
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6625
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v8, v19

    add-long v10, v10, v19

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v12, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    goto :goto_9

    .line 6612
    :cond_8
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_7

    .line 6629
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-lez v2, :cond_d

    .line 6630
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_a
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6631
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 6632
    :goto_b
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_c

    const-wide/16 v8, 0x0

    .line 6633
    :goto_c
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_a

    .line 6634
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    add-long/2addr v10, v6

    mul-long v12, v8, v17

    .line 6636
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v14

    mul-long v14, v14, v17

    add-long/2addr v14, v12

    move-wide/from16 v21, v2

    .line 6637
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v17

    add-long/2addr v2, v14

    move-wide/from16 v23, v6

    .line 6638
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v17

    add-long/2addr v6, v2

    move-wide/from16 v25, v4

    .line 6639
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v19

    .line 6640
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v8

    add-long v8, v10, v19

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6641
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v10, v17

    invoke-virtual {v4, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v19

    .line 6642
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x3

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v14, v15, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6643
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x4

    add-long v14, v10, v8

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    .line 6644
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x5

    add-long v12, v10, v8

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6645
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x6

    add-long v8, v10, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    .line 6646
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v10, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v27, v19

    move-wide/from16 v2, v21

    move-wide/from16 v6, v23

    move-wide/from16 v4, v25

    goto/16 :goto_c

    :cond_a
    move-wide/from16 v21, v2

    move-wide/from16 v25, v4

    move-wide/from16 v23, v6

    .line 6648
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 6649
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    mul-long v3, v3, v17

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 6650
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 6651
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 6652
    :goto_d
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    .line 6653
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v25

    add-long v4, v4, v23

    mul-long v6, v2, v17

    .line 6655
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long v8, v8, v17

    add-long/2addr v8, v6

    .line 6656
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v17

    add-long/2addr v10, v8

    .line 6657
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v17

    add-long/2addr v12, v10

    .line 6658
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v27, v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6659
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v4, v19

    add-long v6, v6, v19

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6660
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v4, v17

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6661
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6662
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6663
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v19

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v2, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6664
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x6

    add-long v10, v4, v8

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6665
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x7

    add-long/2addr v4, v10

    add-long v12, v12, v19

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v2, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v27, v19

    goto/16 :goto_d

    :cond_b
    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    add-long v4, v23, v2

    move-wide v6, v4

    move-wide/from16 v2, v21

    move-wide/from16 v4, v25

    goto/16 :goto_b

    :cond_c
    move-wide/from16 v21, v2

    const-wide/16 v2, 0x8

    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    .line 6630
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v4, v4

    add-long v4, v21, v4

    move-wide v2, v4

    goto/16 :goto_a

    .line 6669
    :cond_d
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-nez v2, :cond_10

    .line 6670
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_e
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6671
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 6672
    :goto_f
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_e

    .line 6673
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    mul-long v10, v6, v17

    .line 6675
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    mul-long v12, v12, v17

    add-long/2addr v12, v10

    .line 6676
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    .line 6677
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v15, v2

    add-long v2, v8, v19

    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6678
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v8, v17

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v19

    .line 6679
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    move-wide v2, v15

    goto :goto_f

    :cond_e
    move-wide v15, v2

    .line 6681
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 6682
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long v6, v6, v17

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 6683
    :goto_10
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_f

    .line 6684
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    mul-long v8, v2, v17

    .line 6686
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long v10, v10, v17

    add-long/2addr v10, v8

    .line 6687
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6688
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v13, v6, v19

    add-long v8, v8, v19

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v13, v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6689
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v12, v6, v17

    move-wide/from16 v21, v4

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v12, v13, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6690
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x3

    add-long/2addr v6, v8

    add-long v10, v10, v19

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v4, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v19

    move-wide/from16 v4, v21

    goto :goto_10

    :cond_f
    const-wide/16 v8, 0x3

    .line 6670
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v2, v15

    goto/16 :goto_e

    .line 6693
    :cond_10
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v17

    if-nez v2, :cond_13

    .line 6694
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$n0:J

    :goto_11
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_13

    .line 6695
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 6696
    :goto_12
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_11

    .line 6697
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    mul-long v10, v6, v17

    .line 6699
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v19

    .line 6700
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v8, v8, v19

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    goto :goto_12

    .line 6702
    :cond_11
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$scale:Z

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v1, v8, v9, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v6, v8

    .line 6703
    :goto_13
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_12

    .line 6704
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    mul-long v12, v6, v17

    .line 6706
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v14, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 6707
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v10, v19

    add-long v12, v12, v19

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v8, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v19

    const-wide/16 v8, 0x0

    goto :goto_13

    .line 6694
    :cond_12
    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$58;->val$nthreads:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto/16 :goto_11

    :cond_13
    return-void
.end method
