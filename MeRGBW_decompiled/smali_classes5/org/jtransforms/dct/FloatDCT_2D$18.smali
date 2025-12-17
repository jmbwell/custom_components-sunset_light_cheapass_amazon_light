.class Lorg/jtransforms/dct/FloatDCT_2D$18;
.super Ljava/lang/Object;
.source "FloatDCT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/dct/FloatDCT_2D;->ddxt2d0_subth(I[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/dct/FloatDCT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/dct/FloatDCT_2D;III[[FZ)V
    .locals 0

    .line 1002
    iput-object p1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    iput p2, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$isgn:I

    iput p3, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$n0:I

    iput p4, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$nthreads:I

    iput-object p5, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$a:[[F

    iput-boolean p6, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1006
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 1007
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$n0:I

    :goto_0
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_2D;->access$200(Lorg/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1008
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_2D;->access$100(Lorg/jtransforms/dct/FloatDCT_2D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$a:[[F

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->forward([FZ)V

    .line 1007
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 1011
    :cond_0
    iget v0, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$n0:I

    :goto_1
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_2D;->access$200(Lorg/jtransforms/dct/FloatDCT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1012
    iget-object v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->this$0:Lorg/jtransforms/dct/FloatDCT_2D;

    invoke-static {v1}, Lorg/jtransforms/dct/FloatDCT_2D;->access$100(Lorg/jtransforms/dct/FloatDCT_2D;)Lorg/jtransforms/dct/FloatDCT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$a:[[F

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/dct/FloatDCT_1D;->inverse([FZ)V

    .line 1011
    iget v1, p0, Lorg/jtransforms/dct/FloatDCT_2D$18;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return-void
.end method
