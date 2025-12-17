.class Lorg/jtransforms/fft/FloatFFT_2D$16;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$n2d2:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;III[[F)V
    .locals 0

    .line 1401
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$lastRow:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$n2d2:I

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$a:[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1404
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$lastRow:I

    if-ge v0, v1, :cond_1

    .line 1405
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 1406
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$n2d2:I

    :goto_1
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 1408
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    sub-int/2addr v4, v2

    mul-int/lit8 v4, v4, 0x2

    .line 1409
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$16;->val$a:[[F

    const/4 v6, 0x0

    aget-object v6, v5, v6

    aget v7, v6, v4

    aput v7, v6, v3

    add-int/lit8 v7, v3, 0x1

    add-int/lit8 v8, v4, 0x1

    .line 1410
    aget v9, v6, v8

    neg-float v9, v9

    aput v9, v6, v7

    .line 1411
    aget-object v6, v5, v0

    aget-object v5, v5, v1

    aget v4, v5, v4

    aput v4, v6, v3

    .line 1412
    aget v3, v5, v8

    neg-float v3, v3

    aput v3, v6, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
