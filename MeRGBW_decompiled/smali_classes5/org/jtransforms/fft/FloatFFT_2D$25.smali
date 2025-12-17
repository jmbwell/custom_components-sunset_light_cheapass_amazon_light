.class Lorg/jtransforms/fft/FloatFFT_2D$25;
.super Ljava/lang/Object;
.source "FloatFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_2D;->mixedRadixRealInverseFull([[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_2D;

.field final synthetic val$a:[[F

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_2D;II[[FZ)V
    .locals 0

    .line 1920
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$lastRow:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$a:[[F

    iput-boolean p5, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1923
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$lastRow:I

    if-ge v0, v1, :cond_0

    .line 1924
    iget-object v1, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->this$0:Lorg/jtransforms/fft/FloatFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/FloatFFT_2D;->access$000(Lorg/jtransforms/fft/FloatFFT_2D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$a:[[F

    aget-object v2, v2, v0

    const/4 v3, 0x0

    iget-boolean v4, p0, Lorg/jtransforms/fft/FloatFFT_2D$25;->val$scale:Z

    invoke-virtual {v1, v2, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverse2([FIZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
