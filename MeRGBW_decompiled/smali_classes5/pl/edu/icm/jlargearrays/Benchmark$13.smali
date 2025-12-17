.class final Lpl/edu/icm/jlargearrays/Benchmark$13;
.super Ljava/lang/Object;
.source "Benchmark.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/Benchmark;->benchmarkFloatLargeArrayInANewThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$array:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$length:J


# direct methods
.method constructor <init>(JLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 962
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/Benchmark$13;->val$length:J

    iput-object p3, p0, Lpl/edu/icm/jlargearrays/Benchmark$13;->val$array:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-wide/16 v0, 0x0

    .line 965
    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$13;->val$length:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 966
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$13;->val$array:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 967
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/Benchmark$13;->val$array:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    add-float/2addr v4, v3

    invoke-virtual {v2, v0, v1, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
