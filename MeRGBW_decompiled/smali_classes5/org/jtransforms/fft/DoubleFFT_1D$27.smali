.class Lorg/jtransforms/fft/DoubleFFT_1D$27;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_1D;->bluestein_real_inverse2(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
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
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 3274
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$lastIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$offa:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-object p9, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 3277
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 3280
    iget-wide v8, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$offa:J

    add-long/2addr v8, v0

    .line 3281
    iget-object v10, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v11, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    iget-object v13, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v13}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    mul-double/2addr v11, v13

    invoke-virtual {v10, v2, v3, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 3282
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$ak:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_1D$27;->this$0:Lorg/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->access$200(Lorg/jtransforms/fft/DoubleFFT_1D;)Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    mul-double/2addr v8, v10

    invoke-virtual {v2, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method
