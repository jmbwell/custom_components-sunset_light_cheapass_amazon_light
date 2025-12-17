.class Lorg/jtransforms/dct/FloatDCT_2D$9;
.super Ljava/lang/Object;
.source "FloatDCT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_2D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

.field final synthetic val$firstRow:J

.field final synthetic val$lastRow:J

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_2D;JJLpl/edu/icm/jlargearrays/FloatLargeArray;Z)V
    .locals 0

    .line 476
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    iput-wide p2, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$firstRow:J

    iput-wide p4, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$lastRow:J

    iput-object p6, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iput-boolean p7, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 479
    iget-wide v0, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$firstRow:J

    :goto_0
    iget-wide v2, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$lastRow:J

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 480
    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/FloatDCT_2D;->access$100(Lorg/jtransforms/dct/FloatDCT_2D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$a:Lpl/edu/icm/jlargearrays/FloatLargeArray;

    iget-object v4, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v4}, Lorg/jtransforms/dct/FloatDCT_2D;->access$400(Lorg/jtransforms/dct/FloatDCT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/dct/FloatDCT_2D$9;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/FloatLargeArray;JZ)V

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    return-void
.end method
