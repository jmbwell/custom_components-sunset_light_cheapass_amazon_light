.class Lorg/jtransforms/fft/DoubleFFT_2D$38;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->xdft2d0_subth1(JILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

.field final synthetic val$icr:J

.field final synthetic val$isgn:I

.field final synthetic val$n0:I

.field final synthetic val$nthreads:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;JIIILpl/edu/icm/jlargearrays/DoubleLargeArray;Z)V
    .locals 0

    .line 3150
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput-wide p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$icr:J

    iput p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$isgn:I

    iput p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$n0:I

    iput p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$nthreads:I

    iput-object p7, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iput-boolean p8, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 3153
    iget-wide v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$icr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 3154
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$isgn:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 3155
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$n0:I

    int-to-long v0, v0

    :goto_0
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 3156
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3155
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    .line 3159
    :cond_0
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$n0:I

    int-to-long v0, v0

    :goto_1
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 3160
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3159
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_1

    .line 3163
    :cond_1
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$isgn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3164
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$n0:I

    int-to-long v0, v0

    :goto_2
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 3165
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward(Lpl/edu/icm/jlargearrays/DoubleLargeArray;J)V

    .line 3164
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_2

    .line 3168
    :cond_2
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$n0:I

    int-to-long v0, v0

    :goto_3
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$300(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 3169
    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v2}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$a:Lpl/edu/icm/jlargearrays/DoubleLargeArray;

    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v4}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$500(Lorg/jtransforms/fft/DoubleFFT_2D;)J

    move-result-wide v4

    mul-long/2addr v4, v0

    iget-boolean v6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$scale:Z

    invoke-virtual {v2, v3, v4, v5, v6}, Lorg/jtransforms/fft/DoubleFFT_1D;->realInverse(Lpl/edu/icm/jlargearrays/DoubleLargeArray;JZ)V

    .line 3168
    iget v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$38;->val$nthreads:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_3

    :cond_3
    return-void
.end method
