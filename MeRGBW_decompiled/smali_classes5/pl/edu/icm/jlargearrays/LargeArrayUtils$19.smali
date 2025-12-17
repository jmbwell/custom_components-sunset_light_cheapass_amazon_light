.class final Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;
.super Ljava/lang/Object;
.source "LargeArrayUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayUtils;->arraycopy([FILpl/edu/icm/jlargearrays/ComplexFloatLargeArray;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dest:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

.field final synthetic val$destPos:J

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$src:[F

.field final synthetic val$srcPos:I


# direct methods
.method constructor <init>(JJ[FILpl/edu/icm/jlargearrays/ComplexFloatLargeArray;J)V
    .locals 0

    .line 1363
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$src:[F

    iput p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$srcPos:I

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$dest:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iput-wide p8, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$destPos:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1368
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1369
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$src:[F

    iget v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$srcPos:I

    long-to-int v4, v0

    add-int v5, v3, v4

    const/4 v6, 0x2

    mul-int/2addr v5, v6

    aget v5, v2, v5

    add-int/2addr v3, v4

    mul-int/2addr v3, v6

    const/4 v4, 0x1

    add-int/2addr v3, v4

    .line 1370
    aget v2, v2, v3

    new-array v3, v6, [F

    const/4 v6, 0x0

    aput v5, v3, v6

    aput v2, v3, v4

    .line 1371
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$dest:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iget-wide v4, p0, Lpl/edu/icm/jlargearrays/LargeArrayUtils$19;->val$destPos:J

    add-long/2addr v4, v0

    invoke-virtual {v2, v4, v5, v3}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
