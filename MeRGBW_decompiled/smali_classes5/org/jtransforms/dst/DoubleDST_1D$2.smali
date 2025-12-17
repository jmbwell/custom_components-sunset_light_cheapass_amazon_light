.class Lorg/jtransforms/dst/DoubleDST_1D$2;
.super Ljava/lang/Object;
.source "DoubleDST_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_1D;JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->this$0:Lorg/jtransforms/dst/DoubleDST_1D;

    iput-wide p2, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$offa:J

    iput-wide p4, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$lastIdx:J

    iput-object p8, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 200
    iget-wide v0, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$offa:J

    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->this$0:Lorg/jtransforms/dst/DoubleDST_1D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_1D;->access$100(Lorg/jtransforms/dst/DoubleDST_1D;)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 203
    iget-wide v4, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$firstIdx:J

    :goto_0
    iget-wide v6, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$lastIdx:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 204
    iget-wide v6, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$offa:J

    add-long/2addr v6, v4

    .line 205
    iget-object v8, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    sub-long v10, v0, v4

    .line 207
    iget-object v12, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v12, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v6, v7, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 208
    iget-object v6, p0, Lorg/jtransforms/dst/DoubleDST_1D$2;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v6, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v4, v2

    goto :goto_0

    :cond_0
    return-void
.end method
