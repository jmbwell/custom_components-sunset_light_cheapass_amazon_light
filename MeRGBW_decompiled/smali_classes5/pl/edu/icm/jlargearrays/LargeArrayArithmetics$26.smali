.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->sqrt(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
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

    .line 1965
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 1970
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 1971
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v2

    const/4 v3, 0x0

    .line 1972
    aget-wide v4, v2, v3

    mul-double/2addr v4, v4

    const/4 v6, 0x1

    aget-wide v7, v2, v6

    mul-double/2addr v7, v7

    add-double/2addr v4, v7

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 1973
    aget-wide v7, v2, v3

    add-double/2addr v7, v4

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 1974
    aget-wide v11, v2, v6

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v11

    aget-wide v13, v2, v3

    neg-double v13, v13

    add-double/2addr v13, v4

    div-double/2addr v13, v9

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    mul-double/2addr v11, v4

    const/4 v2, 0x2

    new-array v2, v2, [D

    aput-wide v7, v2, v3

    aput-wide v11, v2, v6

    .line 1975
    iget-object v3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$26;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v3, v0, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
