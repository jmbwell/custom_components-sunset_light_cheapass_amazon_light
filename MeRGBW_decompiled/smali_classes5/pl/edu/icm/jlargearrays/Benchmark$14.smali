.class final Lpl/edu/icm/jlargearrays/Benchmark$14;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkByteLargeArrayNativeInANewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$array:Lpl/edu/icm/jlargearrays/ByteLargeArray;

.field final synthetic val$length:J


# direct methods
.method constructor <init>(JLpl/edu/icm/jlargearrays/ByteLargeArray;)V
    .locals 0

    .line 1021
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$14;->val$length:J

    iput-object p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$14;->val$array:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 1024
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$14;->val$length:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1025
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$14;->val$array:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v2, v0, v1, v4}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setToNative(JLjava/lang/Object;)V

    .line 1026
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$14;->val$array:Lpl/edu/icm/jlargearrays/ByteLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->getFromNative(J)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    add-int/2addr v4, v3

    int-to-byte v3, v4

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/ByteLargeArray;->setToNative(JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
