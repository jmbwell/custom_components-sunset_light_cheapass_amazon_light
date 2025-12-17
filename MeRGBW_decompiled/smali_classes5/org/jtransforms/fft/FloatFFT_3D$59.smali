.class Lorg/jtransforms/fft/FloatFFT_3D$59;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[[[FZ)V
    .locals 0

    .line 6750
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    iput-boolean p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 6755
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$ntf:I

    new-array v0, v0, [F

    .line 6756
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_9

    .line 6757
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v4, :cond_3

    .line 6758
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6759
    :goto_1
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_2

    move v3, v5

    .line 6760
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v3, v8, :cond_0

    mul-int/lit8 v8, v3, 0x2

    .line 6762
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6763
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6764
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6765
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v12, v12, v3

    aget-object v12, v12, v1

    aget v13, v12, v2

    aput v13, v0, v8

    add-int/2addr v8, v7

    add-int/lit8 v13, v2, 0x1

    .line 6766
    aget v13, v12, v13

    aput v13, v0, v8

    add-int/lit8 v8, v2, 0x2

    .line 6767
    aget v8, v12, v8

    aput v8, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v8, v2, 0x3

    .line 6768
    aget v8, v12, v8

    aput v8, v0, v9

    add-int/lit8 v8, v2, 0x4

    .line 6769
    aget v8, v12, v8

    aput v8, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v8, v2, 0x5

    .line 6770
    aget v8, v12, v8

    aput v8, v0, v10

    add-int/lit8 v8, v2, 0x6

    .line 6771
    aget v8, v12, v8

    aput v8, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v8, v2, 0x7

    .line 6772
    aget v8, v12, v8

    aput v8, v0, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6774
    :cond_0
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6775
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v3, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6776
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v4

    invoke-virtual {v3, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6777
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v3, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v5

    .line 6778
    :goto_3
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v3, v8, :cond_1

    mul-int/lit8 v8, v3, 0x2

    .line 6780
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6781
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6782
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6783
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v12, v12, v3

    aget-object v12, v12, v1

    aget v13, v0, v8

    aput v13, v12, v2

    add-int/lit8 v13, v2, 0x1

    add-int/2addr v8, v7

    .line 6784
    aget v8, v0, v8

    aput v8, v12, v13

    add-int/lit8 v8, v2, 0x2

    .line 6785
    aget v13, v0, v9

    aput v13, v12, v8

    add-int/lit8 v8, v2, 0x3

    add-int/2addr v9, v7

    .line 6786
    aget v9, v0, v9

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x4

    .line 6787
    aget v9, v0, v10

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x5

    add-int/2addr v10, v7

    .line 6788
    aget v9, v0, v10

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x6

    .line 6789
    aget v9, v0, v11

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x7

    add-int/2addr v11, v7

    .line 6790
    aget v9, v0, v11

    aput v9, v12, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_1

    .line 6758
    :cond_2
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 6794
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 6795
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_4
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6796
    :goto_5
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_4

    mul-int/lit8 v4, v2, 0x2

    .line 6798
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v4

    .line 6799
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v9, v9, v2

    aget-object v9, v9, v1

    aget v10, v9, v5

    aput v10, v0, v4

    add-int/2addr v4, v7

    .line 6800
    aget v10, v9, v7

    aput v10, v0, v4

    .line 6801
    aget v4, v9, v6

    aput v4, v0, v8

    add-int/2addr v8, v7

    .line 6802
    aget v4, v9, v3

    aput v4, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 6804
    :cond_4
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6805
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v6

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6806
    :goto_6
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_5

    mul-int/lit8 v4, v2, 0x2

    .line 6808
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v4

    .line 6809
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v9, v9, v2

    aget-object v9, v9, v1

    aget v10, v0, v4

    aput v10, v9, v5

    add-int/2addr v4, v7

    .line 6810
    aget v4, v0, v4

    aput v4, v9, v7

    .line 6811
    aget v4, v0, v8

    aput v4, v9, v6

    add-int/2addr v8, v7

    .line 6812
    aget v4, v0, v8

    aput v4, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6795
    :cond_5
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6815
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v6, :cond_13

    .line 6816
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6817
    :goto_8
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_7

    mul-int/lit8 v3, v2, 0x2

    .line 6819
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    aget v6, v4, v5

    aput v6, v0, v3

    add-int/2addr v3, v7

    .line 6820
    aget v4, v4, v7

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6822
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6823
    :goto_9
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_8

    mul-int/lit8 v3, v2, 0x2

    .line 6825
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    aget v6, v0, v3

    aput v6, v4, v5

    add-int/2addr v3, v7

    .line 6826
    aget v3, v0, v3

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6816
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_7

    .line 6830
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v4, :cond_d

    .line 6831
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6832
    :goto_b
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_c

    move v3, v5

    .line 6833
    :goto_c
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v3, v8, :cond_a

    mul-int/lit8 v8, v3, 0x2

    .line 6835
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6836
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6837
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6838
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v12, v12, v3

    aget-object v12, v12, v1

    aget v13, v12, v2

    aput v13, v0, v8

    add-int/2addr v8, v7

    add-int/lit8 v13, v2, 0x1

    .line 6839
    aget v13, v12, v13

    aput v13, v0, v8

    add-int/lit8 v8, v2, 0x2

    .line 6840
    aget v8, v12, v8

    aput v8, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v8, v2, 0x3

    .line 6841
    aget v8, v12, v8

    aput v8, v0, v9

    add-int/lit8 v8, v2, 0x4

    .line 6842
    aget v8, v12, v8

    aput v8, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v8, v2, 0x5

    .line 6843
    aget v8, v12, v8

    aput v8, v0, v10

    add-int/lit8 v8, v2, 0x6

    .line 6844
    aget v8, v12, v8

    aput v8, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v8, v2, 0x7

    .line 6845
    aget v8, v12, v8

    aput v8, v0, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6847
    :cond_a
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v0, v5, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6848
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6849
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v4

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6850
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v5

    .line 6851
    :goto_d
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v3, v8, :cond_b

    mul-int/lit8 v8, v3, 0x2

    .line 6853
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6854
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6855
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6856
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v12, v12, v3

    aget-object v12, v12, v1

    aget v13, v0, v8

    aput v13, v12, v2

    add-int/lit8 v13, v2, 0x1

    add-int/2addr v8, v7

    .line 6857
    aget v8, v0, v8

    aput v8, v12, v13

    add-int/lit8 v8, v2, 0x2

    .line 6858
    aget v13, v0, v9

    aput v13, v12, v8

    add-int/lit8 v8, v2, 0x3

    add-int/2addr v9, v7

    .line 6859
    aget v9, v0, v9

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x4

    .line 6860
    aget v9, v0, v10

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x5

    add-int/2addr v10, v7

    .line 6861
    aget v9, v0, v10

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x6

    .line 6862
    aget v9, v0, v11

    aput v9, v12, v8

    add-int/lit8 v8, v2, 0x7

    add-int/2addr v11, v7

    .line 6863
    aget v9, v0, v11

    aput v9, v12, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_b

    .line 6831
    :cond_c
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    .line 6867
    :cond_d
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v4, :cond_10

    .line 6868
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_e
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6869
    :goto_f
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_e

    mul-int/lit8 v4, v2, 0x2

    .line 6871
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v4

    .line 6872
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v9, v9, v2

    aget-object v9, v9, v1

    aget v10, v9, v5

    aput v10, v0, v4

    add-int/2addr v4, v7

    .line 6873
    aget v10, v9, v7

    aput v10, v0, v4

    .line 6874
    aget v4, v9, v6

    aput v4, v0, v8

    add-int/2addr v8, v7

    .line 6875
    aget v4, v9, v3

    aput v4, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 6877
    :cond_e
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v2, v0, v5, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6878
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    mul-int/2addr v4, v6

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v2, v0, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6879
    :goto_10
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    if-ge v2, v4, :cond_f

    mul-int/lit8 v4, v2, 0x2

    .line 6881
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    add-int/2addr v8, v4

    .line 6882
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v9, v9, v2

    aget-object v9, v9, v1

    aget v10, v0, v4

    aput v10, v9, v5

    add-int/2addr v4, v7

    .line 6883
    aget v4, v0, v4

    aput v4, v9, v7

    .line 6884
    aget v4, v0, v8

    aput v4, v9, v6

    add-int/2addr v8, v7

    .line 6885
    aget v4, v0, v8

    aput v4, v9, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6868
    :cond_f
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_e

    .line 6888
    :cond_10
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v6, :cond_13

    .line 6889
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$n0:I

    :goto_11
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    move v2, v5

    .line 6890
    :goto_12
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_11

    mul-int/lit8 v3, v2, 0x2

    .line 6892
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    aget v6, v4, v5

    aput v6, v0, v3

    add-int/2addr v3, v7

    .line 6893
    aget v4, v4, v7

    aput v4, v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 6895
    :cond_11
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$scale:Z

    invoke-virtual {v2, v0, v5, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6896
    :goto_13
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_12

    mul-int/lit8 v3, v2, 0x2

    .line 6898
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$a:[[[F

    aget-object v4, v4, v2

    aget-object v4, v4, v1

    aget v6, v0, v3

    aput v6, v4, v5

    add-int/2addr v3, v7

    .line 6899
    aget v3, v0, v3

    aput v3, v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6889
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$59;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_11

    :cond_13
    return-void
.end method
