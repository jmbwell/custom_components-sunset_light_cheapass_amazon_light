.class Lorg/jtransforms/dht/DoubleDHT_3D$6;
.super Ljava/lang/Object;
.source "DoubleDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/DoubleDHT_3D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$startRow:J

.field final synthetic val$stopRow:J


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/DoubleDHT_3D;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    iput-wide p2, p0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$startRow:J

    iput-wide p4, p0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$stopRow:J

    iput-object p6, p0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v0, p0

    .line 381
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(JZ)V

    .line 382
    iget-wide v2, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$startRow:J

    :goto_0
    iget-wide v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$stopRow:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 383
    iget-object v4, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$200(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 384
    :goto_1
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$900(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    const-wide/16 v11, 0x1

    if-gez v10, :cond_2

    const-wide/16 v13, 0x0

    .line 385
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-gez v10, :cond_0

    .line 386
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v6, v10

    mul-long/2addr v6, v13

    add-long/2addr v6, v4

    add-long/2addr v6, v8

    .line 387
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v13, v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v13, v11

    goto :goto_2

    .line 389
    :cond_0
    iget-object v6, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$700(Lorg/jtransforms/dht/DoubleDHT_3D;)Lorg/jtransforms/dht/DoubleDHT_1D;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jtransforms/dht/DoubleDHT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    const-wide/16 v6, 0x0

    .line 390
    :goto_3
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$1000(Lorg/jtransforms/dht/DoubleDHT_3D;)J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-gez v10, :cond_1

    .line 391
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->this$0:Lorg/jtransforms/dht/DoubleDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/DoubleDHT_3D;->access$000(Lorg/jtransforms/dht/DoubleDHT_3D;)I

    move-result v10

    int-to-long v13, v10

    mul-long/2addr v13, v6

    add-long/2addr v13, v4

    add-long/2addr v13, v8

    .line 392
    iget-object v10, v0, Lorg/jtransforms/dht/DoubleDHT_3D$6;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v17, v4

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v4

    invoke-virtual {v10, v13, v14, v4, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v11

    move-wide/from16 v4, v17

    goto :goto_3

    :cond_1
    move-wide/from16 v17, v4

    add-long/2addr v8, v11

    goto :goto_1

    :cond_2
    add-long/2addr v2, v11

    goto :goto_0

    :cond_3
    return-void
.end method
