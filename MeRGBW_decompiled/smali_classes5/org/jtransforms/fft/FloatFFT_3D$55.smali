.class Lorg/jtransforms/fft/FloatFFT_3D$55;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth1(II[[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIII[[[FZ)V
    .locals 0

    .line 5951
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    iput-boolean p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 5955
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$ntf:I

    new-array v0, v0, [F

    .line 5956
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_9

    .line 5957
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 5958
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$icr:I

    if-nez v2, :cond_0

    move v2, v5

    .line 5959
    :goto_1
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 5960
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v5

    .line 5963
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 5964
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {v8, v9, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5967
    :cond_1
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_4

    move v2, v5

    .line 5968
    :goto_3
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    move v8, v5

    .line 5969
    :goto_4
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_2

    mul-int/lit8 v9, v8, 0x2

    .line 5971
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5972
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5973
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5974
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v13, v2

    aput v14, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v14, v2, 0x1

    .line 5975
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v2, 0x2

    .line 5976
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v9, v2, 0x3

    .line 5977
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v2, 0x4

    .line 5978
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v9, v2, 0x5

    .line 5979
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v2, 0x6

    .line 5980
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/2addr v12, v7

    add-int/lit8 v9, v2, 0x7

    .line 5981
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 5983
    :cond_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5984
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5985
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 5986
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v5

    .line 5987
    :goto_5
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_3

    mul-int/lit8 v9, v8, 0x2

    .line 5989
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 5990
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 5991
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 5992
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v0, v9

    aput v14, v13, v2

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v9, v7

    .line 5993
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v2, 0x2

    .line 5994
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v2, 0x3

    add-int/2addr v10, v7

    .line 5995
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x4

    .line 5996
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x5

    add-int/2addr v11, v7

    .line 5997
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x6

    .line 5998
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x7

    add-int/2addr v12, v7

    .line 5999
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_3

    .line 6002
    :cond_4
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_6

    move v2, v5

    .line 6003
    :goto_6
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_5

    mul-int/lit8 v8, v2, 0x2

    .line 6005
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6006
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v10, v5

    aput v11, v0, v8

    add-int/2addr v8, v7

    .line 6007
    aget v11, v10, v7

    aput v11, v0, v8

    .line 6008
    aget v8, v10, v6

    aput v8, v0, v9

    add-int/2addr v9, v7

    .line 6009
    aget v8, v10, v3

    aput v8, v0, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6011
    :cond_5
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6012
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v2, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6013
    :goto_7
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    mul-int/lit8 v8, v2, 0x2

    .line 6015
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6016
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v0, v8

    aput v11, v10, v5

    add-int/2addr v8, v7

    .line 6017
    aget v8, v0, v8

    aput v8, v10, v7

    .line 6018
    aget v8, v0, v9

    aput v8, v10, v6

    add-int/2addr v9, v7

    .line 6019
    aget v8, v0, v9

    aput v8, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6021
    :cond_6
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_8

    move v2, v5

    .line 6022
    :goto_8
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_7

    mul-int/lit8 v8, v2, 0x2

    .line 6024
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v9, v5

    aput v10, v0, v8

    add-int/2addr v8, v7

    .line 6025
    aget v9, v9, v7

    aput v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6027
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6028
    :goto_9
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    mul-int/lit8 v8, v2, 0x2

    .line 6030
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v0, v8

    aput v10, v9, v5

    add-int/2addr v8, v7

    .line 6031
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 5957
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 6037
    :cond_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6038
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$icr:I

    if-nez v2, :cond_a

    move v2, v5

    .line 6039
    :goto_b
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_a

    .line 6040
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 6043
    :cond_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_d

    move v2, v5

    .line 6044
    :goto_c
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_11

    move v8, v5

    .line 6045
    :goto_d
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_b

    mul-int/lit8 v9, v8, 0x2

    .line 6047
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6048
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6049
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6050
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v13, v2

    aput v14, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v14, v2, 0x1

    .line 6051
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v2, 0x2

    .line 6052
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v9, v2, 0x3

    .line 6053
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v2, 0x4

    .line 6054
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v9, v2, 0x5

    .line 6055
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v2, 0x6

    .line 6056
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/2addr v12, v7

    add-int/lit8 v9, v2, 0x7

    .line 6057
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 6059
    :cond_b
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v0, v5, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6060
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6061
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6062
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v8, v5

    .line 6063
    :goto_e
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_c

    mul-int/lit8 v9, v8, 0x2

    .line 6065
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6066
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6067
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6068
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v0, v9

    aput v14, v13, v2

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v9, v7

    .line 6069
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v2, 0x2

    .line 6070
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v2, 0x3

    add-int/2addr v10, v7

    .line 6071
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x4

    .line 6072
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x5

    add-int/2addr v11, v7

    .line 6073
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x6

    .line 6074
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x7

    add-int/2addr v12, v7

    .line 6075
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    :cond_c
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_c

    .line 6078
    :cond_d
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_f

    move v2, v5

    .line 6079
    :goto_f
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_e

    mul-int/lit8 v8, v2, 0x2

    .line 6081
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6082
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v10, v5

    aput v11, v0, v8

    add-int/2addr v8, v7

    .line 6083
    aget v11, v10, v7

    aput v11, v0, v8

    .line 6084
    aget v8, v10, v6

    aput v8, v0, v9

    add-int/2addr v9, v7

    .line 6085
    aget v8, v10, v3

    aput v8, v0, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 6087
    :cond_e
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v2, v0, v5, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6088
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v2, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6089
    :goto_10
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_11

    mul-int/lit8 v8, v2, 0x2

    .line 6091
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6092
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v0, v8

    aput v11, v10, v5

    add-int/2addr v8, v7

    .line 6093
    aget v8, v0, v8

    aput v8, v10, v7

    .line 6094
    aget v8, v0, v9

    aput v8, v10, v6

    add-int/2addr v9, v7

    .line 6095
    aget v8, v0, v9

    aput v8, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6097
    :cond_f
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_11

    move v2, v5

    .line 6098
    :goto_11
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_10

    mul-int/lit8 v8, v2, 0x2

    .line 6100
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v9, v5

    aput v10, v0, v8

    add-int/2addr v8, v7

    .line 6101
    aget v9, v9, v7

    aput v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6103
    :cond_10
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v2, v0, v5, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6104
    :goto_12
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_11

    mul-int/lit8 v8, v2, 0x2

    .line 6106
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v0, v8

    aput v10, v9, v5

    add-int/2addr v8, v7

    .line 6107
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 6110
    :cond_11
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$icr:I

    if-eqz v2, :cond_12

    move v2, v5

    .line 6111
    :goto_13
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_12

    .line 6112
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$scale:Z

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6037
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$55;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    :cond_13
    return-void
.end method
