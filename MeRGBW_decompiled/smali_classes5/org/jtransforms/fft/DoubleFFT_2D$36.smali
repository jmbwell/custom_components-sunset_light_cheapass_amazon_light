.class Lorg/jtransforms/fft/DoubleFFT_2D$36;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$n2d2:J

.field final synthetic val$rowStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 2451
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$lastRow:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$rowStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$n2d2:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 2454
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$firstRow:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$lastRow:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 2455
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$rowStride:J

    mul-long/2addr v3, v1

    .line 2456
    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$rowStride:J

    mul-long/2addr v5, v9

    .line 2457
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$n2d2:J

    :goto_1
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v11

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    const-wide/16 v11, 0x2

    mul-long v13, v9, v11

    .line 2459
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v15}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v15

    sub-long/2addr v15, v9

    mul-long/2addr v11, v15

    .line 2460
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v15, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v15, v13, v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2461
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v17, v1

    const-wide/16 v15, 0x1

    add-long v1, v13, v15

    add-long/2addr v11, v15

    invoke-virtual {v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    neg-double v11, v11

    invoke-virtual {v7, v1, v2, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v1, v3, v13

    sub-long v7, v5, v13

    .line 2464
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v11, v1, v2, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2465
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_2D$36;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v1, v15

    add-long/2addr v7, v15

    invoke-virtual {v11, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v11, v1, v2, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v15

    move-wide v7, v15

    move-wide/from16 v1, v17

    goto :goto_1

    :cond_0
    move-wide/from16 v17, v1

    move-wide v15, v7

    add-long v1, v17, v15

    goto :goto_0

    :cond_1
    return-void
.end method
