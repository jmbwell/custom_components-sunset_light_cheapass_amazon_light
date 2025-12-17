.class Lorg/jtransforms/fft/DoubleFFT_3D$65;
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

    .line 7505
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$twoSliceStride:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$n2d2:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$twoRowStride:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 7508
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 7509
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$600(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$twoSliceStride:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x1

    move v4, v3

    .line 7511
    :goto_1
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$n2d2:I

    if-ge v4, v5, :cond_0

    .line 7512
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$100(Lorg/jtransforms/fft/DoubleFFT_3D;)I

    move-result v5

    sub-int/2addr v5, v4

    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$twoRowStride:I

    mul-int/2addr v5, v6

    add-int/2addr v5, v1

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    .line 7514
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_3D$65;->val$a:[D

    aget-wide v8, v7, v6

    aput-wide v8, v7, v5

    add-int/2addr v5, v3

    add-int/2addr v6, v3

    .line 7515
    aget-wide v8, v7, v6

    neg-double v8, v8

    aput-wide v8, v7, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
