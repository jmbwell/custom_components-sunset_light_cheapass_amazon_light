.class Lorg/jtransforms/fft/DoubleFFT_3D$35;
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

.field final synthetic val$temp2:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J

.field final synthetic val$twon3:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 0

    .line 2647
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$lastSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twoSliceStride:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$temp2:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twon3:J

    iput-object p11, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p12, p0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twoRowStride:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 2650
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$firstSlice:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$lastSlice:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 2651
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twoSliceStride:J

    mul-long/2addr v3, v1

    const-wide/16 v5, 0x0

    .line 2652
    :goto_1
    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_0

    .line 2653
    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$temp2:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v7, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v11

    mul-long/2addr v11, v1

    iget-wide v14, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twon3:J

    mul-long/2addr v11, v14

    mul-long v16, v5, v14

    add-long v11, v11, v16

    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_3D$35;->val$twoRowStride:J

    mul-long/2addr v8, v5

    add-long v7, v3, v8

    move-wide/from16 v16, v14

    move-wide v14, v7

    invoke-static/range {v10 .. v17}, Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    goto :goto_1

    :cond_0
    const-wide/16 v7, 0x1

    add-long/2addr v1, v7

    goto :goto_0

    :cond_1
    return-void
.end method
