.class Lorg/jtransforms/fft/DoubleFFT_3D$64;
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

.field final synthetic val$n2d2:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;IIIII[D)V
    .locals 0

    .line 7473
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$twoSliceStride:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$n2d2:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$twoRowStride:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 7476
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 7477
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$twoSliceStride:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x1

    move v4, v3

    .line 7479
    :goto_1
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$n2d2:I

    if-ge v4, v5, :cond_0

    .line 7480
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    sub-int/2addr v5, v4

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$twoRowStride:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v2

    mul-int/2addr v6, v4

    add-int/2addr v6, v1

    .line 7481
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    add-int/2addr v6, v7

    .line 7482
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$400(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v7

    add-int/2addr v7, v5

    add-int/lit8 v8, v5, 0x1

    .line 7484
    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$64;->val$a:[D

    aget-wide v10, v9, v8

    aput-wide v10, v9, v6

    .line 7485
    aget-wide v10, v9, v8

    aput-wide v10, v9, v7

    add-int/2addr v6, v3

    .line 7486
    aget-wide v10, v9, v5

    neg-double v10, v10

    aput-wide v10, v9, v6

    add-int/2addr v7, v3

    .line 7487
    aget-wide v5, v9, v5

    aput-wide v5, v9, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
