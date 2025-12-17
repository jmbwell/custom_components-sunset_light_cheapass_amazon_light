.class Lorg/jtransforms/dht/FloatDHT_3D$19;
.super Ljava/lang/Object;
.source "FloatDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_3D;->ddxt3da_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_3D;IIII[FZ)V
    .locals 0

    .line 1634
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$n0:I

    iput p5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    iput-boolean p7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1639
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$ntf:I

    new-array v0, v0, [F

    .line 1640
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_6

    .line 1641
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_3D;->access$600(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1642
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_3D;->access$000(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v4

    .line 1643
    :goto_1
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1644
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$300(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1646
    :cond_0
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-le v5, v3, :cond_3

    move v5, v4

    .line 1647
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_5

    move v6, v4

    .line 1648
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 1649
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1650
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1651
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 1652
    aget v9, v9, v10

    aput v9, v0, v8

    .line 1653
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    aput v10, v0, v9

    .line 1654
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1656
    :cond_1
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    invoke-virtual {v6, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1657
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1658
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1659
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    invoke-virtual {v6, v0, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move v6, v4

    .line 1660
    :goto_4
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 1661
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1662
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1663
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v10, v0, v6

    aput v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 1664
    aget v11, v0, v8

    aput v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 1665
    iget-object v11, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v11}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget v11, v0, v11

    aput v11, v9, v10

    .line 1666
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_2

    .line 1669
    :cond_3
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v4

    .line 1670
    :goto_5
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_4

    .line 1671
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    .line 1672
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v7, v7, v6

    aput v7, v0, v5

    .line 1673
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1675
    :cond_4
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    .line 1676
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v5

    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    invoke-virtual {v5, v0, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->forward([FI)V

    move v5, v4

    .line 1677
    :goto_6
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 1678
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    .line 1679
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v8, v0, v5

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 1680
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v5

    aget v8, v0, v8

    aput v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1641
    :cond_5
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 1685
    :cond_6
    iget v1, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_3D;->access$600(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    .line 1686
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_3D;->access$000(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v5, v4

    .line 1687
    :goto_8
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 1688
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$300(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    iget-boolean v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v6, v7, v8, v9}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1690
    :cond_7
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-le v5, v3, :cond_a

    move v5, v4

    .line 1691
    :goto_9
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_c

    move v6, v4

    .line 1692
    :goto_a
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1693
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1694
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1695
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v10, v9, v7

    aput v10, v0, v6

    add-int/lit8 v10, v7, 0x1

    .line 1696
    aget v9, v9, v10

    aput v9, v0, v8

    .line 1697
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v9

    add-int/2addr v9, v8

    iget-object v10, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v11, v7, 0x2

    aget v10, v10, v11

    aput v10, v0, v9

    .line 1698
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v9}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v9

    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 1700
    :cond_8
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-boolean v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v6, v0, v4, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1701
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    iget-boolean v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1702
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v3

    iget-boolean v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1703
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3

    iget-boolean v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v6, v0, v7, v8}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v6, v4

    .line 1704
    :goto_b
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1705
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    add-int/2addr v7, v2

    add-int/2addr v7, v5

    .line 1706
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v6

    .line 1707
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v10, v0, v6

    aput v10, v9, v7

    add-int/lit8 v10, v7, 0x1

    .line 1708
    aget v11, v0, v8

    aput v11, v9, v10

    add-int/lit8 v10, v7, 0x2

    .line 1709
    iget-object v11, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v11}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v11

    add-int/2addr v11, v8

    aget v11, v0, v11

    aput v11, v9, v10

    .line 1710
    iget-object v9, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v7, v7, 0x3

    iget-object v10, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v10

    mul-int/2addr v10, v3

    add-int/2addr v8, v10

    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_9

    .line 1713
    :cond_a
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$400(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v5

    if-ne v5, v3, :cond_c

    move v5, v4

    .line 1714
    :goto_c
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_b

    .line 1715
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    .line 1716
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v7, v7, v6

    aput v7, v0, v5

    .line 1717
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v7}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v7

    add-int/2addr v7, v5

    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    add-int/lit8 v6, v6, 0x1

    aget v6, v8, v6

    aput v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1719
    :cond_b
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v5

    iget-boolean v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v5, v0, v4, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    .line 1720
    iget-object v5, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v5}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v5

    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    iget-boolean v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$scale:Z

    invoke-virtual {v5, v0, v6, v7}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse([FIZ)V

    move v5, v4

    .line 1721
    :goto_d
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_c

    .line 1722
    iget-object v6, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    add-int/2addr v6, v2

    .line 1723
    iget-object v7, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$a:[F

    aget v8, v0, v5

    aput v8, v7, v6

    add-int/lit8 v6, v6, 0x1

    .line 1724
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v8}, Lorg/jtransforms/dht/FloatDHT_3D;->access$100(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v8

    add-int/2addr v8, v5

    aget v8, v0, v8

    aput v8, v7, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1685
    :cond_c
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_3D$19;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_7

    :cond_d
    return-void
.end method
