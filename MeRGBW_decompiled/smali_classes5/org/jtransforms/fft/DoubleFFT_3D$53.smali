.class Lorg/jtransforms/fft/DoubleFFT_3D$53;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[DZ)V
    .locals 0

    .line 5524
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    iput-boolean p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 5528
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$ntf:I

    new-array v1, v1, [D

    .line 5529
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v2, v3, :cond_9

    .line 5530
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 5531
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 5532
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$icr:I

    if-nez v7, :cond_0

    move v7, v5

    .line 5533
    :goto_1
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 5534
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    move v7, v5

    .line 5537
    :goto_2
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 5538
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 5541
    :cond_1
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-le v7, v4, :cond_4

    move v7, v5

    .line 5542
    :goto_3
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    move v8, v5

    .line 5543
    :goto_4
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_2

    .line 5544
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5546
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5547
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5548
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5549
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 5550
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 5551
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 5552
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 5553
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 5554
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 5555
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 5556
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5558
    :cond_2
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5559
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5560
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5561
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v5

    .line 5562
    :goto_5
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 5563
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5565
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5566
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5567
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5568
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 5569
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 5570
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 5571
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 5572
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 5573
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 5574
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 5575
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_3

    .line 5578
    :cond_4
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v4, :cond_6

    move v7, v5

    .line 5579
    :goto_6
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_5

    .line 5580
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5582
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5583
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 5584
    aget-wide v12, v11, v12

    aput-wide v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 5585
    aget-wide v12, v11, v9

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 5586
    aget-wide v8, v11, v8

    aput-wide v8, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 5588
    :cond_5
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5589
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v7, v1, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v7, v5

    .line 5590
    :goto_7
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 5591
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5593
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5594
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    add-int/lit8 v12, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5595
    aget-wide v13, v1, v9

    aput-wide v13, v11, v12

    add-int/lit8 v9, v8, 0x2

    .line 5596
    aget-wide v12, v1, v10

    aput-wide v12, v11, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5597
    aget-wide v9, v1, v10

    aput-wide v9, v11, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 5599
    :cond_6
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v6, :cond_8

    move v7, v5

    .line 5600
    :goto_8
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 5601
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5603
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5604
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 5606
    :cond_7
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v7, v5

    .line 5607
    :goto_9
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_8

    .line 5608
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5610
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5611
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 5530
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 5617
    :cond_9
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 5618
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    .line 5619
    iget v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$icr:I

    if-nez v7, :cond_a

    move v7, v5

    .line 5620
    :goto_b
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 5621
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_a
    move v7, v5

    .line 5624
    :goto_c
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 5625
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 5628
    :cond_b
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-le v7, v4, :cond_e

    move v7, v5

    .line 5629
    :goto_d
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_12

    move v8, v5

    .line 5630
    :goto_e
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_c

    .line 5631
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5633
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5634
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5635
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5636
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 5637
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 5638
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 5639
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 5640
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 5641
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 5642
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 5643
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 5645
    :cond_c
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v1, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5646
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5647
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5648
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v8, v5

    .line 5649
    :goto_f
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_d

    .line 5650
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 5652
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5653
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5654
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 5655
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 5656
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 5657
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 5658
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 5659
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 5660
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 5661
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 5662
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_d

    .line 5665
    :cond_e
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v4, :cond_10

    move v7, v5

    .line 5666
    :goto_10
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_f

    .line 5667
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5669
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5670
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v12, v8, 0x1

    .line 5671
    aget-wide v12, v11, v12

    aput-wide v12, v1, v9

    add-int/lit8 v9, v8, 0x2

    .line 5672
    aget-wide v12, v11, v9

    aput-wide v12, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x3

    .line 5673
    aget-wide v8, v11, v8

    aput-wide v8, v1, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_10

    .line 5675
    :cond_f
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-boolean v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v1, v5, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 5676
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v1, v8, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v7, v5

    .line 5677
    :goto_11
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_12

    .line 5678
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5680
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5681
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    add-int/lit8 v12, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5682
    aget-wide v13, v1, v9

    aput-wide v13, v11, v12

    add-int/lit8 v9, v8, 0x2

    .line 5683
    aget-wide v12, v1, v10

    aput-wide v12, v11, v9

    add-int/lit8 v8, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 5684
    aget-wide v9, v1, v10

    aput-wide v9, v11, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    .line 5686
    :cond_10
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ne v7, v6, :cond_12

    move v7, v5

    .line 5687
    :goto_12
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 5688
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5690
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 5691
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    .line 5693
    :cond_11
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v7

    iget-boolean v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$scale:Z

    invoke-virtual {v7, v1, v5, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v7, v5

    .line 5694
    :goto_13
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_12

    .line 5695
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v3

    mul-int/lit8 v9, v7, 0x2

    .line 5697
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$a:[D

    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 5698
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    .line 5617
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$53;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    :cond_13
    return-void
.end method
