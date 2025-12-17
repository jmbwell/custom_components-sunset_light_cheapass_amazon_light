.class Lorg/jtransforms/fft/FloatFFT_1D$2;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->realForwardFull(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J

.field final synthetic val$twon:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$lastIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$offa:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$twon:J

    iput-object p10, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 794
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    .line 796
    iget-wide v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$offa:J

    iget-wide v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$twon:J

    sub-long v8, v6, v2

    rem-long/2addr v8, v6

    add-long/2addr v8, v4

    .line 797
    iget-object v6, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long/2addr v4, v2

    invoke-virtual {v6, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    invoke-virtual {v6, v8, v9, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 798
    iget-object v4, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v5, 0x1

    add-long/2addr v8, v5

    iget-wide v10, p0, Lorg/jtransforms/fft/FloatFFT_1D$2;->val$offa:J

    add-long/2addr v10, v2

    add-long/2addr v10, v5

    invoke-virtual {v4, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v4, v8, v9, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v5

    goto :goto_0

    :cond_0
    return-void
.end method
