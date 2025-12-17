.class Lorg/jtransforms/fft/DoubleFFT_1D$28;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 3302
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 3305
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$firstIdx:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$lastIdx:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    const-wide/16 v3, 0x2

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x1

    add-long v7, v3, v5

    .line 3308
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v9, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    neg-double v9, v9

    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v11

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    mul-double/2addr v9, v11

    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v13

    invoke-virtual {v13, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    .line 3309
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v14}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v14

    invoke-virtual {v14, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    mul-double/2addr v12, v14

    iget-object v14, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$300(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    mul-double/2addr v14, v5

    add-double/2addr v12, v14

    invoke-virtual {v11, v3, v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3310
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_1D$28;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v7, v8, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method
