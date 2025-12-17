.class final Lpl/edu/icm/jlargearrays/Benchmark$8;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysDoubleSequentual([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
    .locals 0

    .line 587
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 591
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 592
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v0, v1, v3, v4}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 593
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$8;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-virtual {v2, v0, v1, v5, v6}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
