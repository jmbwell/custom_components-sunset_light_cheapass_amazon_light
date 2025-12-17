.class Lorg/jtransforms/fft/FloatFFT_1D$9;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_complex(Lpl/edu/icm/jlargearrays/FloatLargeArray;JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;IJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2167
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$isign:I

    iput-wide p3, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$firstIdx:J

    iput-wide p5, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$lastIdx:J

    iput-object p7, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 2170
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$isign:I

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x1

    if-lez v0, :cond_0

    .line 2171
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$firstIdx:J

    :goto_0
    iget-wide v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$lastIdx:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    mul-long v7, v5, v1

    add-long v9, v7, v3

    .line 2174
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    neg-float v0, v0

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v0, v11

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v0, v11

    .line 2175
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v12, v13

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v14, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    invoke-virtual {v11, v7, v8, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2176
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v3

    goto :goto_0

    .line 2179
    :cond_0
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$firstIdx:J

    :goto_1
    iget-wide v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$lastIdx:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    mul-long v7, v5, v1

    add-long v9, v7, v3

    .line 2182
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v0, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v0

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v0, v11

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v0, v11

    .line 2183
    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v12, v13

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v14, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    mul-float/2addr v13, v14

    sub-float/2addr v12, v13

    invoke-virtual {v11, v7, v8, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2184
    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$9;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v9, v10, v0}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v3

    goto :goto_1

    :cond_1
    return-void
.end method
