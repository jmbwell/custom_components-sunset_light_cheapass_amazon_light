.class Lorg/jtransforms/fft/FloatFFT_3D$23;
.super Ljava/lang/Object;
.source "FloatFFT_3D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/FloatFFT_3D;->mixedRadixRealInverseFull([[[FZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/FloatFFT_3D;

.field final synthetic val$a:[[[F

.field final synthetic val$firstSlice:I

.field final synthetic val$lastSlice:I

.field final synthetic val$scale:Z


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/FloatFFT_3D;II[[[FZ)V
    .locals 0

    .line 2100
    iput-object p1, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    iput p2, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$firstSlice:I

    iput p3, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$lastSlice:I

    iput-object p4, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$a:[[[F

    iput-boolean p5, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2103
    iget v0, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$firstSlice:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$lastSlice:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    .line 2104
    :goto_1
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$100(Lorg/jtransforms/fft/FloatFFT_3D;)I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2105
    iget-object v2, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->this$0:Lorg/jtransforms/fft/FloatFFT_3D;

    invoke-static {v2}, Lorg/jtransforms/fft/FloatFFT_3D;->access$300(Lorg/jtransforms/fft/FloatFFT_3D;)Lorg/jtransforms/fft/FloatFFT_1D;

    move-result-object v2

    iget-object v3, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$a:[[[F

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    iget-boolean v4, p0, Lorg/jtransforms/fft/FloatFFT_3D$23;->val$scale:Z

    invoke-virtual {v2, v3, v4}, Lorg/jtransforms/fft/FloatFFT_1D;->realInverseFull([FZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
