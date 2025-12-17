.class Lorg/jtransforms/dct/FloatDCT_1D$4;
.super Ljava/lang/Object;
.source "FloatDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_1D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstIdx:J

.field final synthetic val$lastIdx:J

.field final synthetic val$offa:J

.field final synthetic val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_1D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;JLpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    iput-wide p2, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$lastIdx:J

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-wide p7, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$offa:J

    iput-object p9, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 510
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    .line 512
    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-wide v5, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$offa:J

    add-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v4

    .line 513
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v6}, Lorg/jtransforms/dct/FloatDCT_1D;->access$100(Lorg/jtransforms/dct/FloatDCT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v2, v3, v6}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    .line 514
    iget-object v5, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_1D$4;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_1D;->access$100(Lorg/jtransforms/dct/FloatDCT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    neg-float v8, v8

    mul-float/2addr v8, v4

    invoke-virtual {v5, v2, v3, v8}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v6

    goto :goto_0

    :cond_0
    return-void
.end method
