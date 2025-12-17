.class final Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy(Lpl/edu/icm/jlargearrays/IntLargeArray;JLpl/edu/icm/jlargearrays/IntLargeArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Lpl/edu/icm/jlargearrays/IntLargeArray;

.field final synthetic val$destPos:J

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$src:Lpl/edu/icm/jlargearrays/IntLargeArray;

.field final synthetic val$srcPos:J


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/IntLargeArray;JLpl/edu/icm/jlargearrays/IntLargeArray;J)V
    .locals 0

    .line 800
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$dest:Lpl/edu/icm/jlargearrays/IntLargeArray;

    iput-wide p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$destPos:J

    iput-object p8, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$src:Lpl/edu/icm/jlargearrays/IntLargeArray;

    iput-wide p9, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$srcPos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 804
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 805
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$dest:Lpl/edu/icm/jlargearrays/IntLargeArray;

    iget-wide v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$destPos:J

    add-long/2addr v3, v0

    iget-object v5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$src:Lpl/edu/icm/jlargearrays/IntLargeArray;

    iget-wide v6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$10;->val$srcPos:J

    add-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Lpl/edu/icm/jlargearrays/IntLargeArray;->getInt(J)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lpl/edu/icm/jlargearrays/IntLargeArray;->setInt(JI)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
