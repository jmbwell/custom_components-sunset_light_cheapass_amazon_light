.class Lorg/jtransforms/fft/FloatFFT_1D$7;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex([FII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:[F

.field final synthetic val$ak:[F

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;IIII[F[F)V
    .locals 0

    .line 2016
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$isign:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$firstIdx:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$lastIdx:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$offa:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$a:[F

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 2019
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$isign:I

    if-lez v0, :cond_0

    .line 2020
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2023
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$offa:I

    add-int v4, v3, v1

    add-int/2addr v3, v2

    .line 2025
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$a:[F

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v1

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    aput v6, v5, v4

    .line 2026
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$a:[F

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v2

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v6, v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v1, v6, v1

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v2, v6, v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2029
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$firstIdx:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2032
    iget v3, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$offa:I

    add-int v4, v3, v1

    add-int/2addr v3, v2

    .line 2034
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$a:[F

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v6, v6, v1

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v7, v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v7

    aget v7, v7, v2

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v8, v8, v2

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    aput v6, v5, v4

    .line 2035
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$a:[F

    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v5

    aget v5, v5, v2

    neg-float v5, v5

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v6, v6, v1

    mul-float/2addr v5, v6

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$000(Lorg/jtransforms/fft/FloatFFT_1D;)[F

    move-result-object v6

    aget v1, v6, v1

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$7;->val$ak:[F

    aget v2, v6, v2

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    aput v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
