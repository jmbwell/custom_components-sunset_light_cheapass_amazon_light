.class Lorg/jtransforms/fft/FloatFFT_3D$5;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
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


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 402
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$lastSlice:J

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 405
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 406
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$firstSlice:J

    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$lastSlice:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    .line 407
    iget-object v6, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/FloatFFT_3D;->access$800(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    const-wide/16 v10, 0x0

    .line 408
    :goto_1
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1100(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    if-gez v12, :cond_2

    mul-long v15, v10, v4

    const-wide/16 v17, 0x0

    .line 410
    :goto_2
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v19

    cmp-long v12, v17, v19

    if-gez v12, :cond_0

    add-long v19, v6, v15

    .line 411
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v21

    mul-long v21, v21, v17

    add-long v8, v19, v21

    mul-long v13, v17, v4

    .line 413
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v1, v13, v14, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v19, 0x1

    add-long v13, v13, v19

    .line 414
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v8, v8, v19

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    invoke-virtual {v1, v13, v14, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v17, v17, v19

    goto :goto_2

    .line 416
    :cond_0
    iget-object v8, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_3D;->access$500(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v8, 0x0

    .line 417
    :goto_3
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v12

    cmp-long v12, v8, v12

    if-gez v12, :cond_1

    add-long v12, v6, v15

    .line 418
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v14}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1000(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v17

    mul-long v17, v17, v8

    add-long v12, v12, v17

    move-wide/from16 v17, v6

    mul-long v6, v8, v4

    .line 420
    iget-object v14, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v14, v12, v13, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 421
    iget-object v4, v0, Lorg/jtransforms/fft/FloatFFT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v19, 0x1

    add-long v12, v12, v19

    add-long v6, v6, v19

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v5

    invoke-virtual {v4, v12, v13, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long v8, v8, v19

    move-wide/from16 v6, v17

    const-wide/16 v4, 0x2

    goto :goto_3

    :cond_1
    move-wide/from16 v17, v6

    const-wide/16 v19, 0x1

    add-long v10, v10, v19

    const-wide/16 v4, 0x2

    goto/16 :goto_1

    :cond_2
    const-wide/16 v19, 0x1

    add-long v2, v2, v19

    const-wide/16 v4, 0x2

    goto/16 :goto_0

    :cond_3
    return-void
.end method
