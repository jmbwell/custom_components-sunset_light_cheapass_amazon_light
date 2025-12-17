.class Lorg/jtransforms/dct/DoubleDCT_2D$17;
.super Ljava/lang/Object;
.source "DoubleDCT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/DoubleDCT_2D;->ddxt2d0_subth(ILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/DoubleDCT_2D;IIILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 968
    iput-object p1, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    iput p2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$isgn:I

    iput p3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$n0:I

    iput p4, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$nthreads:I

    iput-object p5, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 972
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 973
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$n0:I

    int-to-long v0, v0

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$500(Lorg/jtransforms/dct/DoubleDCT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 974
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$100(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v4}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$400(Lorg/jtransforms/dct/DoubleDCT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->forward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 973
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 977
    :cond_0
    iget v0, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$n0:I

    int-to-long v0, v0

    :goto_1
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$500(Lorg/jtransforms/dct/DoubleDCT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 978
    iget-object v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v2}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$100(Lorg/jtransforms/dct/DoubleDCT_2D;)Lorg/jtransforms/dct/DoubleDCT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->this$0:Lorg/jtransforms/dct/DoubleDCT_2D;

    invoke-static {v4}, Lorg/jtransforms/dct/DoubleDCT_2D;->access$400(Lorg/jtransforms/dct/DoubleDCT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/dct/DoubleDCT_1D;->inverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 977
    iget v2, p0, Lorg/jtransforms/dct/DoubleDCT_2D$17;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    :cond_1
    return-void
.end method
