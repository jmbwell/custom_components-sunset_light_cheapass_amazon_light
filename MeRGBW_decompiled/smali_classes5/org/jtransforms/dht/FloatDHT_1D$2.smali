.class Lorg/jtransforms/dht/FloatDHT_1D$2;
.super Ljava/lang/Object;
.source "FloatDHT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->this$0:Lorg/jtransforms/dht/FloatDHT_1D;

    iput-wide p2, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$offa:J

    iput-object p9, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 196
    iget-wide v0, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    const-wide/16 v4, 0x1

    add-long v6, v2, v4

    .line 199
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$offa:J

    add-long/2addr v9, v0

    iget-object v11, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v11

    iget-object v12, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v12, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    sub-float/2addr v11, v12

    invoke-virtual {v8, v9, v10, v11}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 200
    iget-object v8, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v9, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$offa:J

    iget-object v11, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->this$0:Lorg/jtransforms/dht/FloatDHT_1D;

    invoke-static {v11}, Lorg/jtransforms/dht/FloatDHT_1D;->access$100(Lorg/jtransforms/dht/FloatDHT_1D;)J

    move-result-wide v11

    add-long/2addr v9, v11

    sub-long/2addr v9, v0

    iget-object v11, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_1D$2;->val$b:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v3, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {v8, v9, v10, v2}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v4

    goto :goto_0

    :cond_0
    return-void
.end method
