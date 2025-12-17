.class Lorg/jtransforms/fft/DoubleFFT_2D$43;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->cdft2d_subth(I[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$ntf:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[DZ)V
    .locals 0

    .line 3367
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$ntf:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    iput-boolean p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 3371
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$ntf:I

    new-array v0, v0, [D

    .line 3372
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$isgn:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_6

    .line 3373
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_2

    .line 3374
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3375
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 3376
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    .line 3378
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3379
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3380
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    .line 3381
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v10, v9, v4

    aput-wide v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    .line 3382
    aget-wide v10, v9, v10

    aput-wide v10, v0, v5

    add-int/lit8 v5, v4, 0x2

    .line 3383
    aget-wide v10, v9, v5

    aput-wide v10, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v4, 0x3

    .line 3384
    aget-wide v10, v9, v5

    aput-wide v10, v0, v6

    add-int/lit8 v5, v4, 0x4

    .line 3385
    aget-wide v5, v9, v5

    aput-wide v5, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v4, 0x5

    .line 3386
    aget-wide v5, v9, v5

    aput-wide v5, v0, v7

    add-int/lit8 v5, v4, 0x6

    .line 3387
    aget-wide v5, v9, v5

    aput-wide v5, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    .line 3388
    aget-wide v4, v9, v4

    aput-wide v4, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3390
    :cond_0
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3391
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3392
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3393
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    invoke-virtual {v2, v0, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    move v2, v3

    .line 3394
    :goto_2
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 3395
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    .line 3397
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3398
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3399
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    .line 3400
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v10, v0, v5

    aput-wide v10, v9, v4

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 3401
    aget-wide v11, v0, v5

    aput-wide v11, v9, v10

    add-int/lit8 v5, v4, 0x2

    .line 3402
    aget-wide v10, v0, v6

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v6, 0x1

    .line 3403
    aget-wide v10, v0, v6

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x4

    .line 3404
    aget-wide v10, v0, v7

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    .line 3405
    aget-wide v6, v0, v7

    aput-wide v6, v9, v5

    add-int/lit8 v5, v4, 0x6

    .line 3406
    aget-wide v6, v0, v8

    aput-wide v6, v9, v5

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v8, v8, 0x1

    .line 3407
    aget-wide v5, v0, v8

    aput-wide v5, v9, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 3374
    :cond_1
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_0

    .line 3410
    :cond_2
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_4

    move v1, v3

    .line 3411
    :goto_3
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 3412
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/2addr v2, v1

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    mul-int/lit8 v4, v1, 0x2

    .line 3414
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3415
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v7, v6, v2

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 3416
    aget-wide v7, v6, v7

    aput-wide v7, v0, v4

    add-int/lit8 v4, v2, 0x2

    .line 3417
    aget-wide v7, v6, v4

    aput-wide v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    .line 3418
    aget-wide v7, v6, v2

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3420
    :cond_3
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3421
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v0, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3422
    :goto_4
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 3423
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    mul-int/2addr v1, v3

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x2

    .line 3425
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3426
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v6, v0, v2

    aput-wide v6, v5, v1

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3427
    aget-wide v7, v0, v2

    aput-wide v7, v5, v6

    add-int/lit8 v2, v1, 0x2

    .line 3428
    aget-wide v6, v0, v4

    aput-wide v6, v5, v2

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 3429
    aget-wide v6, v0, v4

    aput-wide v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 3431
    :cond_4
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3432
    :goto_5
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 3433
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/2addr v2, v1

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    mul-int/lit8 v4, v1, 0x2

    .line 3435
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v6, v5, v2

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3436
    aget-wide v6, v5, v2

    aput-wide v6, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 3438
    :cond_5
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3439
    :goto_6
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 3440
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    mul-int/2addr v1, v3

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x2

    .line 3442
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3443
    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 3446
    :cond_6
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-le v1, v2, :cond_9

    .line 3447
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v1, v1, 0x8

    :goto_7
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_d

    move v2, v3

    .line 3448
    :goto_8
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 3449
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    .line 3451
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3452
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3453
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    .line 3454
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v10, v9, v4

    aput-wide v10, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v10, v4, 0x1

    .line 3455
    aget-wide v10, v9, v10

    aput-wide v10, v0, v5

    add-int/lit8 v5, v4, 0x2

    .line 3456
    aget-wide v10, v9, v5

    aput-wide v10, v0, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v5, v4, 0x3

    .line 3457
    aget-wide v10, v9, v5

    aput-wide v10, v0, v6

    add-int/lit8 v5, v4, 0x4

    .line 3458
    aget-wide v5, v9, v5

    aput-wide v5, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v5, v4, 0x5

    .line 3459
    aget-wide v5, v9, v5

    aput-wide v5, v0, v7

    add-int/lit8 v5, v4, 0x6

    .line 3460
    aget-wide v5, v9, v5

    aput-wide v5, v0, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v4, v4, 0x7

    .line 3461
    aget-wide v4, v9, v4

    aput-wide v4, v0, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3463
    :cond_7
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v2, v0, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3464
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3465
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3466
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v2, v0, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    move v2, v3

    .line 3467
    :goto_9
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v2, v4, :cond_8

    .line 3468
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    mul-int/lit8 v5, v2, 0x2

    .line 3470
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v5

    .line 3471
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v6

    .line 3472
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v8

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v8, v7

    .line 3473
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v10, v0, v5

    aput-wide v10, v9, v4

    add-int/lit8 v10, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 3474
    aget-wide v11, v0, v5

    aput-wide v11, v9, v10

    add-int/lit8 v5, v4, 0x2

    .line 3475
    aget-wide v10, v0, v6

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x3

    add-int/lit8 v6, v6, 0x1

    .line 3476
    aget-wide v10, v0, v6

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x4

    .line 3477
    aget-wide v10, v0, v7

    aput-wide v10, v9, v5

    add-int/lit8 v5, v4, 0x5

    add-int/lit8 v7, v7, 0x1

    .line 3478
    aget-wide v6, v0, v7

    aput-wide v6, v9, v5

    add-int/lit8 v5, v4, 0x6

    .line 3479
    aget-wide v6, v0, v8

    aput-wide v6, v9, v5

    add-int/lit8 v4, v4, 0x7

    add-int/lit8 v8, v8, 0x1

    .line 3480
    aget-wide v5, v0, v8

    aput-wide v5, v9, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 3447
    :cond_8
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    goto/16 :goto_7

    .line 3483
    :cond_9
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x4

    if-ne v1, v2, :cond_b

    move v1, v3

    .line 3484
    :goto_a
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 3485
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/2addr v2, v1

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    mul-int/lit8 v4, v1, 0x2

    .line 3487
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    .line 3488
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v7, v6, v2

    aput-wide v7, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 3489
    aget-wide v7, v6, v7

    aput-wide v7, v0, v4

    add-int/lit8 v4, v2, 0x2

    .line 3490
    aget-wide v7, v6, v4

    aput-wide v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x3

    .line 3491
    aget-wide v7, v6, v2

    aput-wide v7, v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 3493
    :cond_a
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3494
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v1, v0, v2, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3495
    :goto_b
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 3496
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    mul-int/2addr v1, v3

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x2

    .line 3498
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    .line 3499
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v6, v0, v2

    aput-wide v6, v5, v1

    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3500
    aget-wide v7, v0, v2

    aput-wide v7, v5, v6

    add-int/lit8 v2, v1, 0x2

    .line 3501
    aget-wide v6, v0, v4

    aput-wide v6, v5, v2

    add-int/lit8 v1, v1, 0x3

    add-int/lit8 v4, v4, 0x1

    .line 3502
    aget-wide v6, v0, v4

    aput-wide v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 3504
    :cond_b
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$nthreads:I

    mul-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_d

    move v1, v3

    .line 3505
    :goto_c
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    if-ge v1, v2, :cond_c

    .line 3506
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v2

    mul-int/2addr v2, v1

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    mul-int/lit8 v4, v1, 0x2

    .line 3508
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v6, v5, v2

    aput-wide v6, v0, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3509
    aget-wide v6, v5, v2

    aput-wide v6, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 3511
    :cond_c
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-boolean v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$scale:Z

    invoke-virtual {v1, v0, v3, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3512
    :goto_d
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v3, v1, :cond_d

    .line 3513
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    mul-int/2addr v1, v3

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$n0:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    mul-int/lit8 v2, v3, 0x2

    .line 3515
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$43;->val$a:[D

    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    .line 3516
    aget-wide v5, v0, v2

    aput-wide v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_d
    return-void
.end method
