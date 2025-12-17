.class Lorg/jtransforms/fft/DoubleFFT_1D$13;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;III[DI[D)V
    .locals 0

    .line 2389
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$isign:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$firstIdx:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$lastIdx:I

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2392
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$isign:I

    if-lez v0, :cond_0

    .line 2393
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2396
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v1

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 2397
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v1

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v10, v1, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2400
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$firstIdx:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2403
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v1

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v10, v5, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v3, v4

    .line 2404
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$a:[D

    iget v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$offa:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    neg-double v5, v6

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v8, v7, v1

    mul-double/2addr v5, v8

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v8, v7, v1

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$13;->val$ak:[D

    aget-wide v10, v1, v2

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    aput-wide v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
