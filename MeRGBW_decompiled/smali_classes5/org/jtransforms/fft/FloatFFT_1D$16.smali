.class Lorg/jtransforms/fft/FloatFFT_1D$16;
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
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2570
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$isign:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$lastIdx:J

    iput-object p8, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$offa:J

    iput-object p11, p0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 2573
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$isign:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    if-lez v1, :cond_0

    .line 2574
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$firstIdx:J

    :goto_0
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$lastIdx:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    mul-long v8, v6, v2

    add-long v10, v8, v4

    .line 2577
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$offa:J

    add-long/2addr v12, v8

    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v15}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v15, v2

    sub-float/2addr v14, v15

    invoke-virtual {v1, v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2578
    iget-object v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$offa:J

    add-long/2addr v2, v10

    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v12, v13

    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v12, v8

    invoke-virtual {v1, v2, v3, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v4

    const-wide/16 v2, 0x2

    goto :goto_0

    .line 2581
    :cond_0
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$firstIdx:J

    :goto_1
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$lastIdx:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_1

    const-wide/16 v6, 0x2

    mul-long v8, v1, v6

    add-long v10, v8, v4

    .line 2584
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v12, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$offa:J

    add-long/2addr v12, v8

    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v14

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    mul-float/2addr v14, v15

    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v15}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v15

    invoke-virtual {v15, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v15, v6

    add-float/2addr v14, v15

    invoke-virtual {v3, v12, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2585
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$offa:J

    add-long/2addr v6, v10

    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    neg-float v12, v12

    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v13

    mul-float/2addr v12, v13

    iget-object v13, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v9

    mul-float/2addr v8, v9

    add-float/2addr v12, v8

    invoke-virtual {v3, v6, v7, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method
