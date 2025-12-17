.class Lorg/jtransforms/dct/DoubleDCT_3D$6;
.super Ljava/lang/Object;
.source "DoubleDCT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 365
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    iput-wide p2, p0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$lastRow:J

    iput-object p6, p0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p7, p0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 368
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$1200(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 369
    iget-wide v2, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$firstRow:J

    :goto_0
    iget-wide v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$lastRow:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 370
    iget-object v4, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$1000(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 371
    :goto_1
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$1100(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    const-wide/16 v11, 0x1

    if-gez v10, :cond_2

    const-wide/16 v13, 0x0

    .line 372
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$1200(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-gez v10, :cond_0

    .line 373
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$800(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v15

    mul-long/2addr v15, v13

    add-long/2addr v15, v4

    add-long v6, v15, v8

    .line 374
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v13, v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v11

    goto :goto_2

    .line 376
    :cond_0
    iget-object v6, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$700(Lorg/jtransforms/dct/DoubleDCT_3D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$scale:Z

    invoke-virtual {v6, v1, v7}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V

    const-wide/16 v6, 0x0

    .line 377
    :goto_3
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$1200(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-gez v10, :cond_1

    .line 378
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->this$0:Lorg/jtransforms/dct/DoubleDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/DoubleDCT_3D;->access$800(Lorg/jtransforms/dct/DoubleDCT_3D;)J

    move-result-wide v13

    mul-long/2addr v13, v6

    add-long/2addr v13, v4

    add-long/2addr v13, v8

    .line 379
    iget-object v10, v0, Lorg/jtransforms/dct/DoubleDCT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v15, v4

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v10, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v11

    move-wide v4, v15

    goto :goto_3

    :cond_1
    move-wide v15, v4

    add-long/2addr v8, v11

    goto :goto_1

    :cond_2
    add-long/2addr v2, v11

    goto :goto_0

    :cond_3
    return-void
.end method
