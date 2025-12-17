.class Lorg/jtransforms/fft/FloatFFT_1D$10;
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

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;IJJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2205
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$isign:I

    iput-wide p3, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$firstIdx:J

    iput-wide p5, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$lastIdx:J

    iput-wide p7, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$offa:J

    iput-object p9, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-object p10, p0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 2208
    iget v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$isign:I

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    if-lez v1, :cond_0

    .line 2209
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$firstIdx:J

    :goto_0
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$lastIdx:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    mul-long v8, v6, v2

    add-long v10, v8, v4

    .line 2212
    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$offa:J

    add-long v14, v12, v8

    add-long/2addr v12, v10

    .line 2214
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v3

    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v1, v14, v15, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2215
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    mul-float/2addr v2, v3

    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v3

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v1, v12, v13, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x1

    add-long/2addr v6, v1

    move-wide v4, v1

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_0
    move-wide v1, v4

    .line 2218
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$firstIdx:J

    :goto_1
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$lastIdx:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const-wide/16 v5, 0x2

    mul-long v7, v3, v5

    add-long v9, v7, v1

    .line 2221
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$offa:J

    add-long v11, v1, v7

    add-long/2addr v1, v9

    .line 2223
    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v15}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v15

    invoke-virtual {v15, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    mul-float/2addr v15, v5

    add-float/2addr v14, v15

    invoke-virtual {v13, v11, v12, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2224
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v6

    invoke-virtual {v6, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    neg-float v6, v6

    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    mul-float/2addr v6, v11

    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_1D$10;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v5, v1, v2, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    goto :goto_1

    :cond_1
    return-void
.end method
