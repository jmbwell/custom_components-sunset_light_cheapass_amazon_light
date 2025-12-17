.class Lorg/jtransforms/fft/FloatFFT_2D$44;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;JIIJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 3525
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$isgn:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    iput-object p8, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    .line 3529
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(J)V

    .line 3530
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v4, 0x8

    const-wide/16 v16, 0x2

    const-wide/16 v18, 0x1

    if-ne v2, v3, :cond_6

    .line 3531
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_2

    .line 3532
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long/2addr v2, v4

    :goto_0
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    const-wide/16 v4, 0x0

    .line 3533
    :goto_1
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 3534
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    mul-long v10, v4, v16

    .line 3536
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v10

    .line 3537
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v8

    .line 3538
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    move-wide/from16 v20, v2

    .line 3539
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v18

    .line 3540
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v22, v4

    add-long v3, v6, v18

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3541
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3542
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x3

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3543
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x4

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 3544
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3545
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 3546
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v22, v18

    move-wide/from16 v2, v20

    goto/16 :goto_1

    :cond_0
    move-wide/from16 v20, v2

    .line 3548
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3549
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3550
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3551
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x0

    .line 3552
    :goto_2
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 3553
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v20

    mul-long v6, v2, v16

    .line 3555
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3556
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3557
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3558
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    move-wide/from16 v22, v2

    float-to-double v2, v15

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3559
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v14, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3560
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v14, v3

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3561
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3562
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3563
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3564
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x6

    add-long v10, v4, v6

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3565
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x7

    add-long/2addr v4, v6

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v22, v18

    goto/16 :goto_2

    .line 3532
    :cond_1
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_0

    .line 3568
    :cond_2
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    const-wide/16 v2, 0x0

    .line 3569
    :goto_3
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 3570
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3572
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3573
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3574
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v4, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3575
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v4, v16

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3576
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v4, v10

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_3

    .line 3578
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 3579
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v6, 0x0

    .line 3580
    :goto_4
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3581
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3583
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v4

    .line 3584
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    float-to-double v11, v11

    invoke-virtual {v10, v2, v3, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3585
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v10, v11, v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3586
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v2, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v12, v5

    invoke-virtual {v4, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3587
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v2, v10

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v8, v5

    invoke-virtual {v4, v2, v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_4

    .line 3589
    :cond_4
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide/16 v2, 0x0

    .line 3590
    :goto_5
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_5

    .line 3591
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long v6, v6, v16

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3593
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    float-to-double v8, v8

    invoke-virtual {v1, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3594
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v4, v4, v18

    invoke-virtual {v8, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_5

    .line 3596
    :cond_5
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v6, 0x0

    .line 3597
    :goto_6
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3598
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long v4, v4, v16

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3600
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3601
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v2, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v8, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_6

    .line 3604
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v6, v6, 0x4

    int-to-long v6, v6

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    .line 3605
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long/2addr v2, v4

    :goto_7
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    const-wide/16 v4, 0x0

    .line 3606
    :goto_8
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_7

    .line 3607
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v6

    mul-long/2addr v6, v4

    add-long/2addr v6, v2

    mul-long v8, v4, v16

    .line 3609
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3610
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3611
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v14

    mul-long v14, v14, v16

    add-long/2addr v14, v12

    move-wide/from16 v20, v2

    .line 3612
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3613
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v22, v4

    add-long v3, v6, v18

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3614
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v3, v6, v16

    invoke-virtual {v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v10, v10, v18

    .line 3615
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x3

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3616
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x4

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v12, v12, v18

    .line 3617
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x5

    add-long v8, v6, v3

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3618
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x6

    add-long v10, v6, v3

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v14, v14, v18

    .line 3619
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v3, 0x7

    add-long/2addr v6, v3

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v14, v15, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v4, v22, v18

    move-wide/from16 v2, v20

    goto/16 :goto_8

    :cond_7
    move-wide/from16 v20, v2

    .line 3621
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3622
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3623
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x4

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3624
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    const-wide/16 v5, 0x6

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 3625
    :goto_9
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_8

    .line 3626
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long v4, v4, v20

    mul-long v6, v2, v16

    .line 3628
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3629
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v8

    .line 3630
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v12

    mul-long v12, v12, v16

    add-long/2addr v12, v10

    .line 3631
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    move-wide/from16 v22, v2

    float-to-double v2, v15

    invoke-virtual {v14, v4, v5, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3632
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v14, v4, v18

    add-long v6, v6, v18

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3633
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v6, v4, v16

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v14, v3

    invoke-virtual {v2, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3634
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x3

    add-long v14, v4, v6

    add-long v8, v8, v18

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3635
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x4

    add-long v14, v4, v6

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {v2, v14, v15, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3636
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x5

    add-long v8, v4, v6

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v10, v3

    invoke-virtual {v2, v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3637
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v8, 0x6

    add-long v10, v4, v8

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v14, v3

    invoke-virtual {v2, v10, v11, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3638
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x7

    add-long/2addr v4, v10

    add-long v12, v12, v18

    invoke-virtual {v1, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v12, v3

    invoke-virtual {v2, v4, v5, v12, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v22, v18

    goto/16 :goto_9

    :cond_8
    const-wide/16 v6, 0x5

    const-wide/16 v8, 0x6

    const-wide/16 v10, 0x7

    .line 3605
    iget v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    int-to-long v2, v2

    add-long v2, v20, v2

    goto/16 :goto_7

    .line 3641
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    const-wide/16 v2, 0x0

    .line 3642
    :goto_a
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_a

    .line 3643
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    mul-long v6, v2, v16

    .line 3645
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v8

    mul-long v8, v8, v16

    add-long/2addr v8, v6

    .line 3646
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    .line 3647
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v11, v4, v18

    invoke-virtual {v10, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    float-to-double v10, v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3648
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v10, v4, v16

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v1, v8, v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v8, v8, v18

    .line 3649
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v4, v10

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v1, v8, v9, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v2, v2, v18

    goto :goto_a

    .line 3651
    :cond_a
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 3652
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v3

    mul-long v3, v3, v16

    iget-boolean v5, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v6, 0x0

    .line 3653
    :goto_b
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3654
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    const-wide/16 v8, 0x4

    mul-long/2addr v4, v8

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3656
    iget-object v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v10

    mul-long v10, v10, v16

    add-long/2addr v10, v4

    .line 3657
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    float-to-double v13, v13

    invoke-virtual {v12, v2, v3, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3658
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v13, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v12, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3659
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v12, v2, v16

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v14, v5

    invoke-virtual {v4, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3660
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v12, 0x3

    add-long/2addr v2, v12

    add-long v10, v10, v18

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    float-to-double v10, v5

    invoke-virtual {v4, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_b

    .line 3662
    :cond_b
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    iget v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$nthreads:I

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    const-wide/16 v3, 0x0

    .line 3663
    :goto_c
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_c

    .line 3664
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v5

    mul-long/2addr v5, v3

    iget-wide v7, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long v7, v7, v16

    add-long/2addr v5, v7

    mul-long v7, v3, v16

    .line 3666
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v9, v2

    invoke-virtual {v1, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v7, v7, v18

    .line 3667
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v5, v5, v18

    invoke-virtual {v2, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {v1, v7, v8, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v3, v3, v18

    goto :goto_c

    .line 3669
    :cond_c
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    move-wide v6, v4

    .line 3670
    :goto_d
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_d

    .line 3671
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$500(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    mul-long/2addr v2, v6

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$n0:J

    mul-long v4, v4, v16

    add-long/2addr v2, v4

    mul-long v4, v6, v16

    .line 3673
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    float-to-double v9, v9

    invoke-virtual {v8, v2, v3, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 3674
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_2D$44;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v2, v2, v18

    add-long v4, v4, v18

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v8, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long v6, v6, v18

    goto :goto_d

    :cond_d
    return-void
.end method
