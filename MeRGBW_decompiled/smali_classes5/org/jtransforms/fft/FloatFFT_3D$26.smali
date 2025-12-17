.class Lorg/jtransforms/fft/FloatFFT_3D$26;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$n2d2:I

.field final synthetic val$newn3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;IIII[[[F)V
    .locals 0

    .line 2198
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$n2d2:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$newn3:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2202
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$lastSlice:I

    if-ge v0, v1, :cond_2

    .line 2203
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x1

    move v3, v2

    .line 2204
    :goto_1
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$n2d2:I

    if-ge v3, v4, :cond_1

    .line 2205
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v3

    const/4 v5, 0x0

    .line 2206
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_0

    mul-int/lit8 v6, v5, 0x2

    .line 2208
    iget v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$newn3:I

    sub-int v8, v7, v6

    .line 2209
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_3D$26;->val$a:[[[F

    aget-object v10, v9, v1

    aget-object v10, v10, v4

    rem-int v11, v8, v7

    aget-object v9, v9, v0

    aget-object v9, v9, v3

    aget v12, v9, v6

    aput v12, v10, v11

    add-int/2addr v8, v2

    .line 2210
    rem-int/2addr v8, v7

    add-int/2addr v6, v2

    aget v6, v9, v6

    neg-float v6, v6

    aput v6, v10, v8

    add-int/lit8 v5, v5, 0x1

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
