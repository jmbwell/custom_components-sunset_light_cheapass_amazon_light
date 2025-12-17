.class Lorg/jtransforms/fft/DoubleFFT_3D$31;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIII[D)V
    .locals 0

    .line 2420
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$lastRow:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$twoRowStride:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$twoSliceStride:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2423
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v0}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    .line 2425
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$firstRow:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$lastRow:I

    if-ge v1, v2, :cond_3

    .line 2426
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$twoRowStride:I

    mul-int/2addr v2, v1

    const/4 v3, 0x0

    move v4, v3

    .line 2427
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x2

    move v6, v3

    .line 2429
    :goto_2
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_0

    mul-int/lit8 v7, v6, 0x2

    .line 2431
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$twoSliceStride:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v2

    add-int/2addr v8, v5

    .line 2432
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$a:[D

    aget-wide v10, v9, v8

    aput-wide v10, v0, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    .line 2433
    aget-wide v8, v9, v8

    aput-wide v8, v0, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 2435
    :cond_0
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v6

    invoke-virtual {v6, v0}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([D)V

    move v6, v3

    .line 2436
    :goto_3
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    if-ge v6, v7, :cond_1

    mul-int/lit8 v7, v6, 0x2

    .line 2438
    iget v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$twoSliceStride:I

    mul-int/2addr v8, v6

    add-int/2addr v8, v2

    add-int/2addr v8, v5

    .line 2439
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$31;->val$a:[D

    aget-wide v10, v0, v7

    aput-wide v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    .line 2440
    aget-wide v10, v0, v7

    aput-wide v10, v9, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
