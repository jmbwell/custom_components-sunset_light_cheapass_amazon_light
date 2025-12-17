.class Lorg/jtransforms/dst/FloatDST_1D$4;
.super Ljava/lang/Object;
.source "FloatDST_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/FloatDST_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/FloatDST_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/FloatDST_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->this$0:Lorg/jtransforms/dst/FloatDST_1D;

    iput-wide p2, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$offa:J

    iput-wide p4, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$firstIdx:J

    iput-wide p6, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$lastIdx:J

    iput-object p8, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 357
    iget-wide v0, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$offa:J

    iget-object v2, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->this$0:Lorg/jtransforms/dst/FloatDST_1D;

    invoke-static {v2}, Lorg/jtransforms/dst/FloatDST_1D;->access$100(Lorg/jtransforms/dst/FloatDST_1D;)J

    move-result-wide v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 359
    iget-wide v4, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$firstIdx:J

    :goto_0
    iget-wide v6, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$lastIdx:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_0

    .line 360
    iget-wide v6, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$offa:J

    add-long/2addr v6, v4

    .line 361
    iget-object v8, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v6, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    sub-long v9, v0, v4

    .line 363
    iget-object v11, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v9, v10}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v12

    invoke-virtual {v11, v6, v7, v12}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 364
    iget-object v6, p0, Lorg/jtransforms/dst/FloatDST_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v6, v9, v10, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v4, v2

    goto :goto_0

    :cond_0
    return-void
.end method
