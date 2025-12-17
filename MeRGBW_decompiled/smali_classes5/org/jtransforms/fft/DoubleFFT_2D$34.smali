.class Lorg/jtransforms/fft/DoubleFFT_2D$34;
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

.field final synthetic val$firstColumn:J

.field final synthetic val$lastColumn:J

.field final synthetic val$scale:Z

.field final synthetic val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$temp_stride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 2377
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$firstColumn:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$lastColumn:J

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp_stride:J

    iput-object p9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p10, p0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 2380
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$firstColumn:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$lastColumn:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const-wide/16 v3, 0x2

    mul-long v5, v1, v3

    const-wide/16 v7, 0x0

    .line 2382
    :goto_1
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v9

    cmp-long v9, v7, v9

    if-gez v9, :cond_0

    mul-long v12, v7, v3

    .line 2384
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v9}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v14

    mul-long/2addr v14, v7

    add-long/2addr v14, v5

    .line 2385
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp_stride:J

    mul-long/2addr v3, v1

    add-long/2addr v3, v12

    iget-object v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v9, v3, v4, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2386
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp_stride:J

    mul-long/2addr v9, v1

    add-long/2addr v9, v12

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v14, v11

    invoke-virtual {v4, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v3, v9, v10, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v7, v11

    const-wide/16 v3, 0x2

    goto :goto_1

    :cond_0
    const-wide/16 v11, 0x1

    .line 2388
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v3

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$temp_stride:J

    mul-long/2addr v5, v1

    iget-boolean v7, v0, Lorg/jtransforms/fft/DoubleFFT_2D$34;->val$scale:Z

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    add-long/2addr v1, v11

    goto :goto_0

    :cond_1
    return-void
.end method
