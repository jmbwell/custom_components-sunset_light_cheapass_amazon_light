.class Lorg/jtransforms/fft/DoubleFFT_3D$59;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[[[DZ)V
    .locals 0

    .line 6743
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    iput-boolean p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 6748
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$ntf:I

    new-array v1, v1, [D

    .line 6749
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v3, :cond_9

    .line 6750
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-le v2, v5, :cond_3

    .line 6751
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6752
    :goto_1
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_2

    move v4, v6

    .line 6753
    :goto_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v4, v9, :cond_0

    mul-int/lit8 v9, v4, 0x2

    .line 6755
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6756
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6757
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6758
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aget-wide v14, v13, v3

    aput-wide v14, v1, v9

    add-int/2addr v9, v8

    add-int/lit8 v14, v3, 0x1

    .line 6759
    aget-wide v14, v13, v14

    aput-wide v14, v1, v9

    add-int/lit8 v9, v3, 0x2

    .line 6760
    aget-wide v14, v13, v9

    aput-wide v14, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v9, v3, 0x3

    .line 6761
    aget-wide v14, v13, v9

    aput-wide v14, v1, v10

    add-int/lit8 v9, v3, 0x4

    .line 6762
    aget-wide v9, v13, v9

    aput-wide v9, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v9, v3, 0x5

    .line 6763
    aget-wide v9, v13, v9

    aput-wide v9, v1, v11

    add-int/lit8 v9, v3, 0x6

    .line 6764
    aget-wide v9, v13, v9

    aput-wide v9, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v9, v3, 0x7

    .line 6765
    aget-wide v9, v13, v9

    aput-wide v9, v1, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 6767
    :cond_0
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    invoke-virtual {v4, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6768
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v4, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6769
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    invoke-virtual {v4, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6770
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v4, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v4, v6

    .line 6771
    :goto_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v4, v9, :cond_1

    mul-int/lit8 v9, v4, 0x2

    .line 6773
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6774
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6775
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6776
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aget-wide v14, v1, v9

    aput-wide v14, v13, v3

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v9, v8

    .line 6777
    aget-wide v15, v1, v9

    aput-wide v15, v13, v14

    add-int/lit8 v9, v3, 0x2

    .line 6778
    aget-wide v14, v1, v10

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x3

    add-int/2addr v10, v8

    .line 6779
    aget-wide v14, v1, v10

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x4

    .line 6780
    aget-wide v14, v1, v11

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x5

    add-int/2addr v11, v8

    .line 6781
    aget-wide v10, v1, v11

    aput-wide v10, v13, v9

    add-int/lit8 v9, v3, 0x6

    .line 6782
    aget-wide v10, v1, v12

    aput-wide v10, v13, v9

    add-int/lit8 v9, v3, 0x7

    add-int/2addr v12, v8

    .line 6783
    aget-wide v10, v1, v12

    aput-wide v10, v13, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_1

    .line 6751
    :cond_2
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 6787
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v5, :cond_6

    .line 6788
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_4
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6789
    :goto_5
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_4

    mul-int/lit8 v5, v3, 0x2

    .line 6791
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    .line 6792
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v10, v10, v3

    aget-object v10, v10, v2

    aget-wide v11, v10, v6

    aput-wide v11, v1, v5

    add-int/2addr v5, v8

    .line 6793
    aget-wide v11, v10, v8

    aput-wide v11, v1, v5

    .line 6794
    aget-wide v11, v10, v7

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6795
    aget-wide v11, v10, v4

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 6797
    :cond_4
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6798
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v7

    invoke-virtual {v3, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6799
    :goto_6
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_5

    mul-int/lit8 v5, v3, 0x2

    .line 6801
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    .line 6802
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v10, v10, v3

    aget-object v10, v10, v2

    aget-wide v11, v1, v5

    aput-wide v11, v10, v6

    add-int/2addr v5, v8

    .line 6803
    aget-wide v11, v1, v5

    aput-wide v11, v10, v8

    .line 6804
    aget-wide v11, v1, v9

    aput-wide v11, v10, v7

    add-int/2addr v9, v8

    .line 6805
    aget-wide v11, v1, v9

    aput-wide v11, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6788
    :cond_5
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_4

    .line 6808
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v7, :cond_13

    .line 6809
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6810
    :goto_8
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_7

    mul-int/lit8 v4, v3, 0x2

    .line 6812
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    aget-wide v9, v5, v6

    aput-wide v9, v1, v4

    add-int/2addr v4, v8

    .line 6813
    aget-wide v9, v5, v8

    aput-wide v9, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6815
    :cond_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6816
    :goto_9
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_8

    mul-int/lit8 v4, v3, 0x2

    .line 6818
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    aget-wide v9, v1, v4

    aput-wide v9, v5, v6

    add-int/2addr v4, v8

    .line 6819
    aget-wide v9, v1, v4

    aput-wide v9, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 6809
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto :goto_7

    .line 6823
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-le v2, v5, :cond_d

    .line 6824
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6825
    :goto_b
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_c

    move v4, v6

    .line 6826
    :goto_c
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v4, v9, :cond_a

    mul-int/lit8 v9, v4, 0x2

    .line 6828
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6829
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6830
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6831
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aget-wide v14, v13, v3

    aput-wide v14, v1, v9

    add-int/2addr v9, v8

    add-int/lit8 v14, v3, 0x1

    .line 6832
    aget-wide v14, v13, v14

    aput-wide v14, v1, v9

    add-int/lit8 v9, v3, 0x2

    .line 6833
    aget-wide v14, v13, v9

    aput-wide v14, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v9, v3, 0x3

    .line 6834
    aget-wide v14, v13, v9

    aput-wide v14, v1, v10

    add-int/lit8 v9, v3, 0x4

    .line 6835
    aget-wide v9, v13, v9

    aput-wide v9, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v9, v3, 0x5

    .line 6836
    aget-wide v9, v13, v9

    aput-wide v9, v1, v11

    add-int/lit8 v9, v3, 0x6

    .line 6837
    aget-wide v9, v13, v9

    aput-wide v9, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v9, v3, 0x7

    .line 6838
    aget-wide v9, v13, v9

    aput-wide v9, v1, v12

    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 6840
    :cond_a
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v4, v1, v6, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6841
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v4, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6842
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v5

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v4, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6843
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v4, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v4, v6

    .line 6844
    :goto_d
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v4, v9, :cond_b

    mul-int/lit8 v9, v4, 0x2

    .line 6846
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6847
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6848
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6849
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v13, v13, v4

    aget-object v13, v13, v2

    aget-wide v14, v1, v9

    aput-wide v14, v13, v3

    add-int/lit8 v14, v3, 0x1

    add-int/2addr v9, v8

    .line 6850
    aget-wide v15, v1, v9

    aput-wide v15, v13, v14

    add-int/lit8 v9, v3, 0x2

    .line 6851
    aget-wide v14, v1, v10

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x3

    add-int/2addr v10, v8

    .line 6852
    aget-wide v14, v1, v10

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x4

    .line 6853
    aget-wide v14, v1, v11

    aput-wide v14, v13, v9

    add-int/lit8 v9, v3, 0x5

    add-int/2addr v11, v8

    .line 6854
    aget-wide v10, v1, v11

    aput-wide v10, v13, v9

    add-int/lit8 v9, v3, 0x6

    .line 6855
    aget-wide v10, v1, v12

    aput-wide v10, v13, v9

    add-int/lit8 v9, v3, 0x7

    add-int/2addr v12, v8

    .line 6856
    aget-wide v10, v1, v12

    aput-wide v10, v13, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_b

    .line 6824
    :cond_c
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    .line 6860
    :cond_d
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v5, :cond_10

    .line 6861
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6862
    :goto_f
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_e

    mul-int/lit8 v5, v3, 0x2

    .line 6864
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    .line 6865
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v10, v10, v3

    aget-object v10, v10, v2

    aget-wide v11, v10, v6

    aput-wide v11, v1, v5

    add-int/2addr v5, v8

    .line 6866
    aget-wide v11, v10, v8

    aput-wide v11, v1, v5

    .line 6867
    aget-wide v11, v10, v7

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6868
    aget-wide v11, v10, v4

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6870
    :cond_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v1, v6, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6871
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v7

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v1, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6872
    :goto_10
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_f

    mul-int/lit8 v5, v3, 0x2

    .line 6874
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    add-int/2addr v9, v5

    .line 6875
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v10, v10, v3

    aget-object v10, v10, v2

    aget-wide v11, v1, v5

    aput-wide v11, v10, v6

    add-int/2addr v5, v8

    .line 6876
    aget-wide v11, v1, v5

    aput-wide v11, v10, v8

    .line 6877
    aget-wide v11, v1, v9

    aput-wide v11, v10, v7

    add-int/2addr v9, v8

    .line 6878
    aget-wide v11, v1, v9

    aput-wide v11, v10, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6861
    :cond_f
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_e

    .line 6881
    :cond_10
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v7, :cond_13

    .line 6882
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$n0:I

    :goto_11
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    move v3, v6

    .line 6883
    :goto_12
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_11

    mul-int/lit8 v4, v3, 0x2

    .line 6885
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    aget-wide v9, v5, v6

    aput-wide v9, v1, v4

    add-int/2addr v4, v8

    .line 6886
    aget-wide v9, v5, v8

    aput-wide v9, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 6888
    :cond_11
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$scale:Z

    invoke-virtual {v3, v1, v6, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6889
    :goto_13
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_12

    mul-int/lit8 v4, v3, 0x2

    .line 6891
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$a:[[[D

    aget-object v5, v5, v3

    aget-object v5, v5, v2

    aget-wide v9, v1, v4

    aput-wide v9, v5, v6

    add-int/2addr v4, v8

    .line 6892
    aget-wide v9, v1, v4

    aput-wide v9, v5, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6882
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$59;->val$nthreads:I

    add-int/2addr v2, v3

    goto :goto_11

    :cond_13
    return-void
.end method
