.class final Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;
.super Ljava/lang/Object;
.source "LargeArrayStatistics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->avgKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D
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
.method constructor <init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V
    .locals 0

    .line 399
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Double;
    .locals 10

    .line 405
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$firstIdx:J

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$lastIdx:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_0

    .line 406
    iget-object v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v6, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v6

    sub-double/2addr v6, v4

    add-double v4, v2, v6

    sub-double v2, v4, v2

    sub-double/2addr v2, v6

    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    move-wide v8, v2

    move-wide v2, v4

    move-wide v4, v8

    goto :goto_0

    .line 411
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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

    .line 399
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$6;->call()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
