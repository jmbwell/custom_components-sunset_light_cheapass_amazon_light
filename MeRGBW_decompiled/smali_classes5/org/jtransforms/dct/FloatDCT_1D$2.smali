.class Lorg/jtransforms/dct/FloatDCT_1D$2;
.super Ljava/lang/Object;
.source "FloatDCT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_1D;->forward(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V
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
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_1D;JJJLpl/edu/icm/jlargearrays/FloatLargeArray;Lpl/edu/icm/jlargearrays/FloatLargeArray;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    iput-wide p2, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$firstIdx:J

    iput-wide p4, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$lastIdx:J

    iput-wide p6, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$offa:J

    iput-object p8, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-object p9, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 311
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$firstIdx:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$lastIdx:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2

    mul-long/2addr v2, v0

    .line 313
    iget-wide v4, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$offa:J

    add-long/2addr v4, v0

    .line 314
    iget-object v6, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v7, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v7}, Lorg/jtransforms/dct/FloatDCT_1D;->access$100(Lorg/jtransforms/dct/FloatDCT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v7

    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    mul-float/2addr v7, v8

    iget-object v8, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->this$0:Lorg/jtransforms/dct/FloatDCT_1D;

    invoke-static {v8}, Lorg/jtransforms/dct/FloatDCT_1D;->access$100(Lorg/jtransforms/dct/FloatDCT_1D;)Lpl/edu/icm/jlargearrays/FloatLargeArray;

    move-result-object v8

    const-wide/16 v9, 0x1

    add-long/2addr v2, v9

    invoke-virtual {v8, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v8

    iget-object v11, p0, Lorg/jtransforms/dct/FloatDCT_1D$2;->val$t:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    invoke-virtual {v11, v2, v3}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->getFloat(J)F

    move-result v2

    mul-float/2addr v8, v2

    sub-float/2addr v7, v8

    invoke-virtual {v6, v4, v5, v7}, Lpl/edu/icm/jlargearrays/FloatLargeArray;->setFloat(JF)V

    add-long/2addr v0, v9

    goto :goto_0

    :cond_0
    return-void
.end method
