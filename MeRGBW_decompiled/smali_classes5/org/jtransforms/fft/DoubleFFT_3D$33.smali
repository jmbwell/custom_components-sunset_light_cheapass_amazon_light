.class Lorg/jtransforms/fft/DoubleFFT_3D$33;
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

.field final synthetic val$firstSlice:J

.field final synthetic val$lastSlice:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J

.field final synthetic val$twon3:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 0

    .line 2592
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twon3:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$firstSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$lastSlice:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twoSliceStride:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p11, p0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twoRowStride:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v0, p0

    .line 2595
    new-instance v9, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twon3:J

    invoke-direct {v9, v1, v2}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2596
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$firstSlice:J

    move-wide v10, v1

    :goto_0
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$lastSlice:J

    cmp-long v1, v10, v1

    if-ltz v1, :cond_1

    .line 2597
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v1

    mul-long v12, v10, v1

    .line 2598
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twoSliceStride:J

    mul-long v14, v10, v1

    .line 2599
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v1

    const-wide/16 v16, 0x1

    sub-long v1, v1, v16

    move-wide/from16 v18, v1

    :goto_1
    const-wide/16 v1, 0x0

    cmp-long v1, v18, v1

    if-ltz v1, :cond_0

    .line 2600
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long v2, v2, v18

    add-long/2addr v2, v12

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1100(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v7

    const-wide/16 v5, 0x0

    move-object v4, v9

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    .line 2601
    iget-object v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    invoke-virtual {v1, v9}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 2602
    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twoRowStride:J

    mul-long v1, v1, v18

    add-long v5, v14, v1

    iget-wide v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$33;->val$twon3:J

    const-wide/16 v2, 0x0

    move-object v1, v9

    invoke-static/range {v1 .. v8}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    sub-long v18, v18, v16

    goto :goto_1

    :cond_0
    sub-long v10, v10, v16

    goto :goto_0

    :cond_1
    return-void
.end method
