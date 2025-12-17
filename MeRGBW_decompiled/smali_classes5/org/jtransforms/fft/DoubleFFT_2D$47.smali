.class Lorg/jtransforms/fft/DoubleFFT_2D$47;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->fillSymmetric(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$l1offa:J

.field final synthetic val$l1stopa:J

.field final synthetic val$l2offa:J

.field final synthetic val$l2stopa:J

.field final synthetic val$newn2:J


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JJ)V
    .locals 0

    .line 4030
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1offa:J

    iput-wide p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1stopa:J

    iput-wide p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    iput-object p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l2offa:J

    iput-wide p11, p0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l2stopa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 16

    move-object/from16 v0, p0

    .line 4035
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1offa:J

    :goto_0
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1stopa:J

    cmp-long v3, v1, v3

    const-wide/16 v4, 0x1

    if-gez v3, :cond_0

    .line 4036
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    mul-long/2addr v6, v1

    .line 4037
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v8

    sub-long/2addr v8, v1

    iget-wide v10, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    mul-long/2addr v8, v10

    .line 4038
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    add-long/2addr v6, v10

    .line 4039
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v8, v4

    invoke-virtual {v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v3, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4040
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long/2addr v6, v4

    invoke-virtual {v3, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    neg-double v8, v8

    invoke-virtual {v3, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v1, v4

    goto :goto_0

    .line 4042
    :cond_0
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1offa:J

    :goto_1
    iget-wide v6, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l1stopa:J

    cmp-long v3, v1, v6

    const-wide/16 v6, 0x2

    if-gez v3, :cond_2

    .line 4043
    iget-wide v8, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    mul-long/2addr v8, v1

    .line 4044
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v10

    sub-long/2addr v10, v1

    add-long/2addr v10, v4

    iget-wide v12, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    mul-long/2addr v10, v12

    .line 4045
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v12

    :goto_2
    add-long/2addr v12, v6

    iget-wide v14, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    cmp-long v3, v12, v14

    if-gez v3, :cond_1

    sub-long v14, v10, v12

    add-long v6, v8, v12

    .line 4048
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v3, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v3, v6, v7, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4049
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v4, 0x1

    add-long/2addr v6, v4

    add-long/2addr v14, v4

    invoke-virtual {v3, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    neg-double v14, v14

    invoke-virtual {v3, v6, v7, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x2

    goto :goto_2

    :cond_1
    add-long/2addr v1, v4

    goto :goto_1

    .line 4053
    :cond_2
    iget-wide v1, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l2offa:J

    :goto_3
    iget-wide v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$l2stopa:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_4

    .line 4054
    iget-object v3, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v3

    sub-long/2addr v3, v1

    iget-object v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v5}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v5

    rem-long/2addr v3, v5

    iget-wide v5, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    mul-long/2addr v3, v5

    mul-long/2addr v5, v1

    const-wide/16 v7, 0x0

    .line 4056
    :goto_4
    iget-wide v9, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$newn2:J

    cmp-long v11, v7, v9

    if-gez v11, :cond_3

    sub-long v11, v9, v7

    .line 4057
    rem-long/2addr v11, v9

    add-long/2addr v11, v3

    add-long v9, v5, v7

    .line 4059
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v13, v11, v12, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 4060
    iget-object v13, v0, Lorg/jtransforms/fft/DoubleFFT_2D$47;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v14, 0x1

    add-long/2addr v11, v14

    add-long/2addr v9, v14

    invoke-virtual {v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    neg-double v9, v9

    invoke-virtual {v13, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    goto :goto_4

    :cond_3
    const-wide/16 v9, 0x2

    const-wide/16 v14, 0x1

    add-long/2addr v1, v14

    goto :goto_3

    :cond_4
    return-void
.end method
