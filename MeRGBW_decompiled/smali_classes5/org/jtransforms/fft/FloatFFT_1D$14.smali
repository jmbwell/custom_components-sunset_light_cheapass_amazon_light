.class Lorg/jtransforms/fft/FloatFFT_1D$14;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/FloatLargeArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$isign:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2494
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$isign:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$lastIdx:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$offa:J

    iput-object p10, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-object p11, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 2497
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$isign:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x2

    const-wide/16 v3, 0x1

    if-lez v0, :cond_0

    .line 2498
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$firstIdx:J

    :goto_0
    iget-wide v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$lastIdx:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    mul-long v7, v5, v1

    add-long v9, v7, v3

    .line 2501
    iget-wide v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$offa:J

    add-long/2addr v11, v5

    .line 2502
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v14, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v0, v7, v8, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2503
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v0, v9, v10, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v3

    goto :goto_0

    .line 2506
    :cond_0
    iget-wide v5, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$firstIdx:J

    :goto_1
    iget-wide v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$lastIdx:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    mul-long v7, v5, v1

    add-long v9, v7, v3

    .line 2509
    iget-wide v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$offa:J

    add-long/2addr v11, v5

    .line 2510
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v13, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    iget-object v14, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    mul-float/2addr v13, v14

    invoke-virtual {v0, v7, v8, v13}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2511
    iget-object v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v7, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    neg-float v7, v7

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$14;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    invoke-virtual {v0, v9, v10, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v5, v3

    goto :goto_1

    :cond_1
    return-void
.end method
