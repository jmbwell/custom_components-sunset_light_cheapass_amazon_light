.class Lorg/jtransforms/dht/FloatDHT_2D$13;
.super Ljava/lang/Object;
.source "FloatDHT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_2D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_2D;IIII[FZ)V
    .locals 0

    .line 671
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    iput-boolean p7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 675
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$ntf:I

    new-array v0, v0, [F

    .line 676
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-le v1, v4, :cond_5

    .line 677
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$isgn:I

    if-ne v1, v2, :cond_2

    .line 678
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$n0:I

    mul-int/lit8 v1, v1, 0x4

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_8

    move v2, v3

    .line 679
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 680
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 681
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v6

    add-int/2addr v6, v2

    .line 682
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v8, v7, v5

    aput v8, v0, v2

    add-int/lit8 v8, v5, 0x1

    .line 683
    aget v7, v7, v8

    aput v7, v0, v6

    .line 684
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    aput v8, v0, v7

    .line 685
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 688
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 689
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v4

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 690
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move v2, v3

    .line 691
    :goto_2
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 692
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 693
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v6

    add-int/2addr v6, v2

    .line 694
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v8, v0, v2

    aput v8, v7, v5

    add-int/lit8 v8, v5, 0x1

    .line 695
    aget v9, v0, v6

    aput v9, v7, v8

    add-int/lit8 v8, v5, 0x2

    .line 696
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v9

    add-int/2addr v9, v6

    aget v9, v0, v9

    aput v9, v7, v8

    .line 697
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v8

    mul-int/2addr v8, v4

    add-int/2addr v6, v8

    aget v6, v0, v6

    aput v6, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 678
    :cond_1
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 701
    :cond_2
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$n0:I

    mul-int/lit8 v1, v1, 0x4

    :goto_3
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_8

    move v2, v3

    .line 702
    :goto_4
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 703
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 704
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v6

    add-int/2addr v6, v2

    .line 705
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v8, v7, v5

    aput v8, v0, v2

    add-int/lit8 v8, v5, 0x1

    .line 706
    aget v7, v7, v8

    aput v7, v0, v6

    .line 707
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v9, v5, 0x2

    aget v8, v8, v9

    aput v8, v0, v7

    .line 708
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 710
    :cond_3
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-boolean v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v2, v0, v3, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 711
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    iget-boolean v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 712
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v4

    iget-boolean v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 713
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    iget-boolean v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v2, v0, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v2, v3

    .line 714
    :goto_5
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 715
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v2

    add-int/2addr v5, v1

    .line 716
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v6

    add-int/2addr v6, v2

    .line 717
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v8, v0, v2

    aput v8, v7, v5

    add-int/lit8 v8, v5, 0x1

    .line 718
    aget v9, v0, v6

    aput v9, v7, v8

    add-int/lit8 v8, v5, 0x2

    .line 719
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v9

    add-int/2addr v9, v6

    aget v9, v0, v9

    aput v9, v7, v8

    .line 720
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v5, v5, 0x3

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v8

    mul-int/2addr v8, v4

    add-int/2addr v6, v8

    aget v6, v0, v6

    aput v6, v7, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 701
    :cond_4
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    goto/16 :goto_3

    .line 724
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v1

    if-ne v1, v4, :cond_8

    move v1, v3

    .line 725
    :goto_6
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    if-ge v1, v5, :cond_6

    .line 726
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    mul-int/2addr v5, v1

    iget v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$n0:I

    mul-int/2addr v6, v4

    add-int/2addr v5, v6

    .line 728
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v6, v6, v5

    aput v6, v0, v1

    .line 729
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v6

    add-int/2addr v6, v1

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    add-int/lit8 v5, v5, 0x1

    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 731
    :cond_6
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$isgn:I

    if-ne v1, v2, :cond_7

    .line 732
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 733
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    goto :goto_7

    .line 735
    :cond_7
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 736
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$300(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v2

    iget-boolean v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$scale:Z

    invoke-virtual {v1, v0, v2, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 738
    :goto_7
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_8

    .line 739
    iget-object v1, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v1}, Lorg/jtransforms/dht/FloatDHT_2D;->access$000(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v1

    mul-int/2addr v1, v3

    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$n0:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    .line 741
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->val$a:[F

    aget v5, v0, v3

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    .line 742
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_2D$13;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_2D;->access$200(Lorg/jtransforms/dht/FloatDHT_2D;)I

    move-result v5

    add-int/2addr v5, v3

    aget v5, v0, v5

    aput v5, v2, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    return-void
.end method
