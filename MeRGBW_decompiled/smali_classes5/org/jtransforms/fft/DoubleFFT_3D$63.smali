.class Lorg/jtransforms/fft/DoubleFFT_3D$63;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric([D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:[D

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[D)V
    .locals 0

    .line 7440
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twoSliceStride:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twoRowStride:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twon3:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 7443
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$lastSlice:I

    if-ge v0, v1, :cond_2

    .line 7444
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twoSliceStride:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x0

    .line 7446
    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7447
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v3

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    rem-int/2addr v4, v5

    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twoRowStride:I

    mul-int/2addr v4, v5

    mul-int/2addr v5, v3

    const/4 v6, 0x1

    move v7, v6

    .line 7449
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_0

    add-int v8, v1, v4

    .line 7450
    iget v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$twon3:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v7

    add-int v9, v2, v5

    add-int/2addr v9, v7

    .line 7452
    iget-object v10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$63;->val$a:[D

    add-int/lit8 v11, v9, 0x2

    aget-wide v11, v10, v11

    neg-double v11, v11

    aput-wide v11, v10, v8

    sub-int/2addr v8, v6

    add-int/2addr v9, v6

    .line 7453
    aget-wide v11, v10, v9

    aput-wide v11, v10, v8

    add-int/lit8 v7, v7, 0x2

    goto :goto_2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
