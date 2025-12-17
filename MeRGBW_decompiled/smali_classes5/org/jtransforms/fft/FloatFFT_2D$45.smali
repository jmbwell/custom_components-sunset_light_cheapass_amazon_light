.class Lorg/jtransforms/fft/FloatFFT_2D$45;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->cdft2d_subth(I[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V
    .locals 0

    .line 3704
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    iput-boolean p7, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 3708
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$ntf:I

    new-array v0, v0, [F

    .line 3709
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    .line 3710
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2

    .line 3711
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3712
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_0

    mul-int/lit8 v4, v2, 0x2

    .line 3714
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3715
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3716
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3717
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v8, v8, v2

    aget v9, v8, v1

    aput v9, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v1, 0x1

    .line 3718
    aget v9, v8, v9

    aput v9, v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 3719
    aget v4, v8, v4

    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v1, 0x3

    .line 3720
    aget v4, v8, v4

    aput v4, v0, v5

    add-int/lit8 v4, v1, 0x4

    .line 3721
    aget v4, v8, v4

    aput v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v1, 0x5

    .line 3722
    aget v4, v8, v4

    aput v4, v0, v6

    add-int/lit8 v4, v1, 0x6

    .line 3723
    aget v4, v8, v4

    aput v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v1, 0x7

    .line 3724
    aget v4, v8, v4

    aput v4, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3726
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3727
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3728
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3729
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v3

    .line 3730
    :goto_2
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 3732
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3733
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3734
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3735
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v8, v8, v2

    aget v9, v0, v4

    aput v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3736
    aget v4, v0, v4

    aput v4, v8, v9

    add-int/lit8 v4, v1, 0x2

    .line 3737
    aget v9, v0, v5

    aput v9, v8, v4

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 3738
    aget v5, v0, v5

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x4

    .line 3739
    aget v5, v0, v6

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v6, v6, 0x1

    .line 3740
    aget v5, v0, v6

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x6

    .line 3741
    aget v5, v0, v7

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x7

    add-int/lit8 v7, v7, 0x1

    .line 3742
    aget v5, v0, v7

    aput v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3711
    :cond_1
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 3745
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_4

    move v1, v3

    .line 3746
    :goto_3
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x2

    .line 3748
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3749
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v5, v5, v1

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v7, v6, 0x4

    aget v7, v5, v7

    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 3750
    aget v7, v5, v7

    aput v7, v0, v2

    mul-int/lit8 v2, v6, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 3751
    aget v2, v5, v2

    aput v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    .line 3752
    aget v2, v5, v6

    aput v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3754
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3755
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3756
    :goto_4
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3758
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 3759
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v4, v4, v3

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x4

    aget v7, v0, v1

    aput v7, v4, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3760
    aget v1, v0, v1

    aput v1, v4, v6

    mul-int/lit8 v1, v5, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 3761
    aget v6, v0, v2

    aput v6, v4, v1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 3762
    aget v1, v0, v2

    aput v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3764
    :cond_4
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3765
    :goto_5
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0x2

    .line 3767
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v4, v4, v1

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x2

    aget v6, v4, v6

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 3768
    aget v4, v4, v5

    aput v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3770
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 3771
    :goto_6
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3773
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v2, v2, v3

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v5, v4, 0x2

    aget v6, v0, v1

    aput v6, v2, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3774
    aget v1, v0, v1

    aput v1, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3777
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_9

    .line 3778
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3779
    :goto_8
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_7

    mul-int/lit8 v4, v2, 0x2

    .line 3781
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3782
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3783
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3784
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v8, v8, v2

    aget v9, v8, v1

    aput v9, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v1, 0x1

    .line 3785
    aget v9, v8, v9

    aput v9, v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 3786
    aget v4, v8, v4

    aput v4, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v1, 0x3

    .line 3787
    aget v4, v8, v4

    aput v4, v0, v5

    add-int/lit8 v4, v1, 0x4

    .line 3788
    aget v4, v8, v4

    aput v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v1, 0x5

    .line 3789
    aget v4, v8, v4

    aput v4, v0, v6

    add-int/lit8 v4, v1, 0x6

    .line 3790
    aget v4, v8, v4

    aput v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v1, 0x7

    .line 3791
    aget v4, v8, v4

    aput v4, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3793
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3794
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3795
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3796
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v3

    .line 3797
    :goto_9
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_8

    mul-int/lit8 v4, v2, 0x2

    .line 3799
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3800
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3801
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3802
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v8, v8, v2

    aget v9, v0, v4

    aput v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3803
    aget v4, v0, v4

    aput v4, v8, v9

    add-int/lit8 v4, v1, 0x2

    .line 3804
    aget v9, v0, v5

    aput v9, v8, v4

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 3805
    aget v5, v0, v5

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x4

    .line 3806
    aget v5, v0, v6

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v6, v6, 0x1

    .line 3807
    aget v5, v0, v6

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x6

    .line 3808
    aget v5, v0, v7

    aput v5, v8, v4

    add-int/lit8 v4, v1, 0x7

    add-int/lit8 v7, v7, 0x1

    .line 3809
    aget v5, v0, v7

    aput v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3778
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 3812
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_b

    move v1, v3

    .line 3813
    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_a

    mul-int/lit8 v2, v1, 0x2

    .line 3815
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3816
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v5, v5, v1

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v7, v6, 0x4

    aget v7, v5, v7

    aput v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 3817
    aget v7, v5, v7

    aput v7, v0, v2

    mul-int/lit8 v2, v6, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 3818
    aget v2, v5, v2

    aput v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    .line 3819
    aget v2, v5, v6

    aput v2, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3821
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3822
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-boolean v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v2, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3823
    :goto_b
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3825
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 3826
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v4, v4, v3

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x4

    aget v7, v0, v1

    aput v7, v4, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3827
    aget v1, v0, v1

    aput v1, v4, v6

    mul-int/lit8 v1, v5, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 3828
    aget v6, v0, v2

    aput v6, v4, v1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 3829
    aget v1, v0, v2

    aput v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3831
    :cond_b
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3832
    :goto_c
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_c

    mul-int/lit8 v2, v1, 0x2

    .line 3834
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v4, v4, v1

    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x2

    aget v6, v4, v6

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 3835
    aget v4, v4, v5

    aput v4, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3837
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 3838
    :goto_d
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3840
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$a:[[F

    aget-object v2, v2, v3

    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$45;->val$n0:I

    mul-int/lit8 v5, v4, 0x2

    aget v6, v0, v1

    aput v6, v2, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3841
    aget v1, v0, v1

    aput v1, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method
