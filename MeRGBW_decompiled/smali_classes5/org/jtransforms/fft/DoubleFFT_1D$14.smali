.class Lorg/jtransforms/fft/DoubleFFT_1D$14;
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
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 2491
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$isign:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$lastIdx:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$offa:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-object p11, p0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 2494
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$isign:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    const-wide/16 v2, 0x2

    const-wide/16 v4, 0x1

    if-lez v1, :cond_0

    .line 2495
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$firstIdx:J

    :goto_0
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$lastIdx:J

    cmp-long v1, v6, v8

    if-gez v1, :cond_1

    mul-long v8, v6, v2

    add-long v10, v8, v4

    .line 2498
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$offa:J

    add-long/2addr v12, v6

    .line 2499
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v14, v2

    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2500
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v2, v8

    invoke-virtual {v1, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v4

    const-wide/16 v2, 0x2

    goto :goto_0

    .line 2503
    :cond_0
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$firstIdx:J

    :goto_1
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$lastIdx:J

    cmp-long v3, v1, v6

    if-gez v3, :cond_1

    const-wide/16 v6, 0x2

    mul-long v8, v1, v6

    add-long v10, v8, v4

    .line 2506
    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$offa:J

    add-long/2addr v12, v1

    .line 2507
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v14, v6

    invoke-virtual {v3, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2508
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v6, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    neg-double v6, v6

    iget-object v8, v0, Lorg/jtransforms/fft/DoubleFFT_1D$14;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v3, v10, v11, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method
