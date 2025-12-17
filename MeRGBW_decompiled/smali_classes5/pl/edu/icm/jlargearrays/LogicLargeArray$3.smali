.class Lpl/edu/icm/jlargearrays/LogicLargeArray$3;
.super Ljava/lang/Object;
.source "LogicLargeArray.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LogicLargeArray;->xor(Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LogicLargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpl/edu/icm/jlargearrays/LogicLargeArray;

.field final synthetic val$array:Lpl/edu/icm/jlargearrays/LogicLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$out:Lpl/edu/icm/jlargearrays/LogicLargeArray;


# direct methods
.method constructor <init>(Lpl/edu/icm/jlargearrays/LogicLargeArray;JJLpl/edu/icm/jlargearrays/LogicLargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)V
    .locals 0

    .line 976
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->this$0:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iput-wide p2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$firstIdx:J

    iput-wide p4, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$lastIdx:J

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$out:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$array:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 980
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 981
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$out:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->this$0:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v3

    iget-object v4, p0, Lpl/edu/icm/jlargearrays/LogicLargeArray$3;->val$array:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->setByte(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
