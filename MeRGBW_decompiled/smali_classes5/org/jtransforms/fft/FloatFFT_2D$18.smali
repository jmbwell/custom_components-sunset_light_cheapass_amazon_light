.class Lorg/jtransforms/fft/FloatFFT_2D$18;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealForwardFull([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[F

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$temp:[[F


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[F[F)V
    .locals 0

    .line 1529
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$lastColumn:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$temp:[[F

    iput-object p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$a:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1532
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$firstColumn:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$lastColumn:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 1534
    :goto_1
    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 1536
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_2D;->access$400(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v4

    mul-int/2addr v4, v2

    add-int/2addr v4, v1

    .line 1537
    iget-object v5, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$temp:[[F

    aget-object v5, v5, v0

    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$a:[F

    aget v7, v6, v4

    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 1538
    aget v4, v6, v4

    aput v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1540
    :cond_0
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$18;->val$temp:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
