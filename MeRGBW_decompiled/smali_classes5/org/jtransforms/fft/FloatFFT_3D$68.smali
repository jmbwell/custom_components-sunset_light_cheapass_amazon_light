.class Lorg/jtransforms/fft/FloatFFT_3D$68;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->fillSymmetric(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
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

.field final synthetic val$n2d2:J

.field final synthetic val$twoRowStride:J

.field final synthetic val$twoSliceStride:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;JJJJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 7740
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$lastSlice:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$twoSliceStride:J

    iput-wide p8, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$n2d2:J

    iput-wide p10, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$twoRowStride:J

    iput-object p12, p0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 7743
    iget-wide v1, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$firstSlice:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$lastSlice:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_1

    .line 7744
    iget-object v3, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v3}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v5}, Lorg/jtransforms/fft/FloatFFT_3D;->access$1200(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    iget-wide v5, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$twoSliceStride:J

    mul-long/2addr v3, v5

    mul-long/2addr v5, v1

    const-wide/16 v9, 0x1

    .line 7746
    :goto_1
    iget-wide v11, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$n2d2:J

    cmp-long v11, v9, v11

    if-gez v11, :cond_0

    .line 7747
    iget-object v11, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v11}, Lorg/jtransforms/fft/FloatFFT_3D;->access$900(Lorg/jtransforms/fft/FloatFFT_3D;)J

    move-result-wide v11

    sub-long/2addr v11, v9

    iget-wide v13, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$twoRowStride:J

    mul-long/2addr v11, v13

    add-long/2addr v11, v3

    mul-long/2addr v13, v9

    add-long/2addr v13, v5

    .line 7749
    iget-object v15, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v15, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    invoke-virtual {v15, v11, v12, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 7750
    iget-object v7, v0, Lorg/jtransforms/fft/FloatFFT_3D$68;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v15, 0x1

    add-long/2addr v11, v15

    add-long/2addr v13, v15

    invoke-virtual {v7, v13, v14}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    neg-float v8, v8

    invoke-virtual {v7, v11, v12, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v9, v15

    goto :goto_1

    :cond_0
    const-wide/16 v15, 0x1

    add-long/2addr v1, v15

    goto :goto_0

    :cond_1
    return-void
.end method
