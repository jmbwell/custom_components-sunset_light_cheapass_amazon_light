.class final Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;
.super Ljava/lang/Object;
.source "LargeArrayStatistics.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayStatistics;->stdKahan(Lpl/edu/icm/jlargearrays/LargeArray;)D
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

    .line 557
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

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

    .line 557
    invoke-virtual {p0}, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->call()[D

    move-result-object v0

    return-object v0
.end method

.method public call()[D
    .locals 8

    const/4 v0, 0x2

    .line 561
    new-array v0, v0, [D

    .line 562
    iget-wide v1, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$firstIdx:J

    :goto_0
    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$lastIdx:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 563
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayStatistics$8;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    const/4 v5, 0x0

    .line 564
    aget-wide v6, v0, v5

    add-double/2addr v6, v3

    aput-wide v6, v0, v5

    const/4 v5, 0x1

    .line 565
    aget-wide v6, v0, v5

    mul-double/2addr v3, v3

    add-double/2addr v6, v3

    aput-wide v6, v0, v5

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method
