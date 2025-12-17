.class Lorg/jtransforms/fft/FloatFFT_3D$39;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[FZI)V
    .locals 0

    .line 2892
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twon3:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$firstSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$lastSlice:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twoSliceStride:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$a:[F

    iput-boolean p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$scale:Z

    iput p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twoRowStride:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2895
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twon3:I

    new-array v0, v0, [F

    .line 2896
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$firstSlice:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$lastSlice:I

    if-lt v1, v2, :cond_1

    .line 2897
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$000(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    mul-int/2addr v2, v1

    .line 2898
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twoSliceStride:I

    mul-int/2addr v3, v1

    .line 2899
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_1
    if-ltz v4, :cond_0

    .line 2900
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$a:[F

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$200(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v5, v6, v0, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2901
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v5

    iget-boolean v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$scale:Z

    invoke-virtual {v5, v0, v6}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    .line 2902
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$a:[F

    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twoRowStride:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v3

    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$39;->val$twon3:I

    invoke-static {v0, v8, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
