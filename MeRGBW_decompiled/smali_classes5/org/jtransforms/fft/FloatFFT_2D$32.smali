.class Lorg/jtransforms/fft/FloatFFT_2D$32;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I

.field final synthetic val$rowStride:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[F)V
    .locals 0

    .line 2221
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$lastRow:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$rowStride:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$n2d2:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2224
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$lastRow:I

    if-ge v0, v1, :cond_1

    .line 2225
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$rowStride:I

    mul-int/2addr v1, v0

    .line 2226
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$rowStride:I

    mul-int/2addr v2, v3

    .line 2227
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$n2d2:I

    :goto_1
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v3, 0x2

    .line 2229
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    sub-int/2addr v5, v3

    mul-int/lit8 v5, v5, 0x2

    .line 2230
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$32;->val$a:[F

    aget v7, v6, v5

    aput v7, v6, v4

    add-int/lit8 v7, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    .line 2231
    aget v5, v6, v5

    neg-float v5, v5

    aput v5, v6, v7

    add-int v5, v1, v4

    sub-int v4, v2, v4

    .line 2234
    aget v7, v6, v4

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 2235
    aget v4, v6, v4

    neg-float v4, v4

    aput v4, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
