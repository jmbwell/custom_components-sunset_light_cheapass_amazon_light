.class Lorg/jtransforms/fft/FloatFFT_3D$56;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->xdft3da_subth2(II[[[FZ)V
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

    .line 6148
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    iput-boolean p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 6152
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$ntf:I

    new-array v0, v0, [F

    .line 6153
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v2, :cond_9

    .line 6154
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6155
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$icr:I

    if-nez v2, :cond_0

    move v2, v5

    .line 6156
    :goto_1
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 6157
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v5

    .line 6160
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_1

    .line 6161
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 6164
    :cond_1
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_4

    move v2, v5

    .line 6165
    :goto_3
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    move v8, v5

    .line 6166
    :goto_4
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_2

    mul-int/lit8 v9, v8, 0x2

    .line 6168
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6169
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6170
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6171
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v13, v2

    aput v14, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v14, v2, 0x1

    .line 6172
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v2, 0x2

    .line 6173
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v9, v2, 0x3

    .line 6174
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v2, 0x4

    .line 6175
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v9, v2, 0x5

    .line 6176
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v2, 0x6

    .line 6177
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/2addr v12, v7

    add-int/lit8 v9, v2, 0x7

    .line 6178
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 6180
    :cond_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6181
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6182
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6183
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v0, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v8, v5

    .line 6184
    :goto_5
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_3

    mul-int/lit8 v9, v8, 0x2

    .line 6186
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6187
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6188
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6189
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v0, v9

    aput v14, v13, v2

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v9, v7

    .line 6190
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v2, 0x2

    .line 6191
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v2, 0x3

    add-int/2addr v10, v7

    .line 6192
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x4

    .line 6193
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x5

    add-int/2addr v11, v7

    .line 6194
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x6

    .line 6195
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x7

    add-int/2addr v12, v7

    .line 6196
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_3

    .line 6199
    :cond_4
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_6

    move v2, v5

    .line 6200
    :goto_6
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_5

    mul-int/lit8 v8, v2, 0x2

    .line 6202
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6203
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v10, v5

    aput v11, v0, v8

    add-int/2addr v8, v7

    .line 6204
    aget v11, v10, v7

    aput v11, v0, v8

    .line 6205
    aget v8, v10, v6

    aput v8, v0, v9

    add-int/2addr v9, v7

    .line 6206
    aget v8, v10, v3

    aput v8, v0, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 6208
    :cond_5
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6209
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    invoke-virtual {v2, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6210
    :goto_7
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    mul-int/lit8 v8, v2, 0x2

    .line 6212
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6213
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v0, v8

    aput v11, v10, v5

    add-int/2addr v8, v7

    .line 6214
    aget v8, v0, v8

    aput v8, v10, v7

    .line 6215
    aget v8, v0, v9

    aput v8, v10, v6

    add-int/2addr v9, v7

    .line 6216
    aget v8, v0, v9

    aput v8, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 6218
    :cond_6
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_8

    move v2, v5

    .line 6219
    :goto_8
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_7

    mul-int/lit8 v8, v2, 0x2

    .line 6221
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v9, v5

    aput v10, v0, v8

    add-int/2addr v8, v7

    .line 6222
    aget v9, v9, v7

    aput v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 6224
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v2, v5

    .line 6225
    :goto_9
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_8

    mul-int/lit8 v8, v2, 0x2

    .line 6227
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v0, v8

    aput v10, v9, v5

    add-int/2addr v8, v7

    .line 6228
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 6154
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 6234
    :cond_9
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6235
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$icr:I

    if-nez v2, :cond_a

    move v2, v5

    .line 6236
    :goto_b
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 6237
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_a
    move v2, v5

    .line 6240
    :goto_c
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_b

    .line 6241
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v9, v5, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 6244
    :cond_b
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_e

    move v2, v5

    .line 6245
    :goto_d
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_12

    move v8, v5

    .line 6246
    :goto_e
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_c

    mul-int/lit8 v9, v8, 0x2

    .line 6248
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6249
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6250
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6251
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v13, v2

    aput v14, v0, v9

    add-int/2addr v9, v7

    add-int/lit8 v14, v2, 0x1

    .line 6252
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v2, 0x2

    .line 6253
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/2addr v10, v7

    add-int/lit8 v9, v2, 0x3

    .line 6254
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v2, 0x4

    .line 6255
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/2addr v11, v7

    add-int/lit8 v9, v2, 0x5

    .line 6256
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v2, 0x6

    .line 6257
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/2addr v12, v7

    add-int/lit8 v9, v2, 0x7

    .line 6258
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_e

    .line 6260
    :cond_c
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v0, v5, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6261
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6262
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6263
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v8, v0, v9, v10}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v8, v5

    .line 6264
    :goto_f
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_d

    mul-int/lit8 v9, v8, 0x2

    .line 6266
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v6

    add-int/2addr v10, v9

    .line 6267
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6268
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6269
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v13, v13, v1

    aget-object v13, v13, v8

    aget v14, v0, v9

    aput v14, v13, v2

    add-int/lit8 v14, v2, 0x1

    add-int/2addr v9, v7

    .line 6270
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v2, 0x2

    .line 6271
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v2, 0x3

    add-int/2addr v10, v7

    .line 6272
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x4

    .line 6273
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x5

    add-int/2addr v11, v7

    .line 6274
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x6

    .line 6275
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v9, v2, 0x7

    add-int/2addr v12, v7

    .line 6276
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v2, v2, 0x8

    goto/16 :goto_d

    .line 6279
    :cond_e
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_10

    move v2, v5

    .line 6280
    :goto_10
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_f

    mul-int/lit8 v8, v2, 0x2

    .line 6282
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6283
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v10, v5

    aput v11, v0, v8

    add-int/2addr v8, v7

    .line 6284
    aget v11, v10, v7

    aput v11, v0, v8

    .line 6285
    aget v8, v10, v6

    aput v8, v0, v9

    add-int/2addr v9, v7

    .line 6286
    aget v8, v10, v3

    aput v8, v0, v9

    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 6288
    :cond_f
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v2, v0, v5, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6289
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v2, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6290
    :goto_11
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_12

    mul-int/lit8 v8, v2, 0x2

    .line 6292
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6293
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v10, v10, v1

    aget-object v10, v10, v2

    aget v11, v0, v8

    aput v11, v10, v5

    add-int/2addr v8, v7

    .line 6294
    aget v8, v0, v8

    aput v8, v10, v7

    .line 6295
    aget v8, v0, v9

    aput v8, v10, v6

    add-int/2addr v9, v7

    .line 6296
    aget v8, v0, v9

    aput v8, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 6298
    :cond_10
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_12

    move v2, v5

    .line 6299
    :goto_12
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_11

    mul-int/lit8 v8, v2, 0x2

    .line 6301
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v9, v5

    aput v10, v0, v8

    add-int/2addr v8, v7

    .line 6302
    aget v9, v9, v7

    aput v9, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 6304
    :cond_11
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$scale:Z

    invoke-virtual {v2, v0, v5, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v2, v5

    .line 6305
    :goto_13
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v2, v8, :cond_12

    mul-int/lit8 v8, v2, 0x2

    .line 6307
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$a:[[[F

    aget-object v9, v9, v1

    aget-object v9, v9, v2

    aget v10, v0, v8

    aput v10, v9, v5

    add-int/2addr v8, v7

    .line 6308
    aget v8, v0, v8

    aput v8, v9, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 6234
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$56;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    :cond_13
    return-void
.end method
