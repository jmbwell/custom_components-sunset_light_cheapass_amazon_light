.class Lorg/jtransforms/fft/FloatFFT_3D$37;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2719
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$lastRow:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$twoRowStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$twoSliceStride:J

    iput-object p10, p0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 2722
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 2724
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$firstRow:J

    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$lastRow:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 2725
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$twoRowStride:J

    mul-long/2addr v6, v2

    const-wide/16 v10, 0x0

    .line 2726
    :goto_1
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_2

    mul-long v15, v10, v4

    const-wide/16 v17, 0x0

    .line 2728
    :goto_2
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v19

    cmp-long v12, v17, v19

    if-gez v12, :cond_0

    mul-long v8, v17, v4

    .line 2730
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$twoSliceStride:J

    mul-long v4, v4, v17

    add-long/2addr v4, v6

    add-long/2addr v4, v15

    .line 2731
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v1, v8, v9, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v8, v13

    .line 2732
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long/2addr v4, v13

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v1, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v17, v17, v13

    const-wide/16 v4, 0x2

    goto :goto_2

    .line 2734
    :cond_0
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v4}, Lorg/jtransforms/fft/FloatFFT_3D;->access$700(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v4, 0x0

    .line 2735
    :goto_3
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_1

    const-wide/16 v8, 0x2

    mul-long v13, v4, v8

    .line 2737
    iget-wide v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$twoSliceStride:J

    mul-long/2addr v8, v4

    add-long/2addr v8, v6

    add-long/2addr v8, v15

    .line 2738
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide/from16 v21, v6

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v12, v8, v9, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2739
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$37;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v17, 0x1

    add-long v8, v8, v17

    add-long v13, v13, v17

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v6, v8, v9, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v4, v4, v17

    move-wide/from16 v13, v17

    move-wide/from16 v6, v21

    goto :goto_3

    :cond_1
    move-wide/from16 v21, v6

    move-wide/from16 v17, v13

    add-long v10, v10, v17

    const-wide/16 v4, 0x2

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v17, v13

    add-long v2, v2, v17

    const-wide/16 v4, 0x2

    goto/16 :goto_0

    :cond_3
    return-void
.end method
