.class Lorg/jtransforms/fft/FloatFFT_2D$6;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->complexForward([[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F)V
    .locals 0

    .line 387
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$lastColumn:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$a:[[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 390
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v0}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 391
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$firstColumn:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$lastColumn:I

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    move v4, v3

    .line 393
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 395
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$a:[[F

    aget-object v6, v6, v4

    aget v7, v6, v2

    aput v7, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v2, 0x1

    .line 396
    aget v6, v6, v7

    aput v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 398
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 399
    :goto_2
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 401
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$6;->val$a:[[F

    aget-object v5, v5, v3

    aget v6, v0, v4

    aput v6, v5, v2

    add-int/lit8 v6, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 402
    aget v4, v0, v4

    aput v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
