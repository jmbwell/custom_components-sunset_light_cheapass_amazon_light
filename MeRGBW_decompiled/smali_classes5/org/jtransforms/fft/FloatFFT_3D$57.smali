.class Lorg/jtransforms/fft/FloatFFT_3D$57;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->cdft3db_subth(I[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZ)V
    .locals 0

    .line 6344
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    iput-boolean p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 6349
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$ntf:I

    new-array v0, v0, [F

    .line 6350
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v1, v2, :cond_9

    .line 6351
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v3, :cond_3

    .line 6352
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6353
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v6, v4

    .line 6354
    :goto_1
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_2

    move v7, v4

    .line 6355
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 6356
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 6358
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 6359
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 6360
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 6361
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 6362
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 6363
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 6364
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 6365
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 6366
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 6367
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 6368
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 6370
    :cond_0
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    invoke-virtual {v7, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6371
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6372
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6373
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    invoke-virtual {v7, v0, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v7, v4

    .line 6374
    :goto_3
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_1

    .line 6375
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 6377
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 6378
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 6379
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 6380
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 6381
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 6382
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 6383
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 6384
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 6385
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 6386
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 6387
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_1

    .line 6352
    :cond_2
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 6391
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v3, :cond_6

    .line 6392
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_4
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6393
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v3, v4

    .line 6394
    :goto_5
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 6395
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    mul-int/lit8 v7, v3, 0x2

    .line 6397
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    .line 6398
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v10, v9, v6

    aput v10, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 6399
    aget v10, v9, v10

    aput v10, v0, v7

    add-int/lit8 v7, v6, 0x2

    .line 6400
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x3

    .line 6401
    aget v6, v9, v6

    aput v6, v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 6403
    :cond_4
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    .line 6404
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    invoke-virtual {v3, v0, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v4

    .line 6405
    :goto_6
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 6406
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    mul-int/lit8 v7, v3, 0x2

    .line 6408
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    .line 6409
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v10, v0, v7

    aput v10, v9, v6

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 6410
    aget v7, v0, v7

    aput v7, v9, v10

    add-int/lit8 v7, v6, 0x2

    .line 6411
    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v8, v8, 0x1

    .line 6412
    aget v7, v0, v8

    aput v7, v9, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 6392
    :cond_5
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_4

    .line 6415
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v5, :cond_13

    .line 6416
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6417
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v3, v4

    .line 6418
    :goto_8
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_7

    .line 6419
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    .line 6421
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v8, v7, v5

    aput v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 6422
    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 6424
    :cond_7
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    invoke-virtual {v3, v0, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([FI)V

    move v3, v4

    .line 6425
    :goto_9
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_8

    .line 6426
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    .line 6428
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v8, v0, v6

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6429
    aget v6, v0, v6

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 6416
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_7

    .line 6433
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-le v1, v3, :cond_d

    .line 6434
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6435
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v6, v4

    .line 6436
    :goto_b
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_c

    move v7, v4

    .line 6437
    :goto_c
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_a

    .line 6438
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 6440
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 6441
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 6442
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 6443
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v14, v13, v8

    aput v14, v0, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v14, v8, 0x1

    .line 6444
    aget v14, v13, v14

    aput v14, v0, v9

    add-int/lit8 v9, v8, 0x2

    .line 6445
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v9, v8, 0x3

    .line 6446
    aget v9, v13, v9

    aput v9, v0, v10

    add-int/lit8 v9, v8, 0x4

    .line 6447
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v9, v8, 0x5

    .line 6448
    aget v9, v13, v9

    aput v9, v0, v11

    add-int/lit8 v9, v8, 0x6

    .line 6449
    aget v9, v13, v9

    aput v9, v0, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v8, v8, 0x7

    .line 6450
    aget v8, v13, v8

    aput v8, v0, v12

    add-int/lit8 v7, v7, 0x1

    goto :goto_c

    .line 6452
    :cond_a
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-boolean v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v7, v0, v4, v8}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6453
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6454
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v3

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6455
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x6

    iget-boolean v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v7, v0, v8, v9}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v7, v4

    .line 6456
    :goto_d
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_b

    .line 6457
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v7

    add-int/2addr v8, v2

    add-int/2addr v8, v6

    mul-int/lit8 v9, v7, 0x2

    .line 6459
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v10

    mul-int/2addr v10, v5

    add-int/2addr v10, v9

    .line 6460
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v5

    add-int/2addr v11, v10

    .line 6461
    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v5

    add-int/2addr v12, v11

    .line 6462
    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v14, v0, v9

    aput v14, v13, v8

    add-int/lit8 v14, v8, 0x1

    add-int/lit8 v9, v9, 0x1

    .line 6463
    aget v9, v0, v9

    aput v9, v13, v14

    add-int/lit8 v9, v8, 0x2

    .line 6464
    aget v14, v0, v10

    aput v14, v13, v9

    add-int/lit8 v9, v8, 0x3

    add-int/lit8 v10, v10, 0x1

    .line 6465
    aget v10, v0, v10

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x4

    .line 6466
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x5

    add-int/lit8 v11, v11, 0x1

    .line 6467
    aget v10, v0, v11

    aput v10, v13, v9

    add-int/lit8 v9, v8, 0x6

    .line 6468
    aget v10, v0, v12

    aput v10, v13, v9

    add-int/lit8 v8, v8, 0x7

    add-int/lit8 v12, v12, 0x1

    .line 6469
    aget v9, v0, v12

    aput v9, v13, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v6, v6, 0x8

    goto/16 :goto_b

    .line 6434
    :cond_c
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_a

    .line 6473
    :cond_d
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v3, :cond_10

    .line 6474
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_e
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6475
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v3, v4

    .line 6476
    :goto_f
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_e

    .line 6477
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    mul-int/lit8 v7, v3, 0x2

    .line 6479
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    .line 6480
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v10, v9, v6

    aput v10, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v10, v6, 0x1

    .line 6481
    aget v10, v9, v10

    aput v10, v0, v7

    add-int/lit8 v7, v6, 0x2

    .line 6482
    aget v7, v9, v7

    aput v7, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v6, v6, 0x3

    .line 6483
    aget v6, v9, v6

    aput v6, v0, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 6485
    :cond_e
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-boolean v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v3, v0, v4, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    .line 6486
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v5

    iget-boolean v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v3, v0, v6, v7}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v4

    .line 6487
    :goto_10
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v3, v6, :cond_f

    .line 6488
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v3

    add-int/2addr v6, v2

    mul-int/lit8 v7, v3, 0x2

    .line 6490
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    mul-int/2addr v8, v5

    add-int/2addr v8, v7

    .line 6491
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v10, v0, v7

    aput v10, v9, v6

    add-int/lit8 v10, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 6492
    aget v7, v0, v7

    aput v7, v9, v10

    add-int/lit8 v7, v6, 0x2

    .line 6493
    aget v10, v0, v8

    aput v10, v9, v7

    add-int/lit8 v6, v6, 0x3

    add-int/lit8 v8, v8, 0x1

    .line 6494
    aget v7, v0, v8

    aput v7, v9, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 6474
    :cond_f
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto/16 :goto_e

    .line 6497
    :cond_10
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    if-ne v1, v5, :cond_13

    .line 6498
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$n0:I

    :goto_11
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_13

    .line 6499
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    move v3, v4

    .line 6500
    :goto_12
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_11

    .line 6501
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    .line 6503
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v8, v7, v5

    aput v8, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 6504
    aget v5, v7, v5

    aput v5, v0, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 6506
    :cond_11
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v3

    iget-boolean v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$scale:Z

    invoke-virtual {v3, v0, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FIZ)V

    move v3, v4

    .line 6507
    :goto_13
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    if-ge v3, v5, :cond_12

    .line 6508
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    mul-int/lit8 v6, v3, 0x2

    .line 6510
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$a:[F

    aget v8, v0, v6

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6511
    aget v6, v0, v6

    aput v6, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 6498
    :cond_12
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$57;->val$nthreads:I

    add-int/2addr v1, v2

    goto :goto_11

    :cond_13
    return-void
.end method
