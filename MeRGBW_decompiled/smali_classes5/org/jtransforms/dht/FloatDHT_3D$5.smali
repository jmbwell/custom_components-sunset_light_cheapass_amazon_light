.class Lorg/jtransforms/dht/FloatDHT_3D$5;
.super Ljava/lang/Object;
.source "FloatDHT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_3D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstSlice:J

.field final synthetic val$lastSlice:J


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    iput-wide p2, p0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$firstSlice:J

    iput-wide p4, p0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$lastSlice:J

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 342
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_3D;->access$800(Lorg/jtransforms/dht/FloatDHT_3D;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 343
    iget-wide v2, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$firstSlice:J

    :goto_0
    iget-wide v4, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$lastSlice:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 344
    iget-object v4, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_3D;->access$000(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 345
    :goto_1
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$900(Lorg/jtransforms/dht/FloatDHT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    const-wide/16 v11, 0x1

    if-gez v10, :cond_2

    const-wide/16 v13, 0x0

    .line 346
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$800(Lorg/jtransforms/dht/FloatDHT_3D;)J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-gez v10, :cond_0

    .line 347
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v10

    int-to-long v6, v10

    mul-long/2addr v6, v13

    add-long/2addr v6, v4

    add-long/2addr v6, v8

    .line 348
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v13, v14, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v13, v11

    goto :goto_2

    .line 350
    :cond_0
    iget-object v6, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v6}, Lorg/jtransforms/dht/FloatDHT_3D;->access$500(Lorg/jtransforms/dht/FloatDHT_3D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const-wide/16 v6, 0x0

    .line 351
    :goto_3
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$800(Lorg/jtransforms/dht/FloatDHT_3D;)J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-gez v10, :cond_1

    .line 352
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->this$0:Lorg/jtransforms/dht/FloatDHT_3D;

    invoke-static {v10}, Lorg/jtransforms/dht/FloatDHT_3D;->access$200(Lorg/jtransforms/dht/FloatDHT_3D;)I

    move-result v10

    int-to-long v13, v10

    mul-long/2addr v13, v6

    add-long/2addr v13, v4

    add-long/2addr v13, v8

    .line 353
    iget-object v10, v0, Lorg/jtransforms/dht/FloatDHT_3D$5;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v10, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v11

    goto :goto_3

    :cond_1
    add-long/2addr v8, v11

    goto :goto_1

    :cond_2
    add-long/2addr v2, v11

    goto :goto_0

    :cond_3
    return-void
.end method
