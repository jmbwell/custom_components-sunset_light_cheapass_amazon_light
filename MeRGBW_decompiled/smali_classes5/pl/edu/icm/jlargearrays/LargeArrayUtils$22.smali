.class final Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Lpl/edu/icm/jlargearrays/StringLargeArray;

.field final synthetic val$destPos:J

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$src:Lpl/edu/icm/jlargearrays/StringLargeArray;

.field final synthetic val$srcPos:J


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/StringLargeArray;JLpl/edu/icm/jlargearrays/StringLargeArray;J)V
    .locals 0

    .line 1578
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$dest:Lpl/edu/icm/jlargearrays/StringLargeArray;

    iput-wide p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$destPos:J

    iput-object p8, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$src:Lpl/edu/icm/jlargearrays/StringLargeArray;

    iput-wide p9, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$srcPos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1582
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1583
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$dest:Lpl/edu/icm/jlargearrays/StringLargeArray;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$destPos:J

    add-long/2addr v3, v0

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$src:Lpl/edu/icm/jlargearrays/StringLargeArray;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$22;->val$srcPos:J

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/StringLargeArray;->get(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/StringLargeArray;->set(JLjava/lang/Object;)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
