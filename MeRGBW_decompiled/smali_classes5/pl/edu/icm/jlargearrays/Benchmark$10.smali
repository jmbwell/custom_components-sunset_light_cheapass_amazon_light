.class final Lpl/edu/icm/jlargearrays/Benchmark$10;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkJLargeArraysByteRandom([J[IILjava/lang/String;)[[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$randIdx:[I

.field final synthetic val$size:I


# direct methods
.method constructor <init>(JJ[IILpl/edu/icm/jlargearrays/ByteLargeArray;)V
    .locals 0

    .line 712
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$randIdx:[I

    iput p6, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$size:I

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 716
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 717
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$randIdx:[I

    long-to-int v3, v0

    aget v2, v2, v3

    iget v3, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$size:I

    rem-int/2addr v2, v3

    int-to-long v2, v2

    .line 718
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    .line 719
    iget-object v4, p0, Lpl/edu/icm/jlargearrays/Benchmark$10;->val$a:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-virtual {v4, v2, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getByte(J)B

    move-result v6

    add-int/2addr v6, v5

    int-to-byte v5, v6

    invoke-virtual {v4, v2, v3, v5}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setByte(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
