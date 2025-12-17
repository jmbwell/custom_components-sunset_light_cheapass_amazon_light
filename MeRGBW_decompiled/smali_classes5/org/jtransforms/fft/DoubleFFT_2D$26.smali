.class Lorg/jtransforms/fft/DoubleFFT_2D$26;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealInverseFull([[DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstColumn:I

.field final synthetic val$lastColumn:I

.field final synthetic val$scale:Z

.field final synthetic val$temp:[[D


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D[[DZ)V
    .locals 0

    .line 1968
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$firstColumn:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$lastColumn:I

    iput-object p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$temp:[[D

    iput-object p5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$a:[[D

    iput-boolean p6, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$scale:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1971
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$firstColumn:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$lastColumn:I

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    .line 1973
    :goto_1
    iget-object v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v3}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$100(Lorg/jtransforms/fft/DoubleFFT_2D;)I

    move-result v3

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    .line 1975
    iget-object v4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$temp:[[D

    aget-object v4, v4, v0

    iget-object v5, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$a:[[D

    aget-object v5, v5, v2

    aget-wide v6, v5, v1

    aput-wide v6, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v1, 0x1

    .line 1976
    aget-wide v6, v5, v6

    aput-wide v6, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1978
    :cond_0
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$200(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$temp:[[D

    aget-object v2, v2, v0

    iget-boolean v3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$26;->val$scale:Z

    invoke-virtual {v1, v2, v3}, Lorg/jtransforms/fft/DoubleFFT_1D;->complexInverse([DZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
