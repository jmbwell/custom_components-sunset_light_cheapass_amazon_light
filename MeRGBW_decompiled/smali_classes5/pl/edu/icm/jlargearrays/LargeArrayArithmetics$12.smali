.class final Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;
.super Ljava/lang/Object;
.source "LargeArrayArithmetics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpl/edu/icm/jlargearrays/LargeArrayArithmetics;->mult(Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArray;Lpl/edu/icm/jlargearrays/LargeArrayType;)Lpl/edu/icm/jlargearrays/LargeArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

.field final synthetic val$_bc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;


# direct methods
.method constructor <init>(JJLpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;)V
    .locals 0

    .line 1172
    iput-wide p1, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$firstIdx:J

    iput-wide p3, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$lastIdx:J

    iput-object p5, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iput-object p6, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$_bc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    iput-object p7, p0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 1177
    iget-wide v1, v0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$firstIdx:J

    :goto_0
    iget-wide v3, v0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$lastIdx:J

    cmp-long v3, v1, v3

    if-gez v3, :cond_0

    .line 1178
    iget-object v3, v0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$_ac:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v3, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v3

    .line 1179
    iget-object v4, v0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$_bc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v4, v1, v2}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->getComplexDouble(J)[D

    move-result-object v4

    const/4 v5, 0x0

    .line 1180
    aget-wide v6, v3, v5

    aget-wide v8, v4, v5

    mul-double v10, v6, v8

    const/4 v12, 0x1

    aget-wide v13, v3, v12

    aget-wide v3, v4, v12

    mul-double v15, v13, v3

    sub-double/2addr v10, v15

    mul-double/2addr v13, v8

    mul-double/2addr v6, v3

    add-double/2addr v13, v6

    const/4 v3, 0x2

    .line 1181
    new-array v3, v3, [D

    aput-wide v10, v3, v5

    aput-wide v13, v3, v12

    .line 1182
    iget-object v4, v0, Lpl/edu/icm/jlargearrays/LargeArrayArithmetics$12;->val$resc:Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;

    invoke-virtual {v4, v1, v2, v3}, Lpl/edu/icm/jlargearrays/ComplexDoubleLargeArray;->setComplexDouble(J[D)V

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-void
.end method
