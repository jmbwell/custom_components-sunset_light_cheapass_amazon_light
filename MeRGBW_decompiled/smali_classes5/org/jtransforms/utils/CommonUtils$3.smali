.class final Lorg/jtransforms/utils/CommonUtils$3;
.super Ljava/lang/Object;
.source "CommonUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/utils/CommonUtils;->cftrec4_th(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$mf:J

.field final synthetic val$n:J

.field final synthetic val$nw:J

.field final synthetic val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;


# direct methods
.method constructor <init>(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V
    .locals 0

    .line 3814
    iput-wide p1, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$firstIdx:J

    iput-wide p3, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$mf:J

    iput-wide p5, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$n:J

    iput-object p7, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-object p8, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-wide p9, p0, Lorg/jtransforms/utils/CommonUtils$3;->val$nw:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    .line 3818
    iget-wide v1, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$firstIdx:J

    iget-wide v3, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$mf:J

    add-long/2addr v1, v3

    .line 3819
    iget-wide v3, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$n:J

    :goto_0
    const-wide/16 v5, 0x200

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    const/4 v5, 0x2

    shr-long v14, v3, v5

    .line 3822
    iget-object v8, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sub-long v9, v1, v14

    iget-object v11, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v5, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$nw:J

    const/4 v7, 0x3

    shr-long/2addr v3, v7

    sub-long v12, v5, v3

    move-wide v6, v14

    invoke-static/range {v6 .. v13}, Lorg/jtransforms/utils/CommonUtils;->cftmdl1(JLpl/edu/icm/jlargearrays/DoubleLargeArray;JLpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    move-wide v3, v14

    goto :goto_0

    .line 3824
    :cond_0
    iget-object v9, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    sub-long v10, v1, v3

    iget-wide v12, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$nw:J

    iget-object v14, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v7, 0x1

    move-wide v5, v3

    invoke-static/range {v5 .. v14}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    .line 3826
    iget-wide v1, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$firstIdx:J

    sub-long/2addr v1, v3

    .line 3827
    iget-wide v5, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$mf:J

    sub-long/2addr v5, v3

    const-wide/16 v17, 0x0

    move-wide/from16 v19, v5

    move-wide/from16 v5, v17

    :goto_1
    cmp-long v7, v19, v17

    if-lez v7, :cond_1

    const-wide/16 v7, 0x1

    add-long v21, v5, v7

    .line 3829
    iget-object v11, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v12, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$firstIdx:J

    iget-wide v14, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$nw:J

    iget-object v9, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide v5, v3

    move-wide/from16 v7, v19

    move-object/from16 v16, v9

    move-wide/from16 v9, v21

    invoke-static/range {v5 .. v16}, Lorg/jtransforms/utils/CommonUtils;->cfttree(JJJLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)J

    move-result-wide v7

    .line 3830
    iget-object v9, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    add-long v10, v1, v19

    iget-wide v12, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$nw:J

    iget-object v14, v0, Lorg/jtransforms/utils/CommonUtils$3;->val$w:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-static/range {v5 .. v14}, Lorg/jtransforms/utils/CommonUtils;->cftleaf(JJLpl/edu/icm/jlargearrays/DoubleLargeArray;JJLpl/edu/icm/jlargearrays/DoubleLargeArray;)V

    sub-long v19, v19, v3

    move-wide/from16 v5, v21

    goto :goto_1

    :cond_1
    return-void
.end method
