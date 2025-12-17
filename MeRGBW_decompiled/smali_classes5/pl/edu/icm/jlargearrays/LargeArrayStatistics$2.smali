.class final Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;
.super Ljava/lang/Object;
.source "LargeArrayStatistics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->max(Lpl/edu/icm/jlargearrays/LargeArray;)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(Lpl/edu/icm/jlargearrays/LargeArray;JJ)V
    .locals 0

    .line 147
    iput-object p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    iput-wide p2, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$firstIdx:J

    iput-wide p4, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$lastIdx:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Double;
    .locals 9

    .line 151
    iget-object v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$firstIdx:J

    invoke-virtual {v0, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v0

    .line 152
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$firstIdx:J

    const-wide/16 v4, 0x1

    :cond_0
    :goto_0
    add-long/2addr v2, v4

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$lastIdx:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_1

    .line 153
    iget-object v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v6

    cmpl-double v8, v6, v0

    if-lez v8, :cond_0

    move-wide v0, v6

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    .line 147
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$2;->call()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
