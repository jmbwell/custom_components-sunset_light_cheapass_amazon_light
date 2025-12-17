.class Lorg/jtransforms/fft/DoubleFFT_2D$8;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->complexInverse([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[D

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$rowspan:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;III[DZ)V
    .locals 0

    .line 502
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$lastColumn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$rowspan:I

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$a:[D

    iput-boolean p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 505
    iget-object v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v0}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    .line 506
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$firstColumn:I

    :goto_0
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$lastColumn:I

    if-ge v1, v2, :cond_2

    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x0

    move v4, v3

    .line 508
    :goto_1
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v5

    if-ge v4, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    .line 510
    iget v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$rowspan:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    .line 511
    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$a:[D

    aget-wide v8, v7, v6

    aput-wide v8, v0, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    .line 512
    aget-wide v6, v7, v6

    aput-wide v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 514
    :cond_0
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v4

    iget-boolean v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$scale:Z

    invoke-virtual {v4, v0, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    .line 515
    :goto_2
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v4

    if-ge v3, v4, :cond_1

    mul-int/lit8 v4, v3, 0x2

    .line 517
    iget v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$rowspan:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v2

    .line 518
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$8;->val$a:[D

    aget-wide v7, v0, v4

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    .line 519
    aget-wide v7, v0, v4

    aput-wide v7, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
