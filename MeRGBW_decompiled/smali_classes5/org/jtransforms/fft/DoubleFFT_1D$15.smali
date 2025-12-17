.class Lorg/jtransforms/fft/DoubleFFT_1D$15;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$isign:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 2529
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$isign:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$lastIdx:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 2532
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$isign:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    if-lez v1, :cond_0

    .line 2533
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:J

    :goto_0
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$lastIdx:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    mul-long v8, v6, v2

    add-long v10, v8, v4

    .line 2536
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    neg-double v12, v12

    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v16

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    .line 2537
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v14, v2

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v14, v2

    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2538
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v10, v11, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v6, v1

    move-wide v4, v1

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_0
    move-wide v1, v4

    .line 2541
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$firstIdx:J

    :goto_1
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$lastIdx:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const-wide/16 v5, 0x2

    mul-long v7, v3, v5

    add-long v9, v7, v1

    .line 2544
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    mul-double/2addr v1, v11

    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v13

    invoke-virtual {v13, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v1, v11

    .line 2545
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v14, v5

    sub-double/2addr v12, v14

    invoke-virtual {v11, v7, v8, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2546
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D$15;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v5, v9, v10, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    goto :goto_1

    :cond_1
    return-void
.end method
