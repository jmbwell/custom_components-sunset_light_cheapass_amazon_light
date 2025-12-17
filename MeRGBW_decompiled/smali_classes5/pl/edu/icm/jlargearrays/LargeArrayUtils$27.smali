.class final Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayUtils;->select(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LogicLargeArray;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$mask:Lpl/edu/icm/jlargearrays/LogicLargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/LogicLargeArray;)V
    .locals 0

    .line 2552
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$mask:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Long;
    .locals 8

    .line 2557
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$firstIdx:J

    const-wide/16 v2, 0x0

    :goto_0
    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$lastIdx:J

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 2558
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->val$mask:Lpl/edu/icm/jlargearrays/LogicLargeArray;

    invoke-virtual {v4, v0, v1}, Lpl/edu/icm/jlargearrays/LogicLargeArray;->getByte(J)B

    move-result v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x1

    if-ne v4, v5, :cond_0

    add-long/2addr v2, v6

    :cond_0
    add-long/2addr v0, v6

    goto :goto_0

    .line 2560
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2552
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayUtils$27;->call()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
