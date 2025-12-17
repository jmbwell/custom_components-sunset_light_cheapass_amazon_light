.class Lorg/jtransforms/fft/FloatFFT_3D$60;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric([[[F)V
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

.field final synthetic val$twon3:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F)V
    .locals 0

    .line 7247
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$twon3:I

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 7250
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$lastSlice:I

    if-ge v0, v1, :cond_2

    .line 7251
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x0

    .line 7252
    :goto_1
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7253
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v3

    sub-int/2addr v3, v2

    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    rem-int/2addr v3, v4

    const/4 v4, 0x1

    move v5, v4

    .line 7254
    :goto_2
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 7255
    iget v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$twon3:I

    sub-int/2addr v6, v5

    .line 7256
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$60;->val$a:[[[F

    aget-object v8, v7, v1

    aget-object v8, v8, v3

    aget-object v7, v7, v0

    aget-object v7, v7, v2

    add-int/lit8 v9, v5, 0x2

    aget v10, v7, v9

    neg-float v10, v10

    aput v10, v8, v6

    sub-int/2addr v6, v4

    add-int/lit8 v5, v5, 0x1

    .line 7257
    aget v5, v7, v5

    aput v5, v8, v6

    move v5, v9

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
