.class Lorg/jtransforms/fft/FloatFFT_3D$61;
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

.field final synthetic val$n2d2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;III[[[F)V
    .locals 0

    .line 7277
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$lastSlice:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$n2d2:I

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 7280
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    .line 7281
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v1

    sub-int/2addr v1, v0

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$600(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    rem-int/2addr v1, v2

    const/4 v2, 0x1

    move v3, v2

    .line 7282
    :goto_1
    iget v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$n2d2:I

    if-ge v3, v4, :cond_0

    .line 7283
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v4

    sub-int/2addr v4, v3

    .line 7284
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    aget-object v5, v5, v1

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    aget v8, v7, v2

    aput v8, v5, v6

    .line 7285
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    aget-object v8, v6, v0

    aget-object v8, v8, v4

    aget v8, v8, v2

    aput v8, v7, v5

    .line 7286
    aget-object v5, v6, v1

    aget-object v5, v5, v3

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    aget-object v7, v7, v0

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aget v9, v7, v8

    neg-float v9, v9

    aput v9, v5, v6

    .line 7287
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$400(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v5

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_3D$61;->val$a:[[[F

    aget-object v6, v6, v0

    aget-object v4, v6, v4

    aget v4, v4, v8

    aput v4, v7, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
