.class Lorg/jtransforms/fft/DoubleFFT_2D$13;
.super Ljava/lang/Object;
.source "DoubleFFT_2D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jtransforms/fft/DoubleFFT_2D;->mixedRadixRealForwardFull([[D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

.field final synthetic val$a:[[D

.field final synthetic val$firstRow:I

.field final synthetic val$lastRow:I


# direct methods
.method constructor <init>(Lorg/jtransforms/fft/DoubleFFT_2D;II[[D)V
    .locals 0

    .line 1323
    iput-object p1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    iput p2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$firstRow:I

    iput p3, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$lastRow:I

    iput-object p4, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$a:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1326
    iget v0, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$firstRow:I

    :goto_0
    iget v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$lastRow:I

    if-ge v0, v1, :cond_0

    .line 1327
    iget-object v1, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->this$0:Lorg/jtransforms/fft/DoubleFFT_2D;

    invoke-static {v1}, Lorg/jtransforms/fft/DoubleFFT_2D;->access$000(Lorg/jtransforms/fft/DoubleFFT_2D;)Lorg/jtransforms/fft/DoubleFFT_1D;

    move-result-object v1

    iget-object v2, p0, Lorg/jtransforms/fft/DoubleFFT_2D$13;->val$a:[[D

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Lorg/jtransforms/fft/DoubleFFT_1D;->realForward([D)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
