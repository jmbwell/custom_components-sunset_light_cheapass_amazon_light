.class Lorg/jtransforms/fft/DoubleFFT_2D$4;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
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

.field final synthetic val$rowStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 275
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$firstColumn:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$lastColumn:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$rowStride:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 278
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 279
    iget-wide v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$firstColumn:J

    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$lastColumn:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    mul-long v6, v2, v4

    const-wide/16 v10, 0x0

    .line 281
    :goto_1
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_0

    mul-long v8, v10, v4

    .line 283
    iget-wide v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$rowStride:J

    mul-long/2addr v4, v10

    add-long/2addr v4, v6

    .line 284
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v15, v2

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v13

    .line 285
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v10, v13

    move-wide v2, v15

    const-wide/16 v4, 0x2

    goto :goto_1

    :cond_0
    move-wide v15, v2

    .line 287
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    invoke-virtual {v2, v1}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v8, 0x0

    .line 288
    :goto_2
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x2

    mul-long v4, v8, v2

    .line 290
    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$rowStride:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    .line 291
    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 292
    iget-object v2, v0, Lorg/jtransforms/fft/DoubleFFT_2D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v10, v13

    add-long/2addr v4, v13

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v2, v10, v11, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v8, v13

    goto :goto_2

    :cond_1
    add-long v2, v15, v13

    const-wide/16 v4, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
