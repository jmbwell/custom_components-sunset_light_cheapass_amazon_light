.class Lorg/jtransforms/fft/DoubleFFT_2D$23;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$n2d2:J

.field final synthetic val$rowStride:J

.field final synthetic val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$temp_stride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 0

    .line 1807
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$lastRow:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$n2d2:J

    iput-wide p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$rowStride:J

    iput-object p10, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-object p11, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p12, p0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp_stride:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 1810
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$firstRow:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$lastRow:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    const-wide/16 v3, 0x2

    mul-long v5, v1, v3

    const-wide/16 v7, 0x0

    .line 1812
    :goto_1
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$n2d2:J

    cmp-long v9, v7, v9

    const-wide/16 v10, 0x1

    if-gez v9, :cond_0

    mul-long v12, v7, v3

    .line 1814
    iget-wide v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$rowStride:J

    mul-long/2addr v14, v1

    add-long/2addr v14, v12

    .line 1815
    iget-object v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp_stride:J

    mul-long/2addr v3, v7

    add-long/2addr v3, v5

    invoke-virtual {v12, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-virtual {v9, v14, v15, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 1816
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v14, v10

    iget-object v4, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$23;->val$temp_stride:J

    mul-long/2addr v12, v7

    add-long/2addr v12, v5

    add-long/2addr v12, v10

    invoke-virtual {v4, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v12

    invoke-virtual {v3, v14, v15, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v7, v10

    const-wide/16 v3, 0x2

    goto :goto_1

    :cond_0
    add-long/2addr v1, v10

    goto :goto_0

    :cond_1
    return-void
.end method
