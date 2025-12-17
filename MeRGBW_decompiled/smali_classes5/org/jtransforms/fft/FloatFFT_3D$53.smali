.class Lorg/jtransforms/fft/FloatFFT_3D$53;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[FZ)V
    .locals 0

    .line 5531
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    iput-boolean p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 5535
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$ntf:I

    new-array v0, v0, [F

    .line 5536
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v2, :cond_9

    .line 5537
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 5538
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    .line 5539
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$icr:I

    if-nez v6, :cond_0

    move v6, v4

    .line 5540
    :goto_1
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 5541
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v4

    .line 5544
    :goto_2
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 5545
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    invoke-virtual {v7, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 5548
    :cond_1
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-le v6, v3, :cond_4

    move v6, v4

    .line 5549
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    move v7, v4

    .line 5550
    :goto_4
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 5551
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5553
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5554
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5555
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5556
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 5557
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 5558
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 5559
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 5560
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 5561
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 5562
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 5563
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 5565
    :cond_2
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5566
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5567
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5568
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v7, v4

    .line 5569
    :goto_5
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_3

    .line 5570
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5572
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5573
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5574
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5575
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5576
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 5577
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5578
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 5579
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 5580
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 5581
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 5582
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_3

    .line 5585
    :cond_4
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v3, :cond_6

    move v6, v4

    .line 5586
    :goto_6
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 5587
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5589
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5590
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v11, v10, v7

    aput v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 5591
    aget v11, v10, v11

    aput v11, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 5592
    aget v8, v10, v8

    aput v8, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 5593
    aget v7, v10, v7

    aput v7, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 5595
    :cond_5
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5596
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v5

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v6, v4

    .line 5597
    :goto_7
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 5598
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5600
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5601
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v11, v0, v8

    aput v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5602
    aget v8, v0, v8

    aput v8, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 5603
    aget v11, v0, v9

    aput v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 5604
    aget v8, v0, v9

    aput v8, v10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 5606
    :cond_6
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v5, :cond_8

    move v6, v4

    .line 5607
    :goto_8
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_7

    .line 5608
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5610
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 5611
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 5613
    :cond_7
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v6, v4

    .line 5614
    :goto_9
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 5615
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5617
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5618
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 5537
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 5624
    :cond_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 5625
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    .line 5626
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$icr:I

    if-nez v6, :cond_a

    move v6, v4

    .line 5627
    :goto_b
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 5628
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_a
    move v6, v4

    .line 5631
    :goto_c
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_b

    .line 5632
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    .line 5635
    :cond_b
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-le v6, v3, :cond_e

    move v6, v4

    .line 5636
    :goto_d
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_12

    move v7, v4

    .line 5637
    :goto_e
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_c

    .line 5638
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5640
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5641
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5642
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5643
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 5644
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 5645
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 5646
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 5647
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 5648
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 5649
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 5650
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    .line 5652
    :cond_c
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v0, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5653
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5654
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5655
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v7, v4

    .line 5656
    :goto_f
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_d

    .line 5657
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 5659
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 5660
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 5661
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 5662
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5663
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 5664
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5665
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 5666
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 5667
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 5668
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 5669
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_d

    .line 5672
    :cond_e
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v3, :cond_10

    move v6, v4

    .line 5673
    :goto_10
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 5674
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5676
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5677
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v11, v10, v7

    aput v11, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 5678
    aget v11, v10, v11

    aput v11, v0, v8

    add-int/lit8 v8, v7, 0x2

    .line 5679
    aget v8, v10, v8

    aput v8, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 5680
    aget v7, v10, v7

    aput v7, v0, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    .line 5682
    :cond_f
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v6, v0, v4, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 5683
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v5

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v6, v4

    .line 5684
    :goto_11
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 5685
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5687
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    .line 5688
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v11, v0, v8

    aput v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5689
    aget v8, v0, v8

    aput v8, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 5690
    aget v11, v0, v9

    aput v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 5691
    aget v8, v0, v9

    aput v8, v10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    .line 5693
    :cond_10
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ne v6, v5, :cond_12

    move v6, v4

    .line 5694
    :goto_12
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_11

    .line 5695
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5697
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 5698
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    .line 5700
    :cond_11
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$scale:Z

    invoke-virtual {v6, v0, v4, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v6, v4

    .line 5701
    :goto_13
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_12

    .line 5702
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    mul-int/lit8 v8, v6, 0x2

    .line 5704
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$a:[F

    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5705
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_13

    .line 5624
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$53;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    :cond_13
    return-void
.end method
