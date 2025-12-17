.class Lorg/jtransforms/fft/FloatFFT_1D$18;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward([FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$ak:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;II[F)V
    .locals 0

    .line 2700
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$firstIdx:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$lastIdx:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 2703
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2706
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    aget v3, v3, v1

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_1D;->access$100(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v4

    aget v4, v4, v2

    mul-float/2addr v3, v4

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    aget v4, v4, v2

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_1D;->access$100(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v1

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    .line 2707
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    aget v5, v4, v1

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$100(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    aget v6, v6, v2

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_1D;->access$100(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v2

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    aput v5, v4, v1

    .line 2708
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_1D$18;->val$ak:[F

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
