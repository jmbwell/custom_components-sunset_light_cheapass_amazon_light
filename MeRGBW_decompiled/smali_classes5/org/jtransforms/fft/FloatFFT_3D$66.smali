.class Lorg/jtransforms/fft/FloatFFT_3D$66;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
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

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J

.field final synthetic val$twon3:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 7675
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$lastSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twoSliceStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twoRowStride:J

    iput-wide p10, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twon3:J

    iput-object p12, p0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 28

    move-object/from16 v0, p0

    .line 7678
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$firstSlice:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$lastSlice:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 7679
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twoSliceStride:J

    mul-long/2addr v3, v5

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x0

    .line 7681
    :goto_1
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gez v9, :cond_1

    .line 7682
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    sub-long/2addr v12, v7

    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v14

    rem-long/2addr v12, v14

    iget-wide v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twoRowStride:J

    mul-long/2addr v12, v14

    mul-long/2addr v14, v7

    const-wide/16 v16, 0x1

    .line 7684
    :goto_2
    iget-object v9, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v9}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v18

    cmp-long v9, v16, v18

    if-gez v9, :cond_0

    add-long v18, v3, v12

    .line 7685
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$twon3:J

    add-long v18, v18, v10

    sub-long v9, v18, v16

    add-long v18, v5, v14

    add-long v18, v18, v16

    .line 7687
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v22, 0x2

    move-wide/from16 v24, v3

    add-long v3, v18, v22

    invoke-virtual {v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    neg-float v3, v3

    invoke-virtual {v11, v9, v10, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7688
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$66;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v20, 0x1

    sub-long v9, v9, v20

    move-wide/from16 v26, v5

    add-long v4, v18, v20

    invoke-virtual {v3, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v3, v9, v10, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v16, v16, v22

    move-wide/from16 v3, v24

    move-wide/from16 v5, v26

    goto :goto_2

    :cond_0
    move-wide/from16 v24, v3

    move-wide/from16 v26, v5

    const-wide/16 v20, 0x1

    add-long v7, v7, v20

    goto :goto_1

    :cond_1
    const-wide/16 v20, 0x1

    add-long v1, v1, v20

    goto/16 :goto_0

    :cond_2
    return-void
.end method
