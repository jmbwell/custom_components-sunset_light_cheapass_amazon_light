.class Lorg/jtransforms/fft/DoubleFFT_1D$16;
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

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$isign:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 2567
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$isign:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$lastIdx:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$offa:J

    iput-object p11, p0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 2570
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$isign:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    if-lez v1, :cond_0

    .line 2571
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:J

    :goto_0
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$lastIdx:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    mul-long v8, v6, v2

    add-long v10, v8, v4

    .line 2574
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$offa:J

    add-long/2addr v12, v8

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v14, v2

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v14, v2

    invoke-virtual {v1, v12, v13, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2575
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$offa:J

    add-long/2addr v2, v10

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v4

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    mul-double/2addr v4, v12

    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    invoke-virtual {v1, v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v6, v1

    move-wide v4, v1

    const-wide/16 v2, 0x2

    goto :goto_0

    :cond_0
    move-wide v1, v4

    .line 2578
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$firstIdx:J

    :goto_1
    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$lastIdx:J

    cmp-long v5, v3, v5

    if-gez v5, :cond_1

    const-wide/16 v5, 0x2

    mul-long v7, v3, v5

    add-long v9, v7, v1

    .line 2581
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$offa:J

    add-long/2addr v11, v7

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v15

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v17

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2582
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$offa:J

    add-long/2addr v11, v9

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    neg-double v13, v13

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v15

    mul-double/2addr v13, v15

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$16;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double/2addr v13, v7

    invoke-virtual {v1, v11, v12, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v1, 0x1

    add-long/2addr v3, v1

    goto :goto_1

    :cond_1
    return-void
.end method
