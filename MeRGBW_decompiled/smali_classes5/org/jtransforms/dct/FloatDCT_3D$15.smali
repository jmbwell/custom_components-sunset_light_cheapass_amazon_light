.class Lorg/jtransforms/dct/FloatDCT_3D$15;
.super Ljava/lang/Object;
.source "FloatDCT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_3D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_3D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_3D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 815
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    iput-wide p2, p0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$lastRow:J

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p7, p0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 818
    new-instance v1, Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v2, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_3D;->access$1200(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lpl/edu/icm/jlargearrays/FloatLargeArray;-><init>(JZ)V

    .line 819
    iget-wide v2, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$firstRow:J

    :goto_0
    iget-wide v4, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$lastRow:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_3

    .line 820
    iget-object v4, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_3D;->access$1000(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v4

    mul-long/2addr v4, v2

    const-wide/16 v8, 0x0

    .line 821
    :goto_1
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$1100(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v10

    cmp-long v10, v8, v10

    const-wide/16 v11, 0x1

    if-gez v10, :cond_2

    const-wide/16 v13, 0x0

    .line 822
    :goto_2
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$1200(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v15

    cmp-long v10, v13, v15

    if-gez v10, :cond_0

    .line 823
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$800(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v15

    mul-long/2addr v15, v13

    add-long/2addr v15, v4

    add-long v6, v15, v8

    .line 824
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v10, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    invoke-virtual {v1, v13, v14, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v13, v11

    goto :goto_2

    .line 826
    :cond_0
    iget-object v6, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_3D;->access$700(Lorg/jtransforms/dct/FloatDCT_3D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v6

    iget-boolean v7, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$scale:Z

    invoke-virtual {v6, v1, v7}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V

    const-wide/16 v6, 0x0

    .line 827
    :goto_3
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$1200(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v13

    cmp-long v10, v6, v13

    if-gez v10, :cond_1

    .line 828
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->this$0:Lorg/jtransforms/dct/FloatDCT_3D;

    invoke-static {v10}, Lorg/jtransforms/dct/FloatDCT_3D;->access$800(Lorg/jtransforms/dct/FloatDCT_3D;)J

    move-result-wide v13

    mul-long/2addr v13, v6

    add-long/2addr v13, v4

    add-long/2addr v13, v8

    .line 829
    iget-object v10, v0, Lorg/jtransforms/dct/FloatDCT_3D$15;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v1, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v15

    invoke-virtual {v10, v13, v14, v15}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v6, v11

    goto :goto_3

    :cond_1
    add-long/2addr v8, v11

    goto :goto_1

    :cond_2
    add-long/2addr v2, v11

    goto :goto_0

    :cond_3
    return-void
.end method
