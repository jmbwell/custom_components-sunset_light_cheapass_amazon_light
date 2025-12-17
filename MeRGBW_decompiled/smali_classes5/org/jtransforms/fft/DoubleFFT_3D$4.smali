.class Lorg/jtransforms/fft/DoubleFFT_3D$4;
.super Ljava/lang/Object;
.source "DoubleFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_3D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
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


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 374
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$lastSlice:J

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 377
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$firstSlice:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$lastSlice:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 378
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$800(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x0

    .line 379
    :goto_1
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$900(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v6

    cmp-long v6, v4, v6

    const-wide/16 v7, 0x1

    if-gez v6, :cond_0

    .line 380
    iget-object v6, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v6}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$300(Lorg/jtransforms/fft/DoubleFFT_3D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v6

    iget-object v9, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v10, p0, Lorg/jtransforms/fft/DoubleFFT_3D$4;->this$0:Lorg/jtransforms/fft/DoubleFFT_3D;

    invoke-static {v10}, Lorg/jtransforms/fft/DoubleFFT_3D;->access$1000(Lorg/jtransforms/fft/DoubleFFT_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v4

    add-long/2addr v10, v2

    invoke-virtual {v6, v9, v10, v11}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    add-long/2addr v4, v7

    goto :goto_1

    :cond_0
    add-long/2addr v0, v7

    goto :goto_0

    :cond_1
    return-void
.end method
