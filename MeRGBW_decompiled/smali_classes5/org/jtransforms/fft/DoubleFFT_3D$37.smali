.class Lorg/jtransforms/fft/DoubleFFT_3D$37;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 2712
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$lastRow:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$twoRowStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$twoSliceStride:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 2715
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 2717
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$firstRow:J

    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$lastRow:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 2718
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$twoRowStride:J

    mul-long/2addr v6, v2

    const-wide/16 v10, 0x0

    .line 2719
    :goto_1
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_2

    mul-long v15, v10, v4

    const-wide/16 v17, 0x0

    .line 2721
    :goto_2
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v19

    cmp-long v12, v17, v19

    if-gez v12, :cond_0

    mul-long v8, v17, v4

    .line 2723
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$twoSliceStride:J

    mul-long v4, v4, v17

    add-long/2addr v4, v6

    add-long/2addr v4, v15

    .line 2724
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v21, v2

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v13

    .line 2725
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long v17, v17, v13

    move-wide/from16 v2, v21

    const-wide/16 v4, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v21, v2

    .line 2727
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$700(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v2, 0x0

    .line 2728
    :goto_3
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1200(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-wide/16 v4, 0x2

    mul-long v8, v2, v4

    .line 2730
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$twoSliceStride:J

    mul-long/2addr v4, v2

    add-long/2addr v4, v6

    add-long/2addr v4, v15

    .line 2731
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v4, v5, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2732
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v13, 0x1

    add-long/2addr v4, v13

    add-long/2addr v8, v13

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v4, v5, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v2, v13

    goto :goto_3

    :cond_1
    add-long/2addr v10, v13

    move-wide/from16 v2, v21

    const-wide/16 v4, 0x2

    goto :goto_1

    :cond_2
    move-wide/from16 v21, v2

    add-long v2, v21, v13

    const-wide/16 v4, 0x2

    goto/16 :goto_0

    :cond_3
    return-void
.end method
