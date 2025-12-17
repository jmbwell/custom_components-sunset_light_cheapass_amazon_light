.class Lorg/jtransforms/fft/DoubleFFT_3D$56;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->xdft3da_subth2(II[[[DZ)V
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

    .line 6141
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$nthreads:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$icr:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    iput-boolean p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 6145
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$ntf:I

    new-array v1, v1, [D

    .line 6146
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ne v2, v3, :cond_9

    .line 6147
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6148
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$icr:I

    if-nez v3, :cond_0

    move v3, v6

    .line 6149
    :goto_1
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 6150
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v6

    .line 6153
    :goto_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_1

    .line 6154
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 6157
    :cond_1
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-le v3, v5, :cond_4

    move v3, v6

    .line 6158
    :goto_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    move v9, v6

    .line 6159
    :goto_4
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_2

    mul-int/lit8 v10, v9, 0x2

    .line 6161
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6162
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6163
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6164
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v15, v3, 0x1

    .line 6165
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v3, 0x2

    .line 6166
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v10, v3, 0x3

    .line 6167
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v3, 0x4

    .line 6168
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v10, v3, 0x5

    .line 6169
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v3, 0x6

    .line 6170
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/2addr v13, v8

    add-int/lit8 v10, v3, 0x7

    .line 6171
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 6173
    :cond_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    invoke-virtual {v9, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6174
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6175
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6176
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x6

    invoke-virtual {v9, v1, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v9, v6

    .line 6177
    :goto_5
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_3

    mul-int/lit8 v10, v9, 0x2

    .line 6179
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6180
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6181
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6182
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v1, v10

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v10, v8

    .line 6183
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v3, 0x2

    .line 6184
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v8

    .line 6185
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x4

    .line 6186
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v8

    .line 6187
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x6

    .line 6188
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v13, v8

    .line 6189
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_3

    .line 6192
    :cond_4
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v5, :cond_6

    move v3, v6

    .line 6193
    :goto_6
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_5

    mul-int/lit8 v9, v3, 0x2

    .line 6195
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6196
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v1, v9

    add-int/2addr v9, v8

    .line 6197
    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    .line 6198
    aget-wide v12, v11, v7

    aput-wide v12, v1, v10

    add-int/2addr v10, v8

    .line 6199
    aget-wide v12, v11, v4

    aput-wide v12, v1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6201
    :cond_5
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6202
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    invoke-virtual {v3, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6203
    :goto_7
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    mul-int/lit8 v9, v3, 0x2

    .line 6205
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6206
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v1, v9

    aput-wide v12, v11, v6

    add-int/2addr v9, v8

    .line 6207
    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    .line 6208
    aget-wide v12, v1, v10

    aput-wide v12, v11, v7

    add-int/2addr v10, v8

    .line 6209
    aget-wide v9, v1, v10

    aput-wide v9, v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 6211
    :cond_6
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v7, :cond_8

    move v3, v6

    .line 6212
    :goto_8
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_7

    mul-int/lit8 v9, v3, 0x2

    .line 6214
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6215
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6217
    :cond_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v1, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v3, v6

    .line 6218
    :goto_9
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_8

    mul-int/lit8 v9, v3, 0x2

    .line 6220
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v1, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 6221
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 6147
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 6227
    :cond_9
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6228
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$icr:I

    if-nez v3, :cond_a

    move v3, v6

    .line 6229
    :goto_b
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 6230
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_a
    move v3, v6

    .line 6233
    :goto_c
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_b

    .line 6234
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v10, v6, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 6237
    :cond_b
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-le v3, v5, :cond_e

    move v3, v6

    .line 6238
    :goto_d
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_12

    move v9, v6

    .line 6239
    :goto_e
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_c

    mul-int/lit8 v10, v9, 0x2

    .line 6241
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6242
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6243
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6244
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v14, v3

    aput-wide v15, v1, v10

    add-int/2addr v10, v8

    add-int/lit8 v15, v3, 0x1

    .line 6245
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v3, 0x2

    .line 6246
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/2addr v11, v8

    add-int/lit8 v10, v3, 0x3

    .line 6247
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v3, 0x4

    .line 6248
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/2addr v12, v8

    add-int/lit8 v10, v3, 0x5

    .line 6249
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v3, 0x6

    .line 6250
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/2addr v13, v8

    add-int/lit8 v10, v3, 0x7

    .line 6251
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    .line 6253
    :cond_c
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v1, v6, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6254
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6255
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6256
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v9

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/lit8 v10, v10, 0x6

    iget-boolean v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v9, v1, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v9, v6

    .line 6257
    :goto_f
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    if-ge v9, v10, :cond_d

    mul-int/lit8 v10, v9, 0x2

    .line 6259
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 6260
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v7

    add-int/2addr v12, v11

    .line 6261
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v7

    add-int/2addr v13, v12

    .line 6262
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v14, v14, v2

    aget-object v14, v14, v9

    aget-wide v15, v1, v10

    aput-wide v15, v14, v3

    add-int/lit8 v15, v3, 0x1

    add-int/2addr v10, v8

    .line 6263
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v3, 0x2

    .line 6264
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x3

    add-int/2addr v11, v8

    .line 6265
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x4

    .line 6266
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v3, 0x5

    add-int/2addr v12, v8

    .line 6267
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x6

    .line 6268
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v10, v3, 0x7

    add-int/2addr v13, v8

    .line 6269
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_f

    :cond_d
    add-int/lit8 v3, v3, 0x8

    goto/16 :goto_d

    .line 6272
    :cond_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v5, :cond_10

    move v3, v6

    .line 6273
    :goto_10
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_f

    mul-int/lit8 v9, v3, 0x2

    .line 6275
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6276
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v11, v6

    aput-wide v12, v1, v9

    add-int/2addr v9, v8

    .line 6277
    aget-wide v12, v11, v8

    aput-wide v12, v1, v9

    .line 6278
    aget-wide v12, v11, v7

    aput-wide v12, v1, v10

    add-int/2addr v10, v8

    .line 6279
    aget-wide v12, v11, v4

    aput-wide v12, v1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6281
    :cond_f
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v3, v1, v6, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6282
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v7

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v3, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6283
    :goto_11
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_12

    mul-int/lit8 v9, v3, 0x2

    .line 6285
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v7

    add-int/2addr v10, v9

    .line 6286
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v11, v11, v2

    aget-object v11, v11, v3

    aget-wide v12, v1, v9

    aput-wide v12, v11, v6

    add-int/2addr v9, v8

    .line 6287
    aget-wide v12, v1, v9

    aput-wide v12, v11, v8

    .line 6288
    aget-wide v12, v1, v10

    aput-wide v12, v11, v7

    add-int/2addr v10, v8

    .line 6289
    aget-wide v9, v1, v10

    aput-wide v9, v11, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 6291
    :cond_10
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ne v3, v7, :cond_12

    move v3, v6

    .line 6292
    :goto_12
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_11

    mul-int/lit8 v9, v3, 0x2

    .line 6294
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v10, v6

    aput-wide v11, v1, v9

    add-int/2addr v9, v8

    .line 6295
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 6297
    :cond_11
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$500(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$scale:Z

    invoke-virtual {v3, v1, v6, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v3, v6

    .line 6298
    :goto_13
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v3, v9, :cond_12

    mul-int/lit8 v9, v3, 0x2

    .line 6300
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$a:[[[D

    aget-object v10, v10, v2

    aget-object v10, v10, v3

    aget-wide v11, v1, v9

    aput-wide v11, v10, v6

    add-int/2addr v9, v8

    .line 6301
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6227
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$56;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    :cond_13
    return-void
.end method
