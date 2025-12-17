.class Lorg/jtransforms/dst/DoubleDST_2D$16;
.super Ljava/lang/Object;
.source "DoubleDST_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dst/DoubleDST_2D;->ddxt2d0_subth(I[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dst/DoubleDST_2D;

.field final synthetic val$a:[D

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dst/DoubleDST_2D;III[DZ)V
    .locals 0

    .line 933
    iput-object p1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    iput p2, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$isgn:I

    iput p3, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$n0:I

    iput p4, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$nthreads:I

    iput-object p5, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$a:[D

    iput-boolean p6, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 937
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 938
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$n0:I

    :goto_0
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_2D;->access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 939
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_2D;->access$100(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_2D;->access$000(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->forward([DIZ)V

    .line 938
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 942
    :cond_0
    iget v0, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$n0:I

    :goto_1
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_2D;->access$200(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 943
    iget-object v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v1}, Lorg/jtransforms/dst/DoubleDST_2D;->access$100(Lorg/jtransforms/dst/DoubleDST_2D;)Lorg/jtransforms/dst/DoubleDST_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->this$0:Lorg/jtransforms/dst/DoubleDST_2D;

    invoke-static {v3}, Lorg/jtransforms/dst/DoubleDST_2D;->access$000(Lorg/jtransforms/dst/DoubleDST_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/jtransforms/dst/DoubleDST_1D;->inverse([DIZ)V

    .line 942
    iget v1, p0, Lorg/jtransforms/dst/DoubleDST_2D$16;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
