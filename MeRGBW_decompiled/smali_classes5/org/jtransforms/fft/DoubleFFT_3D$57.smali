.class Lorg/jtransforms/fft/DoubleFFT_3D$57;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->cdft3db_subth(I[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[DZ)V
    .locals 0

    .line 6337
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    iput-boolean p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 6342
    iget v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$ntf:I

    new-array v1, v1, [D

    .line 6343
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$isgn:I

    const/4 v3, -0x1

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v2, v3, :cond_9

    .line 6344
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_3

    .line 6345
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_0
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6346
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v7, v5

    .line 6347
    :goto_1
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_2

    move v8, v5

    .line 6348
    :goto_2
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_0

    .line 6349
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 6351
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6352
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6353
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 6354
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 6355
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 6356
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 6357
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 6358
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 6359
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 6360
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 6361
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 6363
    :cond_0
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6364
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6365
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6366
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    invoke-virtual {v8, v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v8, v5

    .line 6367
    :goto_3
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_1

    .line 6368
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 6370
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6371
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6372
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 6373
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 6374
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 6375
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 6376
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 6377
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 6378
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 6379
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 6380
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_1

    .line 6345
    :cond_2
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_0

    .line 6384
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_6

    .line 6385
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_4
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6386
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v5

    .line 6387
    :goto_5
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v4, v7, :cond_4

    .line 6388
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v8, v4, 0x2

    .line 6390
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6391
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v11, v10, v7

    aput-wide v11, v1, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 6392
    aget-wide v11, v10, v11

    aput-wide v11, v1, v8

    add-int/lit8 v8, v7, 0x2

    .line 6393
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 6394
    aget-wide v7, v10, v7

    aput-wide v7, v1, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 6396
    :cond_4
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 6397
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    invoke-virtual {v4, v1, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v4, v5

    .line 6398
    :goto_6
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 6399
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v8, v4, 0x2

    .line 6401
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6402
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v11, v1, v8

    aput-wide v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 6403
    aget-wide v12, v1, v8

    aput-wide v12, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 6404
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 6405
    aget-wide v8, v1, v9

    aput-wide v8, v10, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 6385
    :cond_5
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_4

    .line 6408
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_13

    .line 6409
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_7
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6410
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v5

    .line 6411
    :goto_8
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v4, v6, :cond_7

    .line 6412
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    .line 6414
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v9, v8, v6

    aput-wide v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6415
    aget-wide v9, v8, v6

    aput-wide v9, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 6417
    :cond_7
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    invoke-virtual {v4, v1, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v4, v5

    .line 6418
    :goto_9
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v4, v6, :cond_8

    .line 6419
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    .line 6421
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v9, v1, v7

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 6422
    aget-wide v9, v1, v7

    aput-wide v9, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 6409
    :cond_8
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto :goto_7

    .line 6426
    :cond_9
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-le v2, v4, :cond_d

    .line 6427
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_a
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6428
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v7, v5

    .line 6429
    :goto_b
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_c

    move v8, v5

    .line 6430
    :goto_c
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_a

    .line 6431
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 6433
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6434
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6435
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 6436
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v15, v14, v9

    aput-wide v15, v1, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v15, v9, 0x1

    .line 6437
    aget-wide v15, v14, v15

    aput-wide v15, v1, v10

    add-int/lit8 v10, v9, 0x2

    .line 6438
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v9, 0x3

    .line 6439
    aget-wide v15, v14, v10

    aput-wide v15, v1, v11

    add-int/lit8 v10, v9, 0x4

    .line 6440
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v10, v9, 0x5

    .line 6441
    aget-wide v10, v14, v10

    aput-wide v10, v1, v12

    add-int/lit8 v10, v9, 0x6

    .line 6442
    aget-wide v10, v14, v10

    aput-wide v10, v1, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v9, v9, 0x7

    .line 6443
    aget-wide v9, v14, v9

    aput-wide v9, v1, v13

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 6445
    :cond_a
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-boolean v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v8, v1, v5, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6446
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6447
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v4

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6448
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v8

    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/lit8 v9, v9, 0x6

    iget-boolean v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v8, v1, v9, v10}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v8, v5

    .line 6449
    :goto_d
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    if-ge v8, v9, :cond_b

    .line 6450
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v8

    add-int/2addr v9, v3

    add-int/2addr v9, v7

    mul-int/lit8 v10, v8, 0x2

    .line 6452
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v11

    mul-int/2addr v11, v6

    add-int/2addr v11, v10

    .line 6453
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v12

    mul-int/2addr v12, v6

    add-int/2addr v12, v11

    .line 6454
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v13

    mul-int/2addr v13, v6

    add-int/2addr v13, v12

    .line 6455
    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v15, v1, v10

    aput-wide v15, v14, v9

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v10, v10, 0x1

    .line 6456
    aget-wide v16, v1, v10

    aput-wide v16, v14, v15

    add-int/lit8 v10, v9, 0x2

    .line 6457
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x3

    add-int/lit8 v11, v11, 0x1

    .line 6458
    aget-wide v15, v1, v11

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x4

    .line 6459
    aget-wide v15, v1, v12

    aput-wide v15, v14, v10

    add-int/lit8 v10, v9, 0x5

    add-int/lit8 v12, v12, 0x1

    .line 6460
    aget-wide v11, v1, v12

    aput-wide v11, v14, v10

    add-int/lit8 v10, v9, 0x6

    .line 6461
    aget-wide v11, v1, v13

    aput-wide v11, v14, v10

    add-int/lit8 v9, v9, 0x7

    add-int/lit8 v13, v13, 0x1

    .line 6462
    aget-wide v10, v1, v13

    aput-wide v10, v14, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    :cond_b
    add-int/lit8 v7, v7, 0x8

    goto/16 :goto_b

    .line 6427
    :cond_c
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_a

    .line 6466
    :cond_d
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v4, :cond_10

    .line 6467
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_e
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6468
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v5

    .line 6469
    :goto_f
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v4, v7, :cond_e

    .line 6470
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v8, v4, 0x2

    .line 6472
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6473
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v11, v10, v7

    aput-wide v11, v1, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v7, 0x1

    .line 6474
    aget-wide v11, v10, v11

    aput-wide v11, v1, v8

    add-int/lit8 v8, v7, 0x2

    .line 6475
    aget-wide v11, v10, v8

    aput-wide v11, v1, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x3

    .line 6476
    aget-wide v7, v10, v7

    aput-wide v7, v1, v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 6478
    :cond_e
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-boolean v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v4, v1, v5, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 6479
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v6

    iget-boolean v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v4, v1, v7, v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v4, v5

    .line 6480
    :goto_10
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v4, v7, :cond_f

    .line 6481
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    mul-int/2addr v7, v4

    add-int/2addr v7, v3

    mul-int/lit8 v8, v4, 0x2

    .line 6483
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v9

    mul-int/2addr v9, v6

    add-int/2addr v9, v8

    .line 6484
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v11, v1, v8

    aput-wide v11, v10, v7

    add-int/lit8 v11, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 6485
    aget-wide v12, v1, v8

    aput-wide v12, v10, v11

    add-int/lit8 v8, v7, 0x2

    .line 6486
    aget-wide v11, v1, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x3

    add-int/lit8 v9, v9, 0x1

    .line 6487
    aget-wide v8, v1, v9

    aput-wide v8, v10, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 6467
    :cond_f
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto/16 :goto_e

    .line 6490
    :cond_10
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    if-ne v2, v6, :cond_13

    .line 6491
    iget v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$n0:I

    :goto_11
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_13

    .line 6492
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$200(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v3

    mul-int/2addr v3, v2

    move v4, v5

    .line 6493
    :goto_12
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v4, v6, :cond_11

    .line 6494
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    .line 6496
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v9, v8, v6

    aput-wide v9, v1, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 6497
    aget-wide v9, v8, v6

    aput-wide v9, v1, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 6499
    :cond_11
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-boolean v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$scale:Z

    invoke-virtual {v4, v1, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v4, v5

    .line 6500
    :goto_13
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    if-ge v4, v6, :cond_12

    .line 6501
    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$000(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    mul-int/lit8 v7, v4, 0x2

    .line 6503
    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$a:[D

    aget-wide v9, v1, v7

    aput-wide v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 6504
    aget-wide v9, v1, v7

    aput-wide v9, v8, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 6491
    :cond_12
    iget v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$57;->val$nthreads:I

    add-int/2addr v2, v3

    goto :goto_11

    :cond_13
    return-void
.end method
