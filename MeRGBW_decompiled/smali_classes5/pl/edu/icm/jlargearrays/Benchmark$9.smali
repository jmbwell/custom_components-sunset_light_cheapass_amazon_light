.class final Lpl/edu/icm/jlargearrays/Benchmark$9;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysDoubleSequentualNative([J[IILjava/lang/String;)[[D
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

    .line 646
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 650
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 651
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v2, v0, v1, v5}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 652
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$9;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getFromNative(J)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr v5, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setToNative(JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
