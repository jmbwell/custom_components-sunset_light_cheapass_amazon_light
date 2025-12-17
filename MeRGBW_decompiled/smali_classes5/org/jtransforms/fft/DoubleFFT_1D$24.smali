.class Lorg/jtransforms/fft/DoubleFFT_1D$24;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 3111
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$offa:J

    iput-object p9, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .line 3114
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 3117
    iget-object v8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v9, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$offa:J

    add-long/2addr v9, v0

    iget-object v11, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    iget-object v13, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    mul-double/2addr v11, v2

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    iget-object v13, p0, Lorg/jtransforms/fft/DoubleFFT_1D$24;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v13, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    mul-double/2addr v2, v6

    sub-double/2addr v11, v2

    invoke-virtual {v8, v9, v10, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method
