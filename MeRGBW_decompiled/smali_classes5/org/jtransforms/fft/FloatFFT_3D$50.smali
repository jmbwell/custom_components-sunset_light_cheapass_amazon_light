.class Lorg/jtransforms/fft/FloatFFT_3D$50;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstSlice:J

.field final synthetic val$lastSlice:J

.field final synthetic val$n2d2:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J

.field final synthetic val$twon3:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 3346
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$lastSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twoSliceStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$n2d2:J

    iput-wide p10, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twoRowStride:J

    iput-wide p12, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twon3:J

    iput-object p14, p0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    move-object/from16 v0, p0

    .line 3350
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$firstSlice:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$lastSlice:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 3351
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    .line 3352
    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twoSliceStride:J

    mul-long/2addr v3, v5

    mul-long/2addr v5, v1

    const-wide/16 v9, 0x1

    .line 3354
    :goto_1
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$n2d2:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_1

    .line 3355
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v11

    sub-long/2addr v11, v9

    .line 3356
    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twoRowStride:J

    mul-long/2addr v11, v13

    mul-long/2addr v13, v9

    add-long/2addr v11, v3

    const-wide/16 v15, 0x0

    .line 3359
    :goto_2
    iget-object v7, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v7}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v7

    cmp-long v7, v15, v7

    if-gez v7, :cond_0

    const-wide/16 v7, 0x2

    mul-long/2addr v7, v15

    move-wide/from16 v19, v3

    .line 3361
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twon3:J

    sub-long v21, v3, v7

    add-long v23, v5, v13

    add-long v7, v23, v7

    move-wide/from16 v23, v5

    .line 3363
    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    rem-long v3, v21, v3

    add-long/2addr v3, v11

    invoke-virtual {v5, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v5, v3, v4, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 3364
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v4, 0x1

    add-long v21, v21, v4

    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$50;->val$twon3:J

    rem-long v21, v21, v4

    add-long v4, v11, v21

    const-wide/16 v17, 0x1

    add-long v7, v7, v17

    invoke-virtual {v3, v7, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    neg-float v6, v6

    invoke-virtual {v3, v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v15, v15, v17

    move-wide/from16 v3, v19

    move-wide/from16 v5, v23

    goto :goto_2

    :cond_0
    move-wide/from16 v19, v3

    move-wide/from16 v23, v5

    const-wide/16 v17, 0x1

    add-long v9, v9, v17

    goto :goto_1

    :cond_1
    const-wide/16 v17, 0x1

    add-long v1, v1, v17

    goto :goto_0

    :cond_2
    return-void
.end method
