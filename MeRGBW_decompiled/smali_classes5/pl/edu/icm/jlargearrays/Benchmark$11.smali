.class final Lpl/edu/icm/jlargearrays/Benchmark$11;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysDoubleRandom([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$randIdx:[I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(JJ[IILpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 779
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$randIdx:[I

    iput p6, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$size:I

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 783
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 784
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$randIdx:[I

    long-to-int v3, v0

    aget v2, v2, v3

    iget v3, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$size:I

    rem-int/2addr v2, v3

    int-to-long v2, v2

    .line 785
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v2, v3, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 786
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/Benchmark$11;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v7

    add-double/2addr v7, v5

    invoke-virtual {v4, v2, v3, v7, v8}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
