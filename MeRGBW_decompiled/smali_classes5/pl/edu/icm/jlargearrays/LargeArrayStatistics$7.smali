.class final Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;
.super Ljava/lang/Object;
.source "LargeArrayStatistics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->std(Lpl/edu/icm/jlargearrays/LargeArray;)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "[D>;"
    }
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/LargeArray;)V
    .locals 0

    .line 475
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->call()[D

    move-result-object v0

    return-object v0
.end method

.method public call()[D
    .locals 14

    const/4 v0, 0x2

    .line 479
    new-array v0, v0, [D

    .line 482
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$firstIdx:J

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    iget-wide v7, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$lastIdx:J

    cmp-long v7, v1, v7

    if-gez v7, :cond_0

    .line 483
    iget-object v7, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$7;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v7, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v7

    sub-double v3, v7, v3

    const/4 v9, 0x0

    .line 485
    aget-wide v10, v0, v9

    add-double v12, v10, v3

    sub-double v10, v12, v10

    sub-double v3, v10, v3

    .line 487
    aput-wide v12, v0, v9

    mul-double/2addr v7, v7

    sub-double/2addr v7, v5

    const/4 v5, 0x1

    .line 489
    aget-wide v9, v0, v5

    add-double v11, v9, v7

    sub-double v9, v11, v9

    sub-double v6, v9, v7

    .line 491
    aput-wide v11, v0, v5

    const-wide/16 v8, 0x1

    add-long/2addr v1, v8

    move-wide v5, v6

    goto :goto_0

    :cond_0
    return-object v0
.end method
