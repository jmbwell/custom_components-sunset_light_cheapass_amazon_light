.class final Lpl/edu/icm/jlargearrays/Benchmark$4;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJavaArraysDoubleRandom([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$lastIdx:I

.field final synthetic val$randIdx:[I

.field final synthetic val$size:J


# direct methods
.method constructor <init>(II[IJ[D)V
    .locals 0

    .line 353
    iput p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$firstIdx:I

    iput p2, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$lastIdx:I

    iput-object p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$randIdx:[I

    iput-wide p4, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$size:J

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 357
    iget v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$firstIdx:I

    :goto_0
    iget v1, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$lastIdx:I

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$randIdx:[I

    aget v1, v1, v0

    int-to-long v1, v1

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$size:J

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 359
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$4;->val$a:[D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    aput-wide v3, v2, v1

    add-double/2addr v3, v3

    .line 360
    aput-wide v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
