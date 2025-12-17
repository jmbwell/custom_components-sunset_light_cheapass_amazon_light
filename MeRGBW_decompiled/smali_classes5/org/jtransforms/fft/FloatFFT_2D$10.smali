.class Lorg/jtransforms/fft/FloatFFT_2D$10;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstColumn:J

.field final synthetic val$lastColumn:J

.field final synthetic val$rowspan:J

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 619
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$firstColumn:J

    iput-wide p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$lastColumn:J

    iput-wide p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$rowspan:J

    iput-object p8, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v0, p0

    .line 622
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    const/4 v6, 0x0

    invoke-direct {v1, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 623
    iget-wide v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$firstColumn:J

    :goto_0
    iget-wide v6, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$lastColumn:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    mul-long v6, v2, v4

    const-wide/16 v10, 0x0

    .line 625
    :goto_1
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v12}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v12

    cmp-long v12, v10, v12

    const-wide/16 v13, 0x1

    if-gez v12, :cond_0

    mul-long v8, v10, v4

    .line 627
    iget-wide v4, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$rowspan:J

    mul-long/2addr v4, v10

    add-long/2addr v4, v6

    .line 628
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    move-wide/from16 v16, v2

    float-to-double v2, v12

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v8, v13

    .line 629
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long/2addr v4, v13

    invoke-virtual {v2, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v8, v9, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v10, v13

    move-wide/from16 v2, v16

    const-wide/16 v4, 0x2

    goto :goto_1

    :cond_0
    move-wide/from16 v16, v2

    .line 631
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$200(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$scale:Z

    invoke-virtual {v2, v1, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v8, 0x0

    .line 632
    :goto_2
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_2D;->access$300(Lorg/jtransforms/fft/FloatFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v8, v2

    if-gez v2, :cond_1

    const-wide/16 v2, 0x2

    mul-long v4, v8, v2

    .line 634
    iget-wide v10, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$rowspan:J

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    .line 635
    iget-object v12, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    float-to-double v2, v15

    invoke-virtual {v12, v10, v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    .line 636
    iget-object v2, v0, Lorg/jtransforms/fft/FloatFFT_2D$10;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long/2addr v10, v13

    add-long/2addr v4, v13

    invoke-virtual {v1, v4, v5}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v2, v10, v11, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setDouble(JD)V

    add-long/2addr v8, v13

    goto :goto_2

    :cond_1
    add-long v2, v16, v13

    const-wide/16 v4, 0x2

    goto :goto_0

    :cond_2
    return-void
.end method
