.class Lorg/jtransforms/fft/FloatFFT_3D$44;
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

.field final synthetic val$n2d2:I

.field final synthetic val$twoRowStride:I

.field final synthetic val$twoSliceStride:I

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIIIII[F)V
    .locals 0

    .line 3052
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twoSliceStride:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$n2d2:I

    iput p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twoRowStride:I

    iput p7, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twon3:I

    iput-object p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 3056
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$lastSlice:I

    if-ge v0, v1, :cond_2

    .line 3057
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    .line 3058
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twoSliceStride:I

    mul-int/2addr v1, v2

    mul-int/2addr v2, v0

    const/4 v3, 0x1

    move v4, v3

    .line 3060
    :goto_1
    iget v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$n2d2:I

    if-ge v4, v5, :cond_1

    .line 3061
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    sub-int/2addr v5, v4

    .line 3062
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twoRowStride:I

    mul-int/2addr v5, v6

    mul-int/2addr v6, v4

    add-int/2addr v5, v1

    const/4 v7, 0x0

    .line 3065
    :goto_2
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v8

    if-ge v7, v8, :cond_0

    mul-int/lit8 v8, v7, 0x2

    .line 3067
    iget v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$twon3:I

    sub-int v10, v9, v8

    add-int v11, v2, v6

    add-int/2addr v11, v8

    .line 3069
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_3D$44;->val$a:[F

    rem-int v12, v10, v9

    add-int/2addr v12, v5

    aget v13, v8, v11

    aput v13, v8, v12

    add-int/2addr v10, v3

    .line 3070
    rem-int/2addr v10, v9

    add-int/2addr v10, v5

    add-int/2addr v11, v3

    aget v9, v8, v11

    neg-float v9, v9

    aput v9, v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
