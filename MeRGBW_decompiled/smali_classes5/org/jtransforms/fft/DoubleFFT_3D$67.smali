.class Lorg/jtransforms/fft/DoubleFFT_3D$67;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstSlice:J

.field final synthetic val$lastSlice:J

.field final synthetic val$n2d2:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 7701
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$lastSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$twoSliceStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$n2d2:J

    iput-wide p10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$twoRowStride:J

    iput-object p12, p0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    move-object/from16 v0, p0

    .line 7704
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$firstSlice:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$lastSlice:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 7705
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$twoSliceStride:J

    mul-long/2addr v3, v5

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x1

    move-wide v9, v7

    .line 7707
    :goto_1
    iget-wide v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$n2d2:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    .line 7708
    iget-object v11, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v11

    sub-long/2addr v11, v9

    iget-wide v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$twoRowStride:J

    mul-long/2addr v11, v13

    add-long/2addr v11, v5

    mul-long/2addr v13, v9

    add-long/2addr v13, v3

    .line 7709
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v15}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v15

    add-long/2addr v13, v15

    .line 7710
    iget-object v15, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v15}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v15

    move-wide/from16 v17, v3

    add-long v3, v11, v15

    move-wide v15, v5

    add-long v5, v11, v7

    .line 7712
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v19, v1

    invoke-virtual {v7, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v1

    invoke-virtual {v7, v13, v14, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7713
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    invoke-virtual {v1, v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7714
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    neg-double v7, v7

    invoke-virtual {v1, v13, v14, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 7715
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$67;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v3, v5

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    invoke-virtual {v1, v3, v4, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v9, v5

    move-wide v7, v5

    move-wide v5, v15

    move-wide/from16 v3, v17

    move-wide/from16 v1, v19

    goto :goto_1

    :cond_0
    move-wide/from16 v19, v1

    move-wide v5, v7

    add-long v1, v19, v5

    goto :goto_0

    :cond_1
    return-void
.end method
