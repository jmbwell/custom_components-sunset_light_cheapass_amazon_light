.class Lorg/jtransforms/dst/DoubleDST_3D$23;
.super Ljava/lang/Object;
.source "DoubleDST_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_3D;->ddxt3db_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:J

.field final synthetic val$ntf:J

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_3D;JIJILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 2078
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    iput-wide p2, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$ntf:J

    iput p4, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$isgn:I

    iput-wide p5, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$n0:J

    iput p7, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$nthreads:I

    iput-object p8, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p9, p0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v0, p0

    .line 2083
    new-instance v1, Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$ntf:J

    invoke-direct {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;-><init>(J)V

    .line 2084
    iget v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$isgn:I

    const/4 v3, -0x1

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    if-ne v2, v3, :cond_6

    .line 2085
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    cmp-long v2, v2, v10

    if-lez v2, :cond_3

    .line 2086
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$n0:J

    :goto_0
    iget-object v14, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v14}, Lorg/jtransforms/dst/DoubleDST_3D;->access$900(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v14

    cmp-long v14, v2, v14

    if-gez v14, :cond_d

    .line 2087
    iget-object v14, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v14}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1000(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v14

    mul-long/2addr v14, v2

    const-wide/16 v16, 0x0

    .line 2088
    :goto_1
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    cmp-long v4, v16, v4

    if-gez v4, :cond_2

    const-wide/16 v4, 0x0

    .line 2089
    :goto_2
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    cmp-long v8, v4, v8

    if-gez v8, :cond_0

    .line 2090
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v4

    add-long/2addr v8, v14

    add-long v8, v8, v16

    .line 2091
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    add-long/2addr v6, v4

    .line 2092
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v4, v5, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2093
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v20, v2

    add-long v2, v8, v12

    invoke-virtual {v10, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2094
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    add-long/2addr v2, v6

    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v18, 0x2

    add-long v12, v8, v18

    invoke-virtual {v10, v12, v13}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v2, v3, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2095
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    mul-long v2, v2, v18

    add-long/2addr v6, v2

    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v10, 0x3

    add-long/2addr v8, v10

    invoke-virtual {v2, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v6, v7, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v4, v2

    move-wide v12, v2

    move-wide/from16 v2, v20

    const-wide/16 v10, 0x2

    goto :goto_2

    :cond_0
    move-wide/from16 v20, v2

    .line 2097
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v1, v4, v5, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2098
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v3

    iget-boolean v5, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2099
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2100
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v3

    const-wide/16 v5, 0x3

    mul-long/2addr v3, v5

    iget-boolean v5, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v3, v4, v5}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 2101
    :goto_3
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 2102
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    add-long/2addr v4, v14

    add-long v4, v4, v16

    .line 2103
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    add-long/2addr v6, v2

    .line 2104
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v4, v5, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2105
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x1

    add-long v12, v4, v9

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v12, v13, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2106
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x2

    add-long v11, v4, v9

    iget-object v13, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v13}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v18

    add-long v9, v6, v18

    invoke-virtual {v1, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v9

    invoke-virtual {v8, v11, v12, v9, v10}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2107
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v9, 0x3

    add-long/2addr v4, v9

    iget-object v9, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v9}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v9

    const-wide/16 v11, 0x2

    mul-long/2addr v9, v11

    add-long/2addr v6, v9

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v8, v4, v5, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_3

    :cond_1
    const-wide/16 v2, 0x4

    add-long v16, v16, v2

    move-wide/from16 v2, v20

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    goto/16 :goto_1

    :cond_2
    move-wide/from16 v20, v2

    .line 2086
    iget v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$nthreads:I

    int-to-long v2, v2

    add-long v2, v20, v2

    const-wide/16 v10, 0x2

    const-wide/16 v12, 0x1

    goto/16 :goto_0

    .line 2111
    :cond_3
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 2112
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$n0:J

    :goto_4
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$900(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    .line 2113
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1000(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 2114
    :goto_5
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_4

    .line 2115
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    .line 2116
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2117
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    add-long/2addr v10, v6

    iget-object v12, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v13

    goto :goto_5

    .line 2119
    :cond_4
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v1, v8, v9, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2120
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v6

    iget-object v7, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v7

    iget-boolean v9, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v6, v1, v7, v8, v9}, Lorg/jtransforms/dst/DoubleDST_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v6, 0x0

    .line 2121
    :goto_6
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_5

    .line 2122
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    .line 2123
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v8, v9, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2124
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x1

    add-long/2addr v8, v11

    iget-object v13, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v13}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v13

    add-long/2addr v13, v6

    invoke-virtual {v1, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v10, v8, v9, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v11

    goto :goto_6

    .line 2112
    :cond_5
    iget v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$nthreads:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto/16 :goto_4

    .line 2128
    :cond_6
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-lez v2, :cond_a

    .line 2129
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$n0:J

    :goto_7
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$900(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    .line 2130
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1000(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 2131
    :goto_8
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_9

    const-wide/16 v8, 0x0

    .line 2132
    :goto_9
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    if-gez v10, :cond_7

    .line 2133
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v8

    add-long/2addr v10, v4

    add-long/2addr v10, v6

    .line 2134
    iget-object v12, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v12}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v12

    add-long/2addr v12, v8

    .line 2135
    iget-object v14, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v14, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v14

    invoke-virtual {v1, v8, v9, v14, v15}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2136
    iget-object v14, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v20, v2

    const-wide/16 v15, 0x1

    add-long v2, v10, v15

    invoke-virtual {v14, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2137
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    add-long/2addr v2, v12

    iget-object v14, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    move-wide/from16 v22, v6

    const-wide/16 v15, 0x2

    add-long v6, v10, v15

    invoke-virtual {v14, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v6

    invoke-virtual {v1, v2, v3, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2138
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    mul-long/2addr v2, v15

    add-long/2addr v12, v2

    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v6, 0x3

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v2

    invoke-virtual {v1, v12, v13, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v2, 0x1

    add-long/2addr v8, v2

    move-wide/from16 v2, v20

    move-wide/from16 v6, v22

    goto :goto_9

    :cond_7
    move-wide/from16 v20, v2

    move-wide/from16 v22, v6

    .line 2140
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-boolean v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    const-wide/16 v6, 0x0

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2141
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    iget-boolean v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2142
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    iget-boolean v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2143
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v2

    iget-object v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    const-wide/16 v8, 0x3

    mul-long/2addr v6, v8

    iget-boolean v3, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v2, v1, v6, v7, v3}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    const-wide/16 v2, 0x0

    .line 2144
    :goto_a
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_8

    .line 2145
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v6

    mul-long/2addr v6, v2

    add-long/2addr v6, v4

    add-long v6, v6, v22

    .line 2146
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    add-long/2addr v8, v2

    .line 2147
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v2, v3}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v6, v7, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2148
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x1

    add-long v13, v6, v11

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2149
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x2

    add-long v13, v6, v11

    iget-object v15, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v15}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v15

    add-long v11, v8, v15

    invoke-virtual {v1, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v11

    invoke-virtual {v10, v13, v14, v11, v12}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2150
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v11, 0x3

    add-long/2addr v6, v11

    iget-object v13, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v13}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v13

    const-wide/16 v15, 0x2

    mul-long/2addr v13, v15

    add-long/2addr v8, v13

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v10, v6, v7, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_a

    :cond_8
    const-wide/16 v2, 0x4

    const-wide/16 v11, 0x3

    add-long v6, v22, v2

    move-wide/from16 v2, v20

    goto/16 :goto_8

    :cond_9
    move-wide/from16 v20, v2

    const-wide/16 v2, 0x4

    const-wide/16 v11, 0x3

    .line 2129
    iget v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$nthreads:I

    int-to-long v4, v4

    add-long v4, v20, v4

    move-wide v2, v4

    goto/16 :goto_7

    .line 2154
    :cond_a
    iget-object v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v2}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1100(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v2

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_d

    .line 2155
    iget-wide v2, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$n0:J

    :goto_b
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$900(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_d

    .line 2156
    iget-object v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v4}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1000(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v6, 0x0

    .line 2157
    :goto_c
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    cmp-long v8, v6, v8

    if-gez v8, :cond_b

    .line 2158
    iget-object v8, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v8}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v8

    mul-long/2addr v8, v6

    add-long/2addr v8, v4

    .line 2159
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v10, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v10

    invoke-virtual {v1, v6, v7, v10, v11}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2160
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    add-long/2addr v10, v6

    iget-object v12, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v13, 0x1

    add-long/2addr v8, v13

    invoke-virtual {v12, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v1, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v13

    goto :goto_c

    .line 2162
    :cond_b
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v1, v8, v9, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 2163
    iget-object v6, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v6}, Lorg/jtransforms/dst/DoubleDST_3D;->access$700(Lorg/jtransforms/dst/DoubleDST_3D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v6

    iget-object v7, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v7}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    iget-boolean v7, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$scale:Z

    invoke-virtual {v6, v1, v10, v11, v7}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    move-wide v6, v8

    .line 2165
    :goto_d
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    cmp-long v10, v6, v10

    if-gez v10, :cond_c

    .line 2166
    iget-object v10, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v10}, Lorg/jtransforms/dst/DoubleDST_3D;->access$800(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v10

    mul-long/2addr v10, v6

    add-long/2addr v10, v4

    .line 2167
    iget-object v12, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v13

    invoke-virtual {v12, v10, v11, v13, v14}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    .line 2168
    iget-object v12, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    iget-object v15, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->this$0:Lorg/jtransforms/dst/DoubleDST_3D;

    invoke-static {v15}, Lorg/jtransforms/dst/DoubleDST_3D;->access$1200(Lorg/jtransforms/dst/DoubleDST_3D;)J

    move-result-wide v15

    add-long v8, v15, v6

    invoke-virtual {v1, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->getDouble(J)D

    move-result-wide v8

    invoke-virtual {v12, v10, v11, v8, v9}, Lpl/edu/icm/jlargearrays/DoubleLargeArray;->setDouble(JD)V

    add-long/2addr v6, v13

    const-wide/16 v8, 0x0

    goto :goto_d

    :cond_c
    const-wide/16 v13, 0x1

    .line 2155
    iget v4, v0, Lorg/jtransforms/dst/DoubleDST_3D$23;->val$nthreads:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto/16 :goto_b

    :cond_d
    return-void
.end method
