.class Lorg/jtransforms/fft/FloatFFT_2D$3;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$rowStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 0

    .line 253
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$lastRow:J

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$rowStride:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 256
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$firstRow:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$lastRow:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 257
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$3;->val$rowStride:J

    mul-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
