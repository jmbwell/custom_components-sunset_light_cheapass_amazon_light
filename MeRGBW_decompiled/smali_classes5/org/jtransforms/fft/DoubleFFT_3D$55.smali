.class Lorg/jtransforms/fft/DoubleFFT_3D$55;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth1(II[[[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[[[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[[[DZ)V
    .locals 0

    .line 5944
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    iput-boolean p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 5948
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$ntf:I

    new-array v1, v1, [D

    .line 5949
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v3, :cond_9

    .line 5950
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 5951
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$icr:I

    if-nez v3, :cond_0

    move v3, v6

    .line 5952
    :goto_1
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 5953
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v6

    .line 5956
    :goto_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 5957
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    invoke-virtual {v9, v10, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 5960
    :cond_1
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-le v3, v5, :cond_4

    move v3, v6

    .line 5961
    :goto_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    move v9, v6

    .line 5962
    :goto_4
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_2

    mul-int/lit8 v10, v9, 0x2

    .line 5964
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 5965
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 5966
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 5967
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v15, v3, 0x1

    .line 5968
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v3, 0x2

    .line 5969
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v10, v3, 0x3

    .line 5970
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v3, 0x4

    .line 5971
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v10, v3, 0x5

    .line 5972
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v3, 0x6

    .line 5973
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/2addr v13, v8

    add-int/lit8 v10, v3, 0x7

    .line 5974
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 5976
    :cond_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5977
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5978
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 5979
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 5980
    :goto_5
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_3

    mul-int/lit8 v10, v9, 0x2

    .line 5982
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 5983
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 5984
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 5985
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v1, v10

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v10, v8

    .line 5986
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v3, 0x2

    .line 5987
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v8

    .line 5988
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x4

    .line 5989
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v8

    .line 5990
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x6

    .line 5991
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v13, v8

    .line 5992
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_3

    .line 5995
    :cond_4
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v6

    .line 5996
    :goto_6
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_5

    mul-int/lit8 v9, v3, 0x2

    .line 5998
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 5999
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v1, v9

    add-int/2addr v9, v8

    .line 6000
    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    .line 6001
    aget-wide v12, v11, v7

    aput-wide v12, v1, v10

    add-int/2addr v10, v8

    .line 6002
    aget-wide v12, v11, v4

    aput-wide v12, v1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6004
    :cond_5
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6005
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v3, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6006
    :goto_7
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    mul-int/lit8 v9, v3, 0x2

    .line 6008
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6009
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v1, v9

    aput-wide v12, v11, v6

    add-int/2addr v9, v8

    .line 6010
    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    .line 6011
    aget-wide v12, v1, v10

    aput-wide v12, v11, v7

    add-int/2addr v10, v8

    .line 6012
    aget-wide v9, v1, v10

    aput-wide v9, v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6014
    :cond_6
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v7, :cond_8

    move v3, v6

    .line 6015
    :goto_8
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_7

    mul-int/lit8 v9, v3, 0x2

    .line 6017
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6018
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6020
    :cond_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6021
    :goto_9
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    mul-int/lit8 v9, v3, 0x2

    .line 6023
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v1, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 6024
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 5950
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 6030
    :cond_9
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6031
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$icr:I

    if-nez v3, :cond_a

    move v3, v6

    .line 6032
    :goto_b
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_a

    .line 6033
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 6036
    :cond_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-le v3, v5, :cond_d

    move v3, v6

    .line 6037
    :goto_c
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_11

    move v9, v6

    .line 6038
    :goto_d
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_b

    mul-int/lit8 v10, v9, 0x2

    .line 6040
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6041
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6042
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6043
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v15, v3, 0x1

    .line 6044
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v3, 0x2

    .line 6045
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v10, v3, 0x3

    .line 6046
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v3, 0x4

    .line 6047
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v10, v3, 0x5

    .line 6048
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v3, 0x6

    .line 6049
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/2addr v13, v8

    add-int/lit8 v10, v3, 0x7

    .line 6050
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_d

    .line 6052
    :cond_b
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v1, v6, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6053
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6054
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6055
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x6

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 6056
    :goto_e
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_c

    mul-int/lit8 v10, v9, 0x2

    .line 6058
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6059
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6060
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6061
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v1, v10

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v10, v8

    .line 6062
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v3, 0x2

    .line 6063
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v8

    .line 6064
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x4

    .line 6065
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v8

    .line 6066
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x6

    .line 6067
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v13, v8

    .line 6068
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_c

    .line 6071
    :cond_d
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v5, :cond_f

    move v3, v6

    .line 6072
    :goto_f
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_e

    mul-int/lit8 v9, v3, 0x2

    .line 6074
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6075
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v1, v9

    add-int/2addr v9, v8

    .line 6076
    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    .line 6077
    aget-wide v12, v11, v7

    aput-wide v12, v1, v10

    add-int/2addr v10, v8

    .line 6078
    aget-wide v12, v11, v4

    aput-wide v12, v1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6080
    :cond_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v3, v1, v6, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6081
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v3, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6082
    :goto_10
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_11

    mul-int/lit8 v9, v3, 0x2

    .line 6084
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6085
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v1, v9

    aput-wide v12, v11, v6

    add-int/2addr v9, v8

    .line 6086
    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    .line 6087
    aget-wide v12, v1, v10

    aput-wide v12, v11, v7

    add-int/2addr v10, v8

    .line 6088
    aget-wide v9, v1, v10

    aput-wide v9, v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6090
    :cond_f
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v7, :cond_11

    move v3, v6

    .line 6091
    :goto_11
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_10

    mul-int/lit8 v9, v3, 0x2

    .line 6093
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6094
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 6096
    :cond_10
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v3, v1, v6, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6097
    :goto_12
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_11

    mul-int/lit8 v9, v3, 0x2

    .line 6099
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v1, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 6100
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 6103
    :cond_11
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$icr:I

    if-eqz v3, :cond_12

    move v3, v6

    .line 6104
    :goto_13
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_12

    .line 6105
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$scale:Z

    invoke-virtual {v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6030
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$55;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    :cond_13
    return-void
.end method
