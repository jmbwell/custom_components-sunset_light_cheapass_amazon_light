.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->signum(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/LargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$res:Lpl/edu/icm/jlargearrays/LargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;)V
    .locals 0

    .line 3732
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$res:Lpl/edu/icm/jlargearrays/LargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3736
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 3737
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$res:Lpl/edu/icm/jlargearrays/LargeArray;

    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$58;->val$a:Lpl/edu/icm/jlargearrays/LargeArray;

    invoke-virtual {v3, v0, v1}, Lpl/edu/icm/jlargearrays/LargeArray;->getDouble(J)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v3

    double-to-int v3, v3

    int-to-byte v3, v3

    invoke-virtual {v2, v0, v1, v3}, Lpl/edu/icm/jlargearrays/LargeArray;->setByte(JB)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
