.class final Lorg/jtransforms/utils/CommonUtils$8;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->cftrec4_th(JLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$mf:J

.field final synthetic val$n:J

.field final synthetic val$nw:J

.field final synthetic val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;


# direct methods
.method constructor <init>(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;J)V
    .locals 0

    .line 9034
    iput-wide p1, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$firstIdx:J

    iput-wide p3, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$mf:J

    iput-wide p5, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$n:J

    iput-object p7, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-object p8, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/utils/CommonUtils$8;->val$nw:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 9038
    iget-wide v1, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$firstIdx:J

    iget-wide v3, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$mf:J

    add-long/2addr v1, v3

    .line 9040
    iget-wide v3, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$n:J

    const-wide/16 v5, 0x1

    move-wide/from16 v17, v5

    :goto_0
    const-wide/16 v7, 0x200

    cmp-long v7, v3, v7

    if-lez v7, :cond_0

    const/4 v7, 0x2

    shr-long/2addr v3, v7

    shl-long v17, v17, v7

    .line 9044
    iget-object v10, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v11, v1, v3

    iget-object v13, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v7, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$nw:J

    sub-long v14, v7, v3

    move-wide v8, v3

    invoke-static/range {v8 .. v15}, Lorg/jtransforms/utils/CommonUtils;->cftmdl2(JLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;J)V

    goto :goto_0

    .line 9046
    :cond_0
    iget-object v11, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    sub-long v12, v1, v3

    iget-wide v14, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$nw:J

    iget-object v1, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v9, 0x0

    move-wide v7, v3

    move-object/from16 v16, v1

    invoke-static/range {v7 .. v16}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    const/4 v1, 0x1

    shr-long v1, v17, v1

    .line 9048
    iget-wide v7, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$firstIdx:J

    sub-long v19, v7, v3

    .line 9049
    iget-wide v7, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$mf:J

    sub-long/2addr v7, v3

    move-wide/from16 v21, v7

    :goto_1
    const-wide/16 v7, 0x0

    cmp-long v7, v21, v7

    if-lez v7, :cond_1

    add-long/2addr v1, v5

    .line 9051
    iget-object v13, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v14, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$firstIdx:J

    iget-wide v11, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$nw:J

    iget-object v9, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-wide v7, v3

    move-object/from16 v18, v9

    move-wide/from16 v9, v21

    move-wide/from16 v16, v11

    move-wide v11, v1

    invoke-static/range {v7 .. v18}, Lorg/jtransforms/utils/CommonUtils;->cfttree(JJJLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)J

    move-result-wide v9

    .line 9052
    iget-object v11, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    add-long v12, v19, v21

    iget-wide v14, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$nw:J

    iget-object v7, v0, Lorg/jtransforms/utils/CommonUtils$8;->val$w:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-object/from16 v16, v7

    move-wide v7, v3

    invoke-static/range {v7 .. v16}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(JJLpl/edu/icm/jlargearrays/FloatLargeArray;JJLpl/edu/icm/jlargearrays/FloatLargeArray;)V

    sub-long v21, v21, v3

    goto :goto_1

    :cond_1
    return-void
.end method
