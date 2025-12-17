.class Lorg/jtransforms/fft/DoubleFFT_2D$45;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[[DZ)V
    .locals 0

    .line 3725
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    iput-boolean p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 3729
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$ntf:I

    new-array v0, v0, [D

    .line 3730
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    .line 3731
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2

    .line 3732
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3733
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_0

    mul-int/lit8 v4, v2, 0x2

    .line 3735
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3736
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3737
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3738
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v1

    aput-wide v9, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v1, 0x1

    .line 3739
    aget-wide v9, v8, v9

    aput-wide v9, v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 3740
    aget-wide v9, v8, v4

    aput-wide v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v1, 0x3

    .line 3741
    aget-wide v9, v8, v4

    aput-wide v9, v0, v5

    add-int/lit8 v4, v1, 0x4

    .line 3742
    aget-wide v4, v8, v4

    aput-wide v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v1, 0x5

    .line 3743
    aget-wide v4, v8, v4

    aput-wide v4, v0, v6

    add-int/lit8 v4, v1, 0x6

    .line 3744
    aget-wide v4, v8, v4

    aput-wide v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v1, 0x7

    .line 3745
    aget-wide v4, v8, v4

    aput-wide v4, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3747
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3748
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3749
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3750
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v2, v3

    .line 3751
    :goto_2
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_1

    mul-int/lit8 v4, v2, 0x2

    .line 3753
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3754
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3755
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3756
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v8, v8, v2

    aget-wide v9, v0, v4

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3757
    aget-wide v10, v0, v4

    aput-wide v10, v8, v9

    add-int/lit8 v4, v1, 0x2

    .line 3758
    aget-wide v9, v0, v5

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 3759
    aget-wide v9, v0, v5

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x4

    .line 3760
    aget-wide v9, v0, v6

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v6, v6, 0x1

    .line 3761
    aget-wide v5, v0, v6

    aput-wide v5, v8, v4

    add-int/lit8 v4, v1, 0x6

    .line 3762
    aget-wide v5, v0, v7

    aput-wide v5, v8, v4

    add-int/lit8 v4, v1, 0x7

    add-int/lit8 v7, v7, 0x1

    .line 3763
    aget-wide v5, v0, v7

    aput-wide v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3732
    :cond_1
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 3766
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_4

    move v1, v3

    .line 3767
    :goto_3
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x2

    .line 3769
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3770
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v5, v5, v1

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v7, v6, 0x4

    aget-wide v7, v5, v7

    aput-wide v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 3771
    aget-wide v7, v5, v7

    aput-wide v7, v0, v2

    mul-int/lit8 v2, v6, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 3772
    aget-wide v7, v5, v2

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    .line 3773
    aget-wide v6, v5, v6

    aput-wide v6, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3775
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3776
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3777
    :goto_4
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3779
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 3780
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v4, v4, v3

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x4

    aget-wide v7, v0, v1

    aput-wide v7, v4, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3781
    aget-wide v7, v0, v1

    aput-wide v7, v4, v6

    mul-int/lit8 v1, v5, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 3782
    aget-wide v6, v0, v2

    aput-wide v6, v4, v1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 3783
    aget-wide v1, v0, v2

    aput-wide v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3785
    :cond_4
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3786
    :goto_5
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_5

    mul-int/lit8 v2, v1, 0x2

    .line 3788
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v4, v4, v1

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x2

    aget-wide v6, v4, v6

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 3789
    aget-wide v5, v4, v5

    aput-wide v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3791
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3792
    :goto_6
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3794
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v2, v2, v3

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v5, v4, 0x2

    aget-wide v6, v0, v1

    aput-wide v6, v2, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3795
    aget-wide v5, v0, v1

    aput-wide v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3798
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_9

    .line 3799
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3800
    :goto_8
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_7

    mul-int/lit8 v4, v2, 0x2

    .line 3802
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3803
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3804
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3805
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v8, v8, v2

    aget-wide v9, v8, v1

    aput-wide v9, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v1, 0x1

    .line 3806
    aget-wide v9, v8, v9

    aput-wide v9, v0, v4

    add-int/lit8 v4, v1, 0x2

    .line 3807
    aget-wide v9, v8, v4

    aput-wide v9, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v1, 0x3

    .line 3808
    aget-wide v9, v8, v4

    aput-wide v9, v0, v5

    add-int/lit8 v4, v1, 0x4

    .line 3809
    aget-wide v4, v8, v4

    aput-wide v4, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v1, 0x5

    .line 3810
    aget-wide v4, v8, v4

    aput-wide v4, v0, v6

    add-int/lit8 v4, v1, 0x6

    .line 3811
    aget-wide v4, v8, v4

    aput-wide v4, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v1, 0x7

    .line 3812
    aget-wide v4, v8, v4

    aput-wide v4, v0, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3814
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3815
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3816
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3817
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v2, v3

    .line 3818
    :goto_9
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_8

    mul-int/lit8 v4, v2, 0x2

    .line 3820
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3821
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3822
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3823
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v8, v8, v2

    aget-wide v9, v0, v4

    aput-wide v9, v8, v1

    add-int/lit8 v9, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 3824
    aget-wide v10, v0, v4

    aput-wide v10, v8, v9

    add-int/lit8 v4, v1, 0x2

    .line 3825
    aget-wide v9, v0, v5

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x3

    add-int/lit8 v5, v5, 0x1

    .line 3826
    aget-wide v9, v0, v5

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x4

    .line 3827
    aget-wide v9, v0, v6

    aput-wide v9, v8, v4

    add-int/lit8 v4, v1, 0x5

    add-int/lit8 v6, v6, 0x1

    .line 3828
    aget-wide v5, v0, v6

    aput-wide v5, v8, v4

    add-int/lit8 v4, v1, 0x6

    .line 3829
    aget-wide v5, v0, v7

    aput-wide v5, v8, v4

    add-int/lit8 v4, v1, 0x7

    add-int/lit8 v7, v7, 0x1

    .line 3830
    aget-wide v5, v0, v7

    aput-wide v5, v8, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3799
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 3833
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_b

    move v1, v3

    .line 3834
    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_a

    mul-int/lit8 v2, v1, 0x2

    .line 3836
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3837
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v5, v5, v1

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v7, v6, 0x4

    aget-wide v7, v5, v7

    aput-wide v7, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v7, v6, 0x4

    add-int/lit8 v7, v7, 0x1

    .line 3838
    aget-wide v7, v5, v7

    aput-wide v7, v0, v2

    mul-int/lit8 v2, v6, 0x4

    add-int/lit8 v2, v2, 0x2

    .line 3839
    aget-wide v7, v5, v2

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v6, v6, 0x4

    add-int/lit8 v6, v6, 0x3

    .line 3840
    aget-wide v6, v5, v6

    aput-wide v6, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3842
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3843
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v2, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3844
    :goto_b
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3846
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    .line 3847
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v4, v4, v3

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x4

    aget-wide v7, v0, v1

    aput-wide v7, v4, v6

    mul-int/lit8 v6, v5, 0x4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3848
    aget-wide v7, v0, v1

    aput-wide v7, v4, v6

    mul-int/lit8 v1, v5, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 3849
    aget-wide v6, v0, v2

    aput-wide v6, v4, v1

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x3

    add-int/lit8 v2, v2, 0x1

    .line 3850
    aget-wide v1, v0, v2

    aput-wide v1, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3852
    :cond_b
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3853
    :goto_c
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_c

    mul-int/lit8 v2, v1, 0x2

    .line 3855
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v4, v4, v1

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v6, v5, 0x2

    aget-wide v6, v4, v6

    aput-wide v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    .line 3856
    aget-wide v5, v4, v5

    aput-wide v5, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3858
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3859
    :goto_d
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    mul-int/lit8 v1, v3, 0x2

    .line 3861
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$a:[[D

    aget-object v2, v2, v3

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$45;->val$n0:I

    mul-int/lit8 v5, v4, 0x2

    aget-wide v6, v0, v1

    aput-wide v6, v2, v5

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 3862
    aget-wide v5, v0, v1

    aput-wide v5, v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method
