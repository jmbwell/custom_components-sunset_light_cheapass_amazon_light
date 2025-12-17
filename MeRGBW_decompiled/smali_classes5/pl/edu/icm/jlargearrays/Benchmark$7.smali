.class final Lpl/edu/icm/jlargearrays/Benchmark$7;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysByteSequentual_safe([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ByteLargeArray;)V
    .locals 0

    .line 529
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 533
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 534
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte_safe(JB)V

    .line 535
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$7;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte_safe(J)B

    move-result v4

    add-int/2addr v4, v3

    int-to-byte v3, v4

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte_safe(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
