.class Lorg/jtransforms/fft/FloatFFT_1D$19;
.super Ljava/lang/Object;
.source "FloatFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_1D;->bluestein_real_forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 2782
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$lastIdx:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$offa:J

    iput-object p8, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-object p9, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 2785
    iget-wide v0, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 2788
    iget-wide v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$offa:J

    add-long/2addr v8, v0

    .line 2789
    iget-object v10, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v11, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v12, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    mul-float/2addr v11, v12

    invoke-virtual {v10, v2, v3, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 2790
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$ak:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    neg-float v3, v3

    iget-object v8, p0, Lorg/jtransforms/fft/FloatFFT_1D$19;->this$0:Lorg/jtransforms/fft/FloatFFT_1D;

    invoke-static {v8}, Lorg/jtransforms/fft/FloatFFT_1D;->access$200(Lorg/jtransforms/fft/FloatFFT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v3, v8

    invoke-virtual {v2, v6, v7, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method
