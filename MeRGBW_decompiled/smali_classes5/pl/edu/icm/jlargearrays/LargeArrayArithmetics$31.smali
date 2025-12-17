.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->log10(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

.field final synthetic val$scale:D


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;DLpl/edu/icm/jlargearrays/ComplexFloatLargeArray;)V
    .locals 0

    .line 2278
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    iput-wide p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$scale:D

    iput-object p8, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 2283
    iget-wide v0, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 2284
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v0, v1}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->getComplexFloat(J)[F

    move-result-object v2

    const/4 v3, 0x0

    .line 2285
    aget v4, v2, v3

    mul-float/2addr v4, v4

    const/4 v5, 0x1

    aget v6, v2, v5

    mul-float/2addr v6, v6

    add-float/2addr v4, v6

    float-to-double v6, v4

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 2286
    aget v4, v2, v5

    float-to-double v8, v4

    aget v2, v2, v3

    float-to-double v10, v2

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->atan2(DD)D

    move-result-wide v8

    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$scale:D

    div-double/2addr v8, v10

    .line 2287
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v6

    iget-wide v10, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$scale:D

    div-double/2addr v6, v10

    double-to-float v2, v6

    double-to-float v4, v8

    const/4 v6, 0x2

    .line 2288
    new-array v6, v6, [F

    aput v2, v6, v3

    aput v4, v6, v5

    .line 2289
    iget-object v2, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$31;->val$resc:Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;

    invoke-virtual {v2, v0, v1, v6}, Lpl/edu/icm/jlargearrays/ComplexFloatLargeArray;->setComplexFloat(J[F)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
