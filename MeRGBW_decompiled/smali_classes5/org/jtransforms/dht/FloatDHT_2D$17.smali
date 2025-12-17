.class Lorg/jtransforms/dht/FloatDHT_2D$17;
.super Ljava/lang/Object;
.source "FloatDHT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dht/FloatDHT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dht/FloatDHT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dht/FloatDHT_2D;IJILpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 998
    iput-object p1, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    iput p2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$isgn:I

    iput-wide p3, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$n0:J

    iput p5, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p7, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1002
    iget v0, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1003
    iget-wide v0, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$n0:J

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$500(Lorg/jtransforms/dht/FloatDHT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1004
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$100(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_2D;->access$400(Lorg/jtransforms/dht/FloatDHT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/jtransforms/dht/FloatDHT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    .line 1003
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 1007
    :cond_0
    iget-wide v0, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$n0:J

    :goto_1
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$500(Lorg/jtransforms/dht/FloatDHT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 1008
    iget-object v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v2}, Lorg/jtransforms/dht/FloatDHT_2D;->access$100(Lorg/jtransforms/dht/FloatDHT_2D;)Lorg/jtransforms/dht/FloatDHT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v4, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->this$0:Lorg/jtransforms/dht/FloatDHT_2D;

    invoke-static {v4}, Lorg/jtransforms/dht/FloatDHT_2D;->access$400(Lorg/jtransforms/dht/FloatDHT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/dht/FloatDHT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    .line 1007
    iget v2, p0, Lorg/jtransforms/dht/FloatDHT_2D$17;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    return-void
.end method
