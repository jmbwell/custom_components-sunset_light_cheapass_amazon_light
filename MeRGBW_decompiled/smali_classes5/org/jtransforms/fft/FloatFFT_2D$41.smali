.class Lorg/jtransforms/fft/FloatFFT_2D$41;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->xdft2d0_subth1(II[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;IIII[[FZ)V
    .locals 0

    .line 3255
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$icr:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$a:[[F

    iput-boolean p7, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 3258
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$icr:I

    if-nez v0, :cond_1

    .line 3259
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3260
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$n0:I

    :goto_0
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3261
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$a:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->complexForward([F)V

    .line 3260
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 3264
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$n0:I

    :goto_1
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3265
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$a:[[F

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->complexInverse([FZ)V

    .line 3264
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 3268
    :cond_1
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$isgn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3269
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$n0:I

    :goto_2
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3270
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$a:[[F

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/FloatFFT_1D;->realForward([F)V

    .line 3269
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 3273
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$n0:I

    :goto_3
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$100(Lorg/jtransforms/fft/FloatFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3274
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$a:[[F

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse([FZ)V

    .line 3273
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$41;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    return-void
.end method
