.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->log(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V
    .locals 0

    .line 2145
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 2150
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2151
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 2152
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    mul-double/2addr v7, v7

    add-double/2addr v4, v7

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 2153
    aget-wide v7, v2, v6

    aget-wide v9, v2, v3

    invoke-static {v7, v8, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v7

    .line 2154
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    const/4 v2, 0x2

    .line 2155
    new-array v2, v2, [D

    aput-wide v4, v2, v3

    aput-wide v7, v2, v6

    .line 2156
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$29;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v3, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
