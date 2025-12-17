.class Lorg/jtransforms/fft/DoubleFFT_1D$7;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_complex([DII)V
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
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V
    .locals 0

    .line 2013
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$isign:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$offa:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$a:[D

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2016
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$isign:I

    if-lez v0, :cond_0

    .line 2017
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2020
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$offa:I

    add-int v4, v3, v1

    add-int/2addr v3, v2

    .line 2022
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$a:[D

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v7, v6, v1

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v9, v6, v1

    mul-double/2addr v7, v9

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v9, v6, v2

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v11, v6, v2

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    aput-wide v7, v5, v4

    .line 2023
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$a:[D

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v8, v5, v1

    mul-double/2addr v6, v8

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v8, v5, v1

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v10, v1, v2

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2026
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$firstIdx:I

    :goto_1
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$lastIdx:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v1, 0x1

    .line 2029
    iget v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$offa:I

    add-int v4, v3, v1

    add-int/2addr v3, v2

    .line 2031
    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$a:[D

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v7, v6, v1

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v9, v6, v1

    mul-double/2addr v7, v9

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v6

    aget-wide v9, v6, v2

    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v11, v6, v2

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    aput-wide v7, v5, v4

    .line 2032
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$a:[D

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v5

    aget-wide v6, v5, v2

    neg-double v5, v6

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v8, v7, v1

    mul-double/2addr v5, v8

    iget-object v7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$000(Lorg/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v7

    aget-wide v8, v7, v1

    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$7;->val$ak:[D

    aget-wide v10, v1, v2

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    aput-wide v5, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
