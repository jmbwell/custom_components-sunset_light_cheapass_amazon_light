.class Lorg/jtransforms/fft/DoubleFFT_2D$44;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JIIJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 3546
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$isgn:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    .line 3550
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 3551
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v4, 0x8

    const-wide/16 v16, 0x2

    const-wide/16 v18, 0x1

    if-ne v2, v3, :cond_6

    .line 3552
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 3553
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long/2addr v2, v4

    :goto_0
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    const-wide/16 v4, 0x0

    .line 3554
    :goto_1
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 3555
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    mul-long v10, v4, v16

    .line 3557
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v10

    .line 3558
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v8

    .line 3559
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    move-wide/from16 v20, v2

    .line 3560
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v18

    .line 3561
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v22, v4

    add-long v3, v6, v18

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3562
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3563
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x3

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3564
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x4

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 3565
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3566
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 3567
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v22, v18

    move-wide/from16 v2, v20

    goto/16 :goto_1

    :cond_0
    move-wide/from16 v20, v2

    .line 3569
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3570
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3571
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3572
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3573
    :goto_2
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 3574
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v20

    mul-long v6, v2, v16

    .line 3576
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3577
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3578
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3579
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v22, v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3580
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3581
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3582
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3583
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3584
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3585
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x6

    add-long v10, v4, v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3586
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x7

    add-long/2addr v4, v6

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v22, v18

    goto/16 :goto_2

    .line 3553
    :cond_1
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_0

    .line 3589
    :cond_2
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    .line 3590
    :goto_3
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 3591
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3593
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3594
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3595
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v4, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3596
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v4, v16

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3597
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v4, v10

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_3

    .line 3599
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3600
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v6, 0x0

    .line 3601
    :goto_4
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3602
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3604
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 3605
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v2, v3, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3606
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v10, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3607
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v2, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v4, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3608
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v2, v10

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v4, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_4

    .line 3610
    :cond_4
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide/16 v2, 0x0

    .line 3611
    :goto_5
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 3612
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long v6, v6, v16

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3614
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3615
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v4, v4, v18

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_5

    .line 3617
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    const-wide/16 v6, 0x0

    .line 3618
    :goto_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3619
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long v4, v4, v16

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3621
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3622
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v2, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_6

    .line 3625
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    .line 3626
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long/2addr v2, v4

    :goto_7
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    const-wide/16 v4, 0x0

    .line 3627
    :goto_8
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 3628
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    mul-long v8, v4, v16

    .line 3630
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3631
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3632
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    move-wide/from16 v20, v2

    .line 3633
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3634
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v22, v4

    add-long v3, v6, v18

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3635
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v10, v10, v18

    .line 3636
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x3

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3637
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x4

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 3638
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3639
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 3640
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v4, v22, v18

    move-wide/from16 v2, v20

    goto/16 :goto_8

    :cond_7
    move-wide/from16 v20, v2

    .line 3642
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3643
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3644
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3645
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 3646
    :goto_9
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 3647
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v20

    mul-long v6, v2, v16

    .line 3649
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3650
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3651
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3652
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v22, v2

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3653
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v14, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3654
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3655
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3656
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3657
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v2, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3658
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v8, 0x6

    add-long v10, v4, v8

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v2, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3659
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x7

    add-long/2addr v4, v10

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v2, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v22, v18

    goto/16 :goto_9

    :cond_8
    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    .line 3626
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_7

    .line 3662
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide/16 v2, 0x0

    .line 3663
    :goto_a
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_a

    .line 3664
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3666
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3667
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3668
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v11, v4, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3669
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v4, v16

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3670
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v4, v10

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_a

    .line 3672
    :cond_a
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3673
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v6, 0x0

    .line 3674
    :goto_b
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3675
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3677
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v4

    .line 3678
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3679
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v13, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v12, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3680
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v12, v2, v16

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v4, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3681
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v12, 0x3

    add-long/2addr v2, v12

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v4, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_b

    .line 3683
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide/16 v3, 0x0

    .line 3684
    :goto_c
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_c

    .line 3685
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long v7, v7, v16

    add-long/2addr v5, v7

    mul-long v7, v3, v16

    .line 3687
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v1, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v7, v7, v18

    .line 3688
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v5, v5, v18

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v7, v8, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v3, v3, v18

    goto :goto_c

    .line 3690
    :cond_c
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v6, v4

    .line 3691
    :goto_d
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3692
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$n0:J

    mul-long v4, v4, v16

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3694
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3695
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v2, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v8, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_d

    :cond_d
    return-void
.end method
