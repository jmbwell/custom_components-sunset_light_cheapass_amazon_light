.class Lorg/jtransforms/fft/DoubleFFT_2D$39;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth2(II[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[D

.field final synthetic val$icr:I

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;IIII[DZ)V
    .locals 0

    .line 3192
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$icr:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$isgn:I

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$n0:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$nthreads:I

    iput-object p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$a:[D

    iput-boolean p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 3195
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$icr:I

    if-nez v0, :cond_1

    .line 3196
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3197
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$n0:I

    :goto_0
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3198
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward([DI)V

    .line 3197
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_0

    .line 3201
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$n0:I

    :goto_1
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3202
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DIZ)V

    .line 3201
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 3205
    :cond_1
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$isgn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3206
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$n0:I

    :goto_2
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3207
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([DI)V

    .line 3206
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_2

    .line 3210
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$n0:I

    :goto_3
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3211
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$a:[D

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$400(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    mul-int/2addr v3, v0

    iget-boolean v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse2([DIZ)V

    .line 3210
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$39;->val$nthreads:I

    add-int/2addr v0, v1

    goto :goto_3

    :cond_3
    return-void
.end method
