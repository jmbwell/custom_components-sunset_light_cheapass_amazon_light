.class Lorg/jtransforms/fft/FloatFFT_1D$28;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 3305
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 3308
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 3311
    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    neg-float v8, v8

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v10}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    .line 3312
    iget-object v9, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v10

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v10, v11

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$300(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    invoke-virtual {v9, v2, v3, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3313
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v6, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method
